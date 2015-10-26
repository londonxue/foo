//
//  DbMigration.h
//  foo
//
//  Created by london xue on 26/10/15.
//  Copyright (c) 2015 sample. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CTPersistanceMigrator.h"
#import "CTPersistanceMigrator.h"

@interface TestMigrator : CTPersistanceMigrator <CTPersistanceMigratorProtocol>

@end

@interface MigrationStep1_0 : NSObject <CTPersistanceMigrationStep>

@end

@interface DbMigration : NSObject

@end
