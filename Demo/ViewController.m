//
//  ViewController.m
//  Demo
//
//  Created by think360 on 31/10/17.
//  Copyright © 2017 bharat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
     NSMutableArray *arrDates,*arrMonths,*arrWeeks,*arrMonthsName;
    
    int i;
    
    NSString *strMonth,*strDay,*strDay2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    arrDates=[[NSMutableArray alloc]init];
    arrMonths=[[NSMutableArray alloc]init];
    arrMonthsName=[[NSMutableArray alloc]init];
    
    i=0;
    _leftbutt.hidden = YES;
    
    [self CalenderView];
}


#pragma mark - CalenderView

- (IBAction)leftbuttClicked:(id)sender
{
    if (i==0)
    {
        _leftbutt.hidden = YES;
    }
    else
    {
        _leftbutt.hidden = NO;
        i--;
        
        NSArray * allDatesOfNextToNextWeek = [self daysInWeek:i fromDate:[NSDate date]];
        
        
        NSString *dateString = [NSString stringWithFormat:@"%@",[allDatesOfNextToNextWeek objectAtIndex:0]];
        NSArray *components = [dateString componentsSeparatedByString:@" "];
        NSString *date = components[0];
        NSArray *todaydate=[date componentsSeparatedByString:@"-"];
        
        NSString *str1=[NSString stringWithFormat:@"%@",[todaydate objectAtIndex:2]];
        NSString *str2=[NSString stringWithFormat:@"%@",[todaydate objectAtIndex:1]];
        NSString *str3=[NSString stringWithFormat:@"%@",[todaydate objectAtIndex:0]];
        
        NSString *dateString2 = [NSString stringWithFormat:@"%@",[allDatesOfNextToNextWeek lastObject]];
        NSArray *components2 = [dateString2 componentsSeparatedByString:@" "];
        NSString *date2 = components2[0];
        NSArray *todaydate2=[date2 componentsSeparatedByString:@"-"];
        
        NSString *str4=[NSString stringWithFormat:@"%@",[todaydate2 objectAtIndex:2]];
        
        
        
        if ([str1 isEqualToString:@"01"])
        {
            strDay=@"st";
        }
        else if ([str1 isEqualToString:@"02"])
        {
            strDay=@"nd";
        }
        else if ([str1 isEqualToString:@"03"])
        {
            strDay=@"rd";
        }
        else
        {
           strDay=@"th";
        }
        
        
        if ([str4 isEqualToString:@"01"])
        {
            strDay2=@"st";
        }
        else if ([str4 isEqualToString:@"02"])
        {
            strDay2=@"nd";
        }
        else if ([str4 isEqualToString:@"03"])
        {
            strDay2=@"rd";
        }
        else
        {
            strDay2=@"th";
        }

        
        
        
        if ([str2 isEqualToString:@"01"])
        {
            strMonth=@"January";
        }
        else if ([str2 isEqualToString:@"02"])
        {
           strMonth=@"February";
        }
        else if ([str2 isEqualToString:@"03"])
        {
           strMonth=@"March";
        }
        else if ([str2 isEqualToString:@"04"])
        {
          strMonth=@"April";
        }
        else if ([str2 isEqualToString:@"05"])
        {
           strMonth=@"May";
        }
        else if ([str2 isEqualToString:@"06"])
        {
           strMonth=@"June";
        }
        else if ([str2 isEqualToString:@"07"])
        {
           strMonth=@"July";
        }
        else if ([str2 isEqualToString:@"08"])
        {
         strMonth=@"August";
        }
        else if ([str2 isEqualToString:@"09"])
        {
           strMonth=@"September";
        }
        else if ([str2 isEqualToString:@"10"])
        {
           strMonth=@"October";
        }
        else if ([str2 isEqualToString:@"11"])
        {
           strMonth=@"November";
        }
        else if ([str2 isEqualToString:@"12"])
        {
           strMonth=@"December";
        }
        
        
         _datelab.text = [NSString stringWithFormat:@"%@%@ - %@%@",str1,strDay,str4,strDay2];
        _monthLab.text =  [NSString stringWithFormat:@"%@ \n %@",strMonth,str3];

        
        if (i==0)
        {
            _leftbutt.hidden = YES;
        }
        else
        {
            _leftbutt.hidden = NO;
        }
    }
}

- (IBAction)rightbuttClicked:(id)sender
{
    
    i++;
    
    NSArray * allDatesOfNextToNextWeek = [self daysInWeek:i fromDate:[NSDate date]];
    
    
    NSString *dateString = [NSString stringWithFormat:@"%@",[allDatesOfNextToNextWeek objectAtIndex:0]];
    NSArray *components = [dateString componentsSeparatedByString:@" "];
    NSString *date = components[0];
    NSArray *todaydate=[date componentsSeparatedByString:@"-"];
    
    NSString *str1=[NSString stringWithFormat:@"%@",[todaydate objectAtIndex:2]];
    NSString *str2=[NSString stringWithFormat:@"%@",[todaydate objectAtIndex:1]];
    NSString *str3=[NSString stringWithFormat:@"%@",[todaydate objectAtIndex:0]];
    
    NSString *dateString2 = [NSString stringWithFormat:@"%@",[allDatesOfNextToNextWeek lastObject]];
    NSArray *components2 = [dateString2 componentsSeparatedByString:@" "];
    NSString *date2 = components2[0];
    NSArray *todaydate2=[date2 componentsSeparatedByString:@"-"];
    
    NSString *str4=[NSString stringWithFormat:@"%@",[todaydate2 objectAtIndex:2]];
    
    if ([str1 isEqualToString:@"01"])
    {
        strDay=@"st";
    }
    else if ([str1 isEqualToString:@"02"])
    {
        strDay=@"nd";
    }
    else if ([str1 isEqualToString:@"03"])
    {
        strDay=@"rd";
    }
    else
    {
        strDay=@"th";
    }
    
    
    if ([str4 isEqualToString:@"01"])
    {
        strDay2=@"st";
    }
    else if ([str4 isEqualToString:@"02"])
    {
        strDay2=@"nd";
    }
    else if ([str4 isEqualToString:@"03"])
    {
        strDay2=@"rd";
    }
    else
    {
        strDay2=@"th";
    }

    
    
    if ([str2 isEqualToString:@"01"])
    {
        strMonth=@"January";
    }
    else if ([str2 isEqualToString:@"02"])
    {
        strMonth=@"February";
    }
    else if ([str2 isEqualToString:@"03"])
    {
        strMonth=@"March";
    }
    else if ([str2 isEqualToString:@"04"])
    {
        strMonth=@"April";
    }
    else if ([str2 isEqualToString:@"05"])
    {
        strMonth=@"May";
    }
    else if ([str2 isEqualToString:@"06"])
    {
        strMonth=@"June";
    }
    else if ([str2 isEqualToString:@"07"])
    {
        strMonth=@"July";
    }
    else if ([str2 isEqualToString:@"08"])
    {
        strMonth=@"August";
    }
    else if ([str2 isEqualToString:@"09"])
    {
        strMonth=@"September";
    }
    else if ([str2 isEqualToString:@"10"])
    {
        strMonth=@"October";
    }
    else if ([str2 isEqualToString:@"11"])
    {
        strMonth=@"November";
    }
    else if ([str2 isEqualToString:@"12"])
    {
        strMonth=@"December";
    }
    
    
    _datelab.text = [NSString stringWithFormat:@"%@%@ - %@%@",str1,strDay,str4,strDay2];
    _monthLab.text =  [NSString stringWithFormat:@"%@ \n %@",strMonth,str3];
    
    
    if (i==0)
    {
        _leftbutt.hidden = YES;
    }
    else
    {
        _leftbutt.hidden = NO;
    }

}







-(void)CalenderView
{
    
    NSArray * allDatesOfNextToNextWeek = [self daysInWeek:0 fromDate:[NSDate date]];
    
    
    NSString *dateString = [NSString stringWithFormat:@"%@",[allDatesOfNextToNextWeek objectAtIndex:0]];
    NSArray *components = [dateString componentsSeparatedByString:@" "];
    NSString *date = components[0];
    NSArray *todaydate=[date componentsSeparatedByString:@"-"];
    
    NSString *str1=[NSString stringWithFormat:@"%@",[todaydate objectAtIndex:2]];
    NSString *str2=[NSString stringWithFormat:@"%@",[todaydate objectAtIndex:1]];
    NSString *str3=[NSString stringWithFormat:@"%@",[todaydate objectAtIndex:0]];
    
    NSString *dateString2 = [NSString stringWithFormat:@"%@",[allDatesOfNextToNextWeek lastObject]];
    NSArray *components2 = [dateString2 componentsSeparatedByString:@" "];
    NSString *date2 = components2[0];
    NSArray *todaydate2=[date2 componentsSeparatedByString:@"-"];
    
    NSString *str4=[NSString stringWithFormat:@"%@",[todaydate2 objectAtIndex:2]];
    
    if ([str1 isEqualToString:@"01"])
    {
        strDay=@"st";
    }
    else if ([str1 isEqualToString:@"02"])
    {
        strDay=@"nd";
    }
    else if ([str1 isEqualToString:@"03"])
    {
        strDay=@"rd";
    }
    else
    {
        strDay=@"th";
    }
    
    
    if ([str4 isEqualToString:@"01"])
    {
        strDay2=@"st";
    }
    else if ([str4 isEqualToString:@"02"])
    {
        strDay2=@"nd";
    }
    else if ([str4 isEqualToString:@"03"])
    {
        strDay2=@"rd";
    }
    else
    {
        strDay2=@"th";
    }

    
    
    if ([str2 isEqualToString:@"01"])
    {
        strMonth=@"January";
    }
    else if ([str2 isEqualToString:@"02"])
    {
        strMonth=@"February";
    }
    else if ([str2 isEqualToString:@"03"])
    {
        strMonth=@"March";
    }
    else if ([str2 isEqualToString:@"04"])
    {
        strMonth=@"April";
    }
    else if ([str2 isEqualToString:@"05"])
    {
        strMonth=@"May";
    }
    else if ([str2 isEqualToString:@"06"])
    {
        strMonth=@"June";
    }
    else if ([str2 isEqualToString:@"07"])
    {
        strMonth=@"July";
    }
    else if ([str2 isEqualToString:@"08"])
    {
        strMonth=@"August";
    }
    else if ([str2 isEqualToString:@"09"])
    {
        strMonth=@"September";
    }
    else if ([str2 isEqualToString:@"10"])
    {
        strMonth=@"October";
    }
    else if ([str2 isEqualToString:@"11"])
    {
        strMonth=@"November";
    }
    else if ([str2 isEqualToString:@"12"])
    {
        strMonth=@"December";
    }
    
    
    _datelab.text = [NSString stringWithFormat:@"%@%@ - %@%@",str1,strDay,str4,strDay2];
    _monthLab.text =  [NSString stringWithFormat:@"%@ \n %@",strMonth,str3];
    
}



-(NSArray*)daysInWeek:(int)weekOffset fromDate:(NSDate*)date
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    //ask for current week
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    comps=[calendar components:NSWeekCalendarUnit|NSCalendarUnitYear fromDate:date];
    //create date on week start
    NSDate* weekstart=[calendar dateFromComponents:comps];
    
    NSDateComponents* moveWeeks=[[NSDateComponents alloc] init];
    moveWeeks.weekOfYear=weekOffset;
    weekstart=[calendar dateByAddingComponents:moveWeeks toDate:weekstart options:0];
    
    
    //add 7 days
    NSMutableArray* week=[NSMutableArray arrayWithCapacity:7];
    for (int j=1; j<=7; i++) {
        NSDateComponents *compsToAdd = [[NSDateComponents alloc] init];
        compsToAdd.day=j;
        NSDate *nextDate = [calendar dateByAddingComponents:compsToAdd toDate:weekstart options:0];
        [week addObject:nextDate];
        
    }
    return [NSArray arrayWithArray:week];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
