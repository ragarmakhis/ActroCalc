//
//  AstroCalc.m
//  AstroCalc
//
//  Created by Maksim Roshtshin on 28.08.15.
//  Copyright (c) 2015 ragarmakhis. All rights reserved.
//

#import "AstroCalc.h"
#import "ACMoonPhases.h"

@implementation AstroCalc

// Расчёт лунного дня
-(void) calcMoonDay {
    //находим ближайшее прошедшее новолуние
    //Если новолуние сейчас, то сейчас начался 1-й лунный день
    
    //Новолуние находим через K класса ACMoonPhases
    //Определяем текущее K, округляем вниз и вычисляем дату события
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *date = [NSDate date];
    NSDateComponents *yearComponents = [gregorian components:NSYearCalendarUnit fromDate:date];
    
    NSLog(@"%@", yearComponents);
    
    CGFloat year = 2015;
    
    [ACMoonPhases truePhaseFromK: [ACMoonPhases calculateKFromDecimalYear:year]];
    ;
    //считаем количество восходов луны до настоящего момента. Один воход - один день
    ;
}

@end
