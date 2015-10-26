//
//  TestRecord.h
//  foo
//
//  Created by london xue on 26/10/15.
//  Copyright (c) 2015 sample. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTPersistance.h"

@interface TestRecord : CTPersistanceRecord

@property (nonatomic, copy) NSNumber *identifier;
@property (nonatomic, copy) NSString *text;

@end
@interface TestTable : CTPersistanceTable <CTPersistanceTableProtocol>

@end

