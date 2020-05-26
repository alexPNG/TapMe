// TapMe - Give sound to your icons and folders when you tap them!
// Created by alex_png <https://github.com/alexPNG>
// Cleaned up by p0358 <https://github.com/p0358>

#import <AudioToolbox/AudioServices.h>

// Preferences stuff
static NSMutableDictionary *settings;
static BOOL enabled;
static BOOL useHaptic;
static int sounds = -1;
static NSInteger hapticType = -1;
static SystemSoundID selectedSound = 0;

static inline NSString* getSoundPathForID(int soundID) {
    switch (soundID) {
        case 1: return @"/Library/TapMe/Sounds/1-Bubble1.caf"; break;
        case 2: return @"/Library/TapMe/Sounds/2-Bubble2.caf"; break;
        case 3: return @"/Library/TapMe/Sounds/3-CardiBCorona.caf"; break;
        case 4: return @"/Library/TapMe/Sounds/4-CardiBHehe.caf"; break;
        case 5: return @"/Library/TapMe/Sounds/5-CardiBOkur.caf"; break;
        case 6: return @"/Library/TapMe/Sounds/6-Fart1.caf"; break;
        case 7: return @"/Library/TapMe/Sounds/7-Fart2.caf"; break;
        case 8: return @"/Library/TapMe/Sounds/8-Gentle.caf"; break;
        case 9: return @"/Library/TapMe/Sounds/9-Lullaby.caf"; break;
        case 10: return @"/Library/TapMe/Sounds/10-MeCago.caf"; break;
        case 11: return @"/Library/TapMe/Sounds/11-Moan.caf"; break;
        case 12: return @"/Library/TapMe/Sounds/12-Ouch.caf"; break;
        case 13: return @"/Library/TapMe/Sounds/13-Pling.caf"; break;
        case 14: return @"/Library/TapMe/Sounds/14-Pong.caf"; break;
        case 15: return @"/Library/TapMe/Sounds/15-PressClick1.caf"; break;
        case 16: return @"/Library/TapMe/Sounds/16-PressClick2.caf"; break;
        case 17: return @"/Library/TapMe/Sounds/17-Quack.caf"; break;
        case 18: return @"/Library/TapMe/Sounds/18-RickAndMorty1.caf"; break;
        case 19: return @"/Library/TapMe/Sounds/19-RickAndMorty2.caf"; break;
        case 20: return @"/Library/TapMe/Sounds/20-RickAndMorty3.caf"; break;
        case 21: return @"/Library/TapMe/Sounds/21-RickAndMorty4.caf"; break;
        case 22: return @"/Library/TapMe/Sounds/22-RobloxOof.caf"; break;
        case 23: return @"/Library/TapMe/Sounds/23-Siri.caf"; break;
        case 24: return @"/Library/TapMe/Sounds/24-Smooth1.caf"; break;
        case 25: return @"/Library/TapMe/Sounds/25-Smooth2.caf"; break;
        case 26: return @"/Library/TapMe/Sounds/26-Tick.caf"; break;
        case 27: return @"/Library/TapMe/Sounds/27-Tink.caf"; break;
        case 28: return @"/Library/TapMe/Sounds/28-Tock.caf"; break;
        case 29: return @"/Library/TapMe/Sounds/29-Wii.caf"; break;
        case 30: return @"/Library/TapMe/Sounds/Custom1.caf"; break;
        case 31: return @"/Library/TapMe/Sounds/Custom2.caf"; break;
        case 32: return @"/Library/TapMe/Sounds/Custom2.caf"; break;

        default: return @"/Library/TapMe/Sounds/6-Fart1.caf";
    }
}

static int lastPlayedSoundID = -1;
static inline void playSound(int soundID) {
    if (!enabled) return;

    if (useHaptic) switch (hapticType) {
        case 1: AudioServicesPlaySystemSound(1519); break;
        case 2: AudioServicesPlaySystemSound(1520); break;
        case 3: AudioServicesPlaySystemSound(1521); break;
    }

    if (lastPlayedSoundID != soundID) {
        // do not recreate it every time if not needed
        AudioServicesDisposeSystemSoundID(selectedSound);
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:getSoundPathForID(soundID)], &selectedSound);
        lastPlayedSoundID = soundID;
    }
    AudioServicesPlaySystemSound(selectedSound);
}

// Preferences refresh
static void refreshPrefs() {

    CFArrayRef keyList = CFPreferencesCopyKeyList(CFSTR("com.alexpng.tapme"), kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

    if (keyList) {
        settings = (__bridge NSMutableDictionary *)CFPreferencesCopyMultiple(keyList, CFSTR("com.alexpng.tapme"), kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        CFRelease(keyList);
    } else {
        settings = nil;
    }
    if (!settings) {
        settings = [NSMutableDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.alexpng.tapme.plist"];
    }
    
    enabled = [([settings objectForKey:@"enabled"] ?: @(YES)) boolValue];
    useHaptic = [([settings objectForKey:@"useHaptic"] ?: @(YES)) boolValue];
    int soundsTmp = [([settings objectForKey:@"sounds"] ?: @(6)) integerValue];
    NSInteger hapticTypeTmp = [[settings objectForKey:@"hapticType"] intValue];

    if (sounds != -1 && sounds != soundsTmp) {
        // sound preference changed, play the preview
        playSound(soundsTmp);
    }
    sounds = soundsTmp;

    if (hapticType != -1 && hapticType != hapticTypeTmp) {
        // haptic preference changed, "play" the preview
        switch (hapticTypeTmp) {
            case 1: AudioServicesPlaySystemSound(1519); break;
            case 2: AudioServicesPlaySystemSound(1520); break;
            case 3: AudioServicesPlaySystemSound(1521); break;
        }
    }
    hapticType = hapticTypeTmp;

}

static void PreferencesChangedCallback(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo) {
    refreshPrefs();
}

// I was going to take a different approach to preview the sounds in the preferences
// and to automatically select all .caf sounds from the path, including custom sounds.
// However, I had some issues with the proper use of PSListItemController so I decided to manually specify each sound.
// I might change this and rewrite the whole thing, idk

// Hooking everything for the sounds and Haptic Feedback
// iOS 13
%hook SBHIconManager
- (void)iconTapped:(id)arg1 {
	%orig;
    if (enabled)
        playSound(sounds);
}
%end

// iOS 11 - 12
%hook SBIconController
- (void)iconTapped:(id)arg1 {
	%orig;
    if (enabled)
        playSound(sounds);
}
%end

// Fetch preferences update
%ctor {
	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback) PreferencesChangedCallback, CFSTR("com.alexpng.tapme.prefschanged"), NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
	refreshPrefs();
}
