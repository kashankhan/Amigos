//
//  BaseParser.m
//  Amigos
//
//  Created by Kashan Khan on 03/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import "BaseParser.h"

@implementation BaseParser

- (id)init {

    self = [super init];
    if (self) {
        self.coreDataHelper = [AmigosCoreDataHelper new];
    }
    return self;
}

- (id)parse:(id)object {
    
    return NULL;

}

@end
