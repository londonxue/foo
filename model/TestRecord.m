//
//  TestRecord.m
//  foo
//
//  Created by london xue on 26/10/15.
//  Copyright (c) 2015 sample. All rights reserved.
//

#import "TestRecord.h"

@implementation TestRecord

@end

@implementation TestTable
#pragma mark - CTPersistanceTableProtocol
- (NSString *)databaseName
{
    return @"TestDataBase.sqlite";
}

- (NSString *)tableName
{
    return @"TestTable";
}

- (NSDictionary *)columnInfo
{
    return @{
             @"identifier":@"INTEGER PRIMARY KEY AUTOINCREMENT",
             @"text":@"TEXT"
             };
}

- (Class)recordClass
{
    return [TestRecord class];
}

- (NSString *)primaryKeyName
{
    return @"identifier";
}

@end
