//
//  RCTAppleHealthKit+Methods_Vitals.h
//  RCTAppleHealthKit
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.

#import "RCTAppleHealthKit.h"

@interface RCTAppleHealthKit (Methods_Vitals)
//Cardio

- (void)vitals_getHeartRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

- (void)vitals_getLowHeartRateEvent:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A category sample type for low heart rate events.

- (void)vitals_getHighHeartRateEvent:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A category sample type for high heart rate events.

- (void)vitals_getIrregularHeartRhythmEvent:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A category sample type for irregular heart rhythm events.

- (void)vitals_getRestingHeartRate:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A quantity sample type that measures the user’s resting heart rate.

- (void)vitals_getRestingHeartRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A quantity sample type that measures the user’s resting heart rate.

- (void)vitals_getHeartRateVariabilitySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A quantity sample type that measures the standard deviation of heartbeat intervals.

- (void)vitals_getWalkingHeartRateAverage:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A quantity sample type that measures the user’s heart rate while walking.

- (void)vitals_getOxygenSaturationSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

- (void)vitals_getElectrocardiogramSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

- (void)vitals_getBodyTemperatureSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

- (void)vitals_getBloodPressureSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

- (void)vitals_getHeartbeatSeriesSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

- (void)vitals_getRespiratoryRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

- (void)vitals_getVo2MaxSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;


//Mobiity
- (void)vitals_getAppleWalkingSteadiness:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

- (void)vitals_getAppleWalkingSteadinessEvent:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)vitals_getSixMinuteWalkTestDistance:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A quantity sample type that stores the distance a user can walk during a six-minute walk test.

- (void)vitals_getWalkingSpeed:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A quantity sample type that measures the user’s average speed when walking steadily over flat ground.

- (void)vitals_getWalkingStepLength:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A quantity sample type that measures the average length of the user’s step when walking steadily over flat ground.

- (void)vitals_getWalkingAsymmetryPercentage:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A quantity sample type that measures the percentage of steps in which one foot moves at a different speed than the other when walking on flat ground.

- (void)vitals_getWalkingDoubleSupportPercentage:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A quantity sample type that measures the percentage of time when both of the user’s feet touch the ground while walking steadily over flat ground.

- (void)vitals_getStairAscentSpeed:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A quantity sample type measuring the user’s speed while climbing a flight of stairs.

- (void)vitals_getStairDescentSpeed:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback; // A quantity sample type measuring the user’s speed while descending a flight of stairs.

//New Additions

// -(void)

@end
