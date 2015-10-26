//
//  ModelConverter.m
//  foo
//
//  Created by london xue on 26/10/15.
//  Copyright (c) 2015 sample. All rights reserved.
//

#import "ModelConverter.h"
#import "MJExtension.h"
#import "MJExtension/NSObject+MJKeyValue.h"

static NSMutableDictionary* convertMap;
@implementation ModelConverter
+(void) addConvertMapWithSrcModel:(Class) srcModel dstModel:(Class) dstClass {
    if(!convertMap){
        convertMap=[NSMutableDictionary new];
    }
    ;
}

+(id) convertFromSrcModel:(NSObject*) srcModel dstModelClass:(Class) dstModelClass{
    id<NSObject> rtn=nil;
    if(srcModel){
        NSDictionary *tmpDict = srcModel.keyValues;
        rtn=[dstModelClass  objectWithKeyValues: tmpDict] ;
    }
    return rtn;
}

@end
