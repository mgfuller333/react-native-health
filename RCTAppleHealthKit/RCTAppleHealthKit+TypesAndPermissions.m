//
//  RCTAppleHealthKit+TypesAndPermissions.m
//  RCTAppleHealthKit
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

//modify

#import "RCTAppleHealthKit+TypesAndPermissions.h"
#import "RCTAppleHealthKit+Utils.h"

@implementation RCTAppleHealthKit (TypesAndPermissions)

#pragma mark - HealthKit Permissions

- (nullable HKObjectType *)getReadPermFromText:(nonnull NSString*)key {
    UIDevice *deviceInfo = [UIDevice currentDevice];
    float systemVersion = deviceInfo.systemVersion.floatValue;

    //Activity Summarys (done for now)
    if ([@"ActivitySummary" isEqualToString:key]){
        return [HKObjectType activitySummaryType];
    }
    
    // Body Measurements(done)
    if ([@"Height" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeight];
    }else if ([@"BodyMass" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMass];
    }else if ([@"BodyMassIndex" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMassIndex];
    }else if ([@"LeanBodyMass" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierLeanBodyMass];
    }else if ([@"BodyFatPercentage" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyFatPercentage];
    }else if ([@"WaistCircumference" isEqualToString: key] && systemVersion >= 11.0) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierWaistCircumference];
    }
    
    // Characteristic Identifiers(done)
    else if ([@"ActivityMoveMode" isEqualToString: key]) {
        return [HKObjectType characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierActivityMoveMode];
    }else if ([@"BiologicalSex" isEqualToString: key]) {
        return [HKObjectType characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierBiologicalSex];
    }else if ([@"BloodType" isEqualToString: key]) {
        return [HKObjectType characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierBloodType];
    }else if ([@"DateOfBirth" isEqualToString: key]) {
        return [HKObjectType characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierDateOfBirth];
    }else if ([@"Weight" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMass];
    }
    
    // Clinical Records (not touching this)
    // if ([@"AllergyRecord" isEqualToString:key]) {
    //     return [RCTAppleHealthKit clinicalTypeFromName:@"AllergyRecord"];
    // } else if ([@"ConditionRecord" isEqualToString:key]) {
    //     return [RCTAppleHealthKit clinicalTypeFromName:@"ConditionRecord"];
    // } else if ([@"CoverageRecord" isEqualToString:key]) {
    //     return [RCTAppleHealthKit clinicalTypeFromName:@"CoverageRecord"];
    // } else if ([@"ImmunizationRecord" isEqualToString:key]) {
    //     return [RCTAppleHealthKit clinicalTypeFromName:@"ImmunizationRecord"];
    // } else if ([@"LabResultRecord" isEqualToString:key]) {
    //     return [RCTAppleHealthKit clinicalTypeFromName:@"LabResultRecord"];
    // } else if ([@"MedicationRecord" isEqualToString:key]) {
    //     return [RCTAppleHealthKit clinicalTypeFromName:@"MedicationRecord"];
    // } else if ([@"ProcedureRecord" isEqualToString:key]) {
    //     return [RCTAppleHealthKit clinicalTypeFromName:@"ProcedureRecord"];
    // } else if ([@"VitalSignRecord" isEqualToString:key]) {
    //     return [RCTAppleHealthKit clinicalTypeFromName:@"VitalSignRecord"];
    // }

    // Activity(done for now)
    if ([@"Steps" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierStepCount];
    } else if ([@"StepCount" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierStepCount];
    } else if ([@"DistanceWalkingRunning" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceWalkingRunning];
    } else if ([@"DistanceCycling" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceCycling];
    } else if ([@"DistanceSwimming" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceSwimming];
    } else if ([@"BasalEnergyBurned" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBasalEnergyBurned];
    } else if ([@"ActiveEnergyBurned" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
    } else if ([@"FlightsClimbed" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierFlightsClimbed];
    } else if ([@"NikeFuel" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierNikeFuel];
    } else if ([@"AppleStandTime" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleStandTime];
    } else if ([@"AppleExerciseTime" isEqualToString: key] && systemVersion >= 9.3) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleExerciseTime];
    } else if ([@"Vo2Max" isEqualToString: key] && systemVersion >= 11.0) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierVO2Max];
    } else if ([@"LowCardioFitnessEvent" isEqualToString: key] && systemVersion >= 11.0) {
        return [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIdentifierlowCardioFitnessEvent];
    } 


    // Hearing Identifiers(done)
    if (@available(iOS 13.0, *)) {
        if ([@"EnvironmentalAudioExposure" isEqualToString:key]) {
            return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierEnvironmentalAudioExposure];
        } else if ([@"HeadphoneAudioExposure" isEqualToString:key]) {
            return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeadphoneAudioExposure];
        }else if ([@"EnvironmentalAudioExposureEvent" isEqualToString:key]) {
            return [HKObjectType categoryTypeForIdentifier:HKQuantityTypeIdentifierEnvironmentalAudioExposureEvent];
        }else if ([@"HeadphoneAudioExposureEvent" isEqualToString:key]) {
            return [HKObjectType categoryTypeForIdentifier:HKQuantityTypeIdentifierheadphoneAudioExposureEvent];
        }
    }

    //Alcohol Consumption(done)
    if ([@"BloodAlcoholContent" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodAlcoholContent];
    }else if ([@"NumberOfAlcoholicBeverages" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifiernumberOfAlcoholicBeverages];
    }

    // Nutrition Identifiers(done for now)
    if ([@"Biotin" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryBiotin];
    } else if ([@"Caffeine" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCaffeine];
    } else if ([@"Calcium" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCalcium];
    } else if ([@"Carbohydrates" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCarbohydrates];
    } else if ([@"Chloride" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryChloride];
    } else if ([@"Cholesterol" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCholesterol];
    } else if ([@"Copper" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCopper];
    } else if ([@"EnergyConsumed" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryEnergyConsumed];
    } else if ([@"FatMonounsaturated" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatMonounsaturated];
    } else if ([@"FatPolyunsaturated" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatPolyunsaturated];
    } else if ([@"FatSaturated" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatSaturated];
    } else if ([@"FatTotal" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatTotal];
    } else if ([@"Fiber" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFiber];
    } else if ([@"Folate" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFolate];
    } else if ([@"Iodine" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryIodine];
    } else if ([@"Iron" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryIron];
    } else if ([@"Magnesium" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryMagnesium];
    } else if ([@"Manganese" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryManganese];
    } else if ([@"Molybdenum" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryMolybdenum];
    } else if ([@"Niacin" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryNiacin];
    } else if ([@"PantothenicAcid" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryPantothenicAcid];
    } else if ([@"Phosphorus" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryPhosphorus];
    } else if ([@"Potassium" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryPotassium];
    } else if ([@"Protein" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryProtein];
    } else if ([@"Riboflavin" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryRiboflavin];
    } else if ([@"Selenium" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietarySelenium];
    } else if ([@"Sodium" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietarySodium];
    } else if ([@"Sugar" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietarySugar];
    } else if ([@"Thiamin" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryThiamin];
    } else if ([@"VitaminA" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminA];
    } else if ([@"VitaminB12" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminB12];
    } else if ([@"VitaminB6" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminB6];
    } else if ([@"VitaminC" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminC];
    } else if ([@"VitaminD" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminD];
    } else if ([@"VitaminE" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminE];
    } else if ([@"VitaminK" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminK];
    } else if ([@"Zinc" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryZinc];
    } else if ([@"Water" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryWater];
    } else if ([@"BloodGlucose" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodGlucose];
    }

    // Vital Signs Identifiers(done)
    if ([@"HeartRate" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
    else if ([@"LowHeartRateEvent" isEqualToString: key]) {
        return [HKObjectType categoryTypeForIdentifier:HKCategoryTypeLowHeartRateEvent];
    } else if ([@"HighHeartRateEvent" isEqualToString: key]) {
        return [HKObjectType categoryTypeForIdentifier:HKCategoryTypeHighHeartRateEvent];
    } else if ([@"IrregularHeartRhythmEvent" isEqualToString: key]) {
        return [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIrregularHeartRhythmEvent];
    } else if ([@"RestingHeartRate" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierIrregularHeartRhythmEvent];
    }else if ([@"HeartRateVariability" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRateVariabilitySDNN];
    } else if ([@"WalkingHeartRateAverage" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingHeartRateAverage];
    } else if ([@"HeartbeatSeries" isEqualToString: key] && systemVersion >= 13.0) {
        return [HKObjectType seriesTypeForIdentifier:HKDataTypeIdentifierHeartbeatSeries];
    } else if ([@"Electrocardiogram" isEqualToString:key] && systemVersion >= 14.0) {
        return HKObjectType.electrocardiogramType;
    }else if ([@"OxygenSaturation" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierOxygenSaturation];
    }else if ([@"BodyTemperature" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyTemperature];
    }else if ([@"BloodPressureCorrelation" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKCorrelationTypeIdentifierBloodPressure];
    }else if ([@"BloodPressureSystolic" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodPressureSystolic];
    } else if ([@"BloodPressureDiastolic" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodPressureDiastolic];
    } else if ([@"RespiratoryRate" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierRespiratoryRate];
    }  
     
     //Mindfulness & Sleep (done)
    if ([@"MindfulSession" isEqualToString: key] && systemVersion >= 10.0) {
        return [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
    }else if ([@"SleepAnalysis" isEqualToString: key]) {
        return [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIdentifierSleepAnalysis];
    } 

    //Self Care(done)
    if ([@"HandwashingEvent" isEqualToString: key] && systemVersion >= 10.0) {
        return [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIdentifierHandwashingEvent];
    }

    //Mobility(done)
    
      if ([@"AppleWalkingSteadiness" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleWalkingSteadiness];
    } else if ([@"AppleWalkingSteadinessEvent" isEqualToString: key]) {
        return [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIdentifierAppleWalkingSteadinessEvent];
    } else if ([@"SixMinuteWalkTestDistance" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierSixMinuteWalkTestDistance];
    } else if ([@"WalkingSpeed" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingSpeed];
    } else if ([@"WalkingStepLength" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingStepLength];
    } else if ([@"WalkingAsymmetryPercentage" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingAsymmetryPercentage];
    } else if ([@"WalkingDoubleSupportPercentage" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingDoubleSupportPercentage];
    } else if ([@"StairAscentSpeed" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierStairAscentSpeed];
    } else if ([@"StairDescentSpeed" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierStairDescentSpeed];
    } 


    // workouts(done for now)
     if ([@"Workout" isEqualToString: key]) {
        return [HKObjectType workoutType];
    }
    
    //Reproductive stuff (Ask Zafe)
    return nil;
}

- (nullable HKObjectType *)getWritePermFromText:(nonnull NSString*) key {
    // Body Measurements
    if ([@"Height" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeight];
    } else if ([@"WaistCircumference" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierWaistCircumference];
    } else if ([@"Weight" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMass];
    } else if ([@"BodyMass" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMass];
    } else if ([@"BodyFatPercentage" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyFatPercentage];
    } else if ([@"BodyMassIndex" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMassIndex];
    } else if ([@"LeanBodyMass" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierLeanBodyMass];
    } else if ([@"BodyTemperature" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyTemperature];
    }

  
    // Nutrition Identifiers
    if ([@"Biotin" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryBiotin];
    } else if ([@"Caffeine" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCaffeine];
    } else if ([@"Calcium" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCalcium];
    } else if ([@"Carbohydrates" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCarbohydrates];
    } else if ([@"Chloride" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryChloride];
    } else if ([@"Cholesterol" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCholesterol];
    } else if ([@"Copper" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCopper];
    } else if ([@"EnergyConsumed" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryEnergyConsumed];
    } else if ([@"FatMonounsaturated" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatMonounsaturated];
    } else if ([@"FatPolyunsaturated" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatPolyunsaturated];
    } else if ([@"FatSaturated" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatSaturated];
    } else if ([@"FatTotal" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatTotal];
    } else if ([@"Fiber" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFiber];
    } else if ([@"Folate" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFolate];
    } else if ([@"Iodine" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryIodine];
    } else if ([@"Iron" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryIron];
    } else if ([@"Magnesium" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryMagnesium];
    } else if ([@"Manganese" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryManganese];
    } else if ([@"Molybdenum" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryMolybdenum];
    } else if ([@"Niacin" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryNiacin];
    } else if ([@"PantothenicAcid" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryPantothenicAcid];
    } else if ([@"Phosphorus" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryPhosphorus];
    } else if ([@"Potassium" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryPotassium];
    } else if ([@"Protein" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryProtein];
    } else if ([@"Riboflavin" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryRiboflavin];
    } else if ([@"Selenium" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietarySelenium];
    } else if ([@"Sodium" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietarySodium];
    } else if ([@"Sugar" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietarySugar];
    } else if ([@"Thiamin" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryThiamin];
    } else if ([@"VitaminA" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminA];
    } else if ([@"VitaminB12" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminB12];
    } else if ([@"VitaminB6" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminB6];
    } else if ([@"VitaminC" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminC];
    } else if ([@"VitaminD" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminD];
    } else if ([@"VitaminE" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminE];
    } else if ([@"VitaminK" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminK];
    } else if ([@"Zinc" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryZinc];
    } else if ([@"Water" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryWater];
    } else if ([@"BloodGlucose" isEqualToString:key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodGlucose];
    }

    // Sleep
    if ([@"SleepAnalysis" isEqualToString:key]) {
        return [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIdentifierSleepAnalysis];
    }

    // Mindfulness
    if ([@"MindfulSession" isEqualToString:key]) {
        return [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
    }

    // Workout
    if ([@"Workout" isEqualToString:key]) {
        return [HKObjectType workoutType];
    }

    // Lab and tests
    if ([@"BloodAlcoholContent" isEqualToString: key]) {
        return [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodAlcoholContent];
    }

    return nil;
}

// Returns HealthKit read permissions from options array
- (NSSet *)getReadPermsFromOptions:(NSArray *)options {
    NSMutableSet *readPermSet = [NSMutableSet setWithCapacity:1];

    for(int i=0; i<[options count]; i++) {
        NSString *optionKey = options[i];
        if (optionKey != nil){
            HKObjectType *val = [self getReadPermFromText:optionKey];
            if (val != nil) {
                [readPermSet addObject:val];
            }
        }
    }
    return readPermSet;
}


// Returns HealthKit write permissions from options array
- (NSSet *)getWritePermsFromOptions:(NSArray *)options {
    NSMutableSet *writePermSet = [NSMutableSet setWithCapacity:1];

    for(int i=0; i<[options count]; i++) {
        NSString *optionKey = options[i];
        if (optionKey != nil){
            HKObjectType *val = [self getWritePermFromText:optionKey];
            if (val != nil) {
                [writePermSet addObject:val];
            }
        }
    }
    return writePermSet;
}

- (HKObjectType *)getWritePermFromString:(NSString *)writePerm {
    return [self getWritePermFromText:writePerm];
}

- (NSString *)getAuthorizationStatusString:(HKAuthorizationStatus)status {
    switch (status) {
        case HKAuthorizationStatusNotDetermined:
            return @"NotDetermined";
        case HKAuthorizationStatusSharingDenied:
            return @"SharingDenied";
        case HKAuthorizationStatusSharingAuthorized:
            return @"SharingAuthorized";
    }
}


+ (NSDictionary *)getStringToWorkoutActivityTypeDictionary {
    NSDictionary *elem = @{
        @"AmericanFootball": @(HKWorkoutActivityTypeAmericanFootball),
        @"Archery": @(HKWorkoutActivityTypeArchery),
        @"AustralianFootball": @(HKWorkoutActivityTypeAustralianFootball),
        @"Badminton": @(HKWorkoutActivityTypeBadminton),
        @"Baseball": @(HKWorkoutActivityTypeBaseball),
        @"Basketball": @(HKWorkoutActivityTypeBasketball),
        @"Bowling": @(HKWorkoutActivityTypeBowling),
        @"Boxing": @(HKWorkoutActivityTypeBoxing),
        @"Climbing": @(HKWorkoutActivityTypeClimbing),
        @"Cricket": @(HKWorkoutActivityTypeCricket),
        @"CrossTraining": @(HKWorkoutActivityTypeCrossTraining),
        @"Curling": @(HKWorkoutActivityTypeCurling),
        @"Cycling": @(HKWorkoutActivityTypeCycling),
        @"Dance": @(HKWorkoutActivityTypeDance),
        @"DanceInspiredTraining": @(HKWorkoutActivityTypeDanceInspiredTraining),
        @"Elliptical": @(HKWorkoutActivityTypeElliptical),
        @"EquestrianSports": @(HKWorkoutActivityTypeEquestrianSports),
        @"Fencing": @(HKWorkoutActivityTypeFencing),
        @"Fishing": @(HKWorkoutActivityTypeFishing),
        @"FunctionalStrengthTraining": @(HKWorkoutActivityTypeFunctionalStrengthTraining),
        @"Golf": @(HKWorkoutActivityTypeGolf),
        @"Gymnastics": @(HKWorkoutActivityTypeGymnastics),
        @"Handball": @(HKWorkoutActivityTypeHandball),
        @"Hiking": @(HKWorkoutActivityTypeHiking),
        @"Hockey": @(HKWorkoutActivityTypeHockey),
        @"Hunting": @(HKWorkoutActivityTypeHunting),
        @"Lacrosse": @(HKWorkoutActivityTypeLacrosse),
        @"MartialArts": @(HKWorkoutActivityTypeMartialArts),
        @"MindAndBody": @(HKWorkoutActivityTypeMindAndBody),
        @"MixedMetabolicCardioTraining": @(HKWorkoutActivityTypeMixedMetabolicCardioTraining),
        @"PaddleSports": @(HKWorkoutActivityTypePaddleSports),
        @"Play": @(HKWorkoutActivityTypePlay),
        @"PreparationAndRecovery": @(HKWorkoutActivityTypePreparationAndRecovery),
        @"Racquetball": @(HKWorkoutActivityTypeRacquetball),
        @"Rowing": @(HKWorkoutActivityTypeRowing),
        @"Rugby": @(HKWorkoutActivityTypeRugby),
        @"Running": @(HKWorkoutActivityTypeRunning),
        @"Sailing": @(HKWorkoutActivityTypeSailing),
        @"SkatingSports": @(HKWorkoutActivityTypeSkatingSports),
        @"SnowSports": @(HKWorkoutActivityTypeSnowSports),
        @"Soccer": @(HKWorkoutActivityTypeSoccer),
        @"Softball": @(HKWorkoutActivityTypeSoftball),
        @"Squash": @(HKWorkoutActivityTypeSquash),
        @"StairClimbing": @(HKWorkoutActivityTypeStairClimbing),
        @"SurfingSports": @(HKWorkoutActivityTypeSurfingSports),
        @"Swimming": @(HKWorkoutActivityTypeSwimming),
        @"TableTennis": @(HKWorkoutActivityTypeTableTennis),
        @"Tennis": @(HKWorkoutActivityTypeTennis),
        @"TrackAndField": @(HKWorkoutActivityTypeTrackAndField),
        @"TraditionalStrengthTraining": @(HKWorkoutActivityTypeTraditionalStrengthTraining),
        @"Volleyball": @(HKWorkoutActivityTypeVolleyball),
        @"Walking": @(HKWorkoutActivityTypeWalking),
        @"WaterFitness": @(HKWorkoutActivityTypeWaterFitness),
        @"WaterPolo": @(HKWorkoutActivityTypeWaterPolo),
        @"WaterSports": @(HKWorkoutActivityTypeWaterSports),
        @"Wrestling": @(HKWorkoutActivityTypeWrestling),
        @"Yoga": @(HKWorkoutActivityTypeYoga),
        @"Barre": @(HKWorkoutActivityTypeBarre),
        @"CoreTraining": @(HKWorkoutActivityTypeCoreTraining),
        @"CrossCountrySkiing": @(HKWorkoutActivityTypeCrossCountrySkiing),
        @"DownhillSkiing": @(HKWorkoutActivityTypeDownhillSkiing),
        @"Flexibility": @(HKWorkoutActivityTypeFlexibility),
        @"HighIntensityIntervalTraining": @(HKWorkoutActivityTypeHighIntensityIntervalTraining),
        @"JumpRope": @(HKWorkoutActivityTypeJumpRope),
        @"Kickboxing": @(HKWorkoutActivityTypeKickboxing),
        @"Pilates": @(HKWorkoutActivityTypePilates),
        @"Snowboarding": @(HKWorkoutActivityTypeSnowboarding),
        @"Stairs": @(HKWorkoutActivityTypeStairs),
        @"StepTraining": @(HKWorkoutActivityTypeStepTraining),
        @"WheelchairWalkPace": @(HKWorkoutActivityTypeWheelchairWalkPace),
        @"WheelchairRunPace": @(HKWorkoutActivityTypeWheelchairRunPace),
        @"TaiChi": @(HKWorkoutActivityTypeTaiChi),
        @"MixedCardio": @(HKWorkoutActivityTypeMixedCardio),
        @"HandCycling": @(HKWorkoutActivityTypeHandCycling),
        @"DiscSports": @(HKWorkoutActivityTypeDiscSports),
        @"FitnessGaming": @(HKWorkoutActivityTypeFitnessGaming),
        @"CardioDance": @(HKWorkoutActivityTypeCardioDance),
        @"SocialDance": @(HKWorkoutActivityTypeSocialDance),
        @"Pickleball": @(HKWorkoutActivityTypePickleball),
        @"Cooldown": @(HKWorkoutActivityTypeCooldown),
        @"Other": @(HKWorkoutActivityTypeOther),
    };
    return elem;
}


@end
