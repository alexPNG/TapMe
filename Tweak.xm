//TapMe - Give sound to your icons and folders when you tap them!
//Created by alex_png
//https://github.com/alexPNG

#import <AudioToolbox/AudioServices.h>

// Preferences stuff
static NSMutableDictionary *settings;
static BOOL enabled;
static BOOL useHaptic;
static int sounds;
static NSInteger hapticType;

// Preferences refresh
static void refreshPrefs() {
CFArrayRef keyList = CFPreferencesCopyKeyList(CFSTR("com.alexpng.tapme"), kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if(keyList) {
    settings = (NSMutableDictionary *)CFPreferencesCopyMultiple(keyList, CFSTR("com.alexpng.tapme"), kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    CFRelease(keyList);
  } else {
    settings = nil;
  }
  if (!settings) {
    settings = [NSMutableDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.alexpng.tapme.plist"];
  }
  enabled = [([settings objectForKey:@"enabled"] ?: @(YES)) boolValue];
  useHaptic = [([settings objectForKey:@"useHaptic"] ?: @(YES)) boolValue];
sounds = [([settings objectForKey:@"sounds"] ?: @(6)) integerValue];
hapticType = [[settings objectForKey:@"hapticType"] intValue];
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

// Sound 1
if (enabled && sounds == 1) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/1-Bubble1.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 2
if (enabled && sounds == 2) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/2-Bubble2.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 3
if (enabled && sounds == 3) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/3-CardiBCorona.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 4
if (enabled && sounds == 4) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/4-CardiBHehe.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 5
if (enabled && sounds == 5) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/5-CardiBOkur.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 6
if (enabled && sounds == 6) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/6-Fart1.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 7
if (enabled && sounds == 7) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/7-Fart2.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 8
if (enabled && sounds == 8) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/8-Gentle.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 9
if (enabled && sounds == 9) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/9-Lullaby.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 10
if (enabled && sounds == 10) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/10-MeCago.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 11
if (enabled && sounds == 11) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/11-Moan.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 12
if (enabled && sounds == 12) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/12-Ouch.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 13
if (enabled && sounds == 13) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/13-Pling.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 14
if (enabled && sounds == 14) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/14-Pong.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 15
if (enabled && sounds == 15) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/15-PressClick1.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 16
if (enabled && sounds == 16) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/16-PressClick2.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 17
if (enabled && sounds == 17) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/17-Quack.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 18
if (enabled && sounds == 18) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/18-RickAndMorty1.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 19
if (enabled && sounds == 19) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/19-RickAndMorty2.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 20
if (enabled && sounds == 20) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/20-RickAndMorty3.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 21
if (enabled && sounds == 21) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/21-RickAndMorty4.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 22
if (enabled && sounds == 22) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/22-RobloxOof.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 23
if (enabled && sounds == 23) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/23-Siri.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 24
if (enabled && sounds == 24) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/24-Smooth1.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 25
if (enabled && sounds == 25) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/25-Smooth2.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 26
if (enabled && sounds == 26) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/26-Tick.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 27
if (enabled && sounds == 27) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/27-Tink.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 28
if (enabled && sounds == 28) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/28-Tock.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 29
if (enabled && sounds == 29) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/29-Wii.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 30
if (enabled && sounds == 30) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/Custom1.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 31
if (enabled && sounds == 31) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/Custom2.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 32
if (enabled && sounds == 32) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/Custom3.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

}

%end

// iOS 11 - 12
%hook SBIconController

- (void)iconTapped:(id)arg1 {
	%orig;

// Sound 1
if (enabled && sounds == 1) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/1-Bubble1.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 2
if (enabled && sounds == 2) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/2-Bubble2.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 3
if (enabled && sounds == 3) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/3-CardiBCorona.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 4
if (enabled && sounds == 4) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/4-CardiBHehe.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 5
if (enabled && sounds == 5) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/5-CardiBOkur.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 6
if (enabled && sounds == 6) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/6-Fart1.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 7
if (enabled && sounds == 7) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/7-Fart2.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 8
if (enabled && sounds == 8) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/8-Gentle.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 9
if (enabled && sounds == 9) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/9-Lullaby.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 10
if (enabled && sounds == 10) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/10-MeCago.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 11
if (enabled && sounds == 11) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/11-Moan.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 12
if (enabled && sounds == 12) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/12-Ouch.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 13
if (enabled && sounds == 13) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/13-Pling.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 14
if (enabled && sounds == 14) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/14-Pong.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 15
if (enabled && sounds == 15) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/15-PressClick1.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 16
if (enabled && sounds == 16) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/16-PressClick2.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 17
if (enabled && sounds == 17) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/17-Quack.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 18
if (enabled && sounds == 18) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/18-RickAndMorty1.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 19
if (enabled && sounds == 19) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/19-RickAndMorty2.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 20
if (enabled && sounds == 20) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/20-RickAndMorty3.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 21
if (enabled && sounds == 21) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/21-RickAndMorty4.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 22
if (enabled && sounds == 22) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/22-RobloxOof.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 23
if (enabled && sounds == 23) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/23-Siri.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 24
if (enabled && sounds == 24) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/24-Smooth1.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 25
if (enabled && sounds == 25) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/25-Smooth2.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 26
if (enabled && sounds == 26) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/26-Tick.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 27
if (enabled && sounds == 27) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/27-Tink.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 28
if (enabled && sounds == 28) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/28-Tock.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 29
if (enabled && sounds == 29) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/29-Wii.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 30
if (enabled && sounds == 30) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/Custom1.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 31
if (enabled && sounds == 31) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/Custom2.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

// Sound 32
if (enabled && sounds == 32) {
if (enabled && useHaptic && hapticType == 1) {
AudioServicesPlaySystemSound(1519);
}
if (enabled && useHaptic && hapticType == 2) {
AudioServicesPlaySystemSound(1520);
}
if (enabled && useHaptic && hapticType == 3) {
AudioServicesPlaySystemSound(1521);
}
SystemSoundID selectedSound = 0;
AudioServicesDisposeSystemSoundID(selectedSound);
AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/TapMe/Sounds/Custom3.caf"]],&selectedSound);
AudioServicesPlaySystemSound(selectedSound);
}

}




%end

// Fetch preferences update
%ctor {
	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback) PreferencesChangedCallback, CFSTR("com.alexpng.tapme.prefschanged"), NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
	refreshPrefs();

}