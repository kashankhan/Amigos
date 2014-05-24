//
//  PatentDBInitializeBAL.m
//  Amigos
//
//  Created by Kashan Khan on 03/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import "PatentDBInitializeBAL.h"

@implementation PatentDBInitializeBAL

- (id)getContent {

    NSString* path = [[NSBundle mainBundle] pathForResource:@"patent"
                                                     ofType:@"json"];
    
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    return  [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
}

- (void)performRequest:(id)parameters block:(BALBlock)block {
   
    id object = [self getContent];
    if (block) {
       // id parsedObject =  [self parse:ParseTypePatentDBInitailizier object:object];
        block(object, nil);
    }//if
}

@end
