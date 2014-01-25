//
//  AKAudioOutput.m
//  AudioKit
//
//  Created by Aurelius Prochazka on 6/9/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//

#import "AKAudioOutput.h"

@interface AKAudioOutput () {
    AKStereoAudio *aStereoOutput;
}
@end

@implementation AKAudioOutput

- (instancetype)initWithAudioSource:(AKAudio *)audioSource
{
    return [self initWithLeftAudio:audioSource rightAudio:audioSource];
}

- (instancetype)initWithSourceStereoAudio:(AKStereoAudio *)stereoAudio {
    self = [super init];
    if (self) {
        aStereoOutput = stereoAudio;
    }
    return self;
}

- (instancetype)initWithLeftAudio:(AKAudio *)leftAudio
                       rightAudio:(AKAudio *)rightAudio
{
    self = [super init];
    if (self) {
        aStereoOutput = [[AKStereoAudio alloc] initWithLeftAudio:leftAudio
                                                       rightAudio:rightAudio];
    }
    return self; 
}

// Csound prototype: outs asig1, asig2
- (NSString *)stringForCSD {
    return [NSString stringWithFormat:@"outs %@", aStereoOutput];
}

@end