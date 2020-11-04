//
//  ViewController.m
//  Day IOS 27 Multithreading
//
//  Created by Student P_04 on 31/07/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //creating serial queue
//    dispatch_queue_t queue=dispatch_queue_create("Serial Queue", DISPATCH_QUEUE_SERIAL);
//    dispatch_sync(queue, ^{
//        [self task1];
//    });
//    dispatch_sync(queue, ^{
//        [self task2];
//    });
//    dispatch_sync(queue, ^{
//        [self task3];
//    });
//    
    dispatch_queue_t queue1=dispatch_queue_create("Concurrent Queue", DISPATCH_QUEUE_CONCURRENT);
    dispatch_sync(queue1, ^{
        [self task1];
    });
    dispatch_sync(queue1, ^{
        [self task2];
    });
    dispatch_sync(queue1, ^{
        [self task3];
    });
    
    //concurrent queue using global queue
   // dispatch_queue_t queue1=dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH,0);
//     dispatch_queue_t queue2=dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0);
//     dispatch_queue_t queue3=dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW,0);
//     dispatch_queue_t queue4=dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND,0);
//    dispatch_sync(queue1, ^{
//        [self task2];
//    });
//    dispatch_sync(queue2, ^{
//        [self task3];
//    });
//    dispatch_sync(queue3, ^{
//        [self task1];
//    });
//    dispatch_sync(queue4, ^{
//        [self Backtask];
//    });
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 10*NSEC_PER_SEC),dispatch_get_main_queue(), ^{
//        NSLog(@"I did all tasks and now I am on main thread");
//    });
//    dispatch_async(dispatch_get_main_queue(), ^{
//    NSLog(@"I did all tasks and now I am on main thread");
//    });
}

-(void)task1
{
    NSLog(@"Task1 Started");
    for (int i=1; i<=30; i++)
    {
        NSLog(@"task1-%d",i);
    }
    NSLog(@"Task1 Ended");
}
-(void)task2
{
    NSLog(@"Task2 Started");
    for (int i=1; i<=30; i++)
    {
        NSLog(@"task2-%d",i);
    }
    NSLog(@"Task2 Ended");
}
-(void)task3
{
    NSLog(@"Task3 Started");
    for (int i=1; i<=30; i++)
    {
        NSLog(@"task3-%d",i);
    }
    NSLog(@"Task3 Ended");
}
-(void)Backtask
{
    NSLog(@"BackTask Started");
    for (int i=1; i<=30; i++)
    {
        NSLog(@"Back Task-%d",i);
    }
    NSLog(@"BackTask Ended");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
