//
//  ModelManagerBase.m
//  foo
//
//  Created by london xue on 26/10/15.
//  Copyright (c) 2015 sample. All rights reserved.
//

#import "ModelManagerBase.h"
#import "TestRecord.h"


@implementation ModelManagerBase

+(void) test{
    NSError *error = nil;
    TestTable *table = [[TestTable alloc] init];

    TestRecord *record = [[TestRecord alloc] init];
    record.text = @"hello, world!";
    [table insertRecord:record error:&error];
    NSLog(@"%@", record.identifier); // 1

    /* read */
    record = (TestRecord *)[table findLatestRecordWithError:&error];
    NSLog(@"%@", record.text); // hello, world!

    /* update */
    record = (TestRecord *)[table findWithPrimaryKey:@(1) error:&error];
    record.text = @"hello, universe!";
    [table updateRecord:record error:&error];

    /* delete */
    [table deleteRecord:record error:&error];

}


//TestTable *testTable = [[TestTable alloc] init];
//[CTPersistanceTransaction performTranscationWithBlock:^(BOOL *shouldRollback) {
//    
//    NSUInteger count = 10000;
//    while (count --> 0) {
//        TestRecord *record = [[TestRecord alloc] init];
//        record.age = @(count);
//        record.name = @"casa";
//        record.tomas = @"casa";
//        [testTable insertRecord:record error:NULL];
//    }
//    
//    *shouldRollback = NO;
//    
//} queryCommand:testTable.queryCommand lockType:CTPersistanceTransactionLockTypeDefault];
//
//
//
//
//[[CTPersistanceAsyncExecutor sharedInstance] performAsyncAction:^{
//    NSUInteger count = 500;
//    NSError *error = nil;
//    
//    // always create table which you want to manipulate data in asyn block!!!
//    TestTable *testTable = [[TestTable alloc] init];
//    
//    while (count --> 0) {
//        TestRecord *record = [[TestRecord alloc] init];
//        record.age = @(count);
//        record.name = @"name";
//        record.tomas = @"tomas";
//        [testTable insertRecord:record error:&error];
//        if (error) {
//            NSLog(@"error is %@", error);
//            NSException *exception = [[NSException alloc] init];
//            @throw exception;
//        }
//    }
//} shouldWaitUntilDone:NO];
@end
