//
//  BaseBAL.h
//  Amigos
//
//  Created by Kashan Khan on 03/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ParserHandler.h"

typedef void (^BALBlock)(id response, NSError *error);

@interface BaseBAL : NSObject

- (void)performRequest:(id)parameters block:(BALBlock)block;

- (id)parse:(ParseType)parseType object:(id)object;

@end
