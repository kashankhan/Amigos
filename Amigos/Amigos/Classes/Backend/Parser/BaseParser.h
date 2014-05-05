//
//  BaseParser.h
//  Amigos
//
//  Created by Kashan Khan on 03/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AmigosCoreDataHelper.h"

@interface BaseParser : NSObject

@property (nonatomic, retain) AmigosCoreDataHelper *coreDataHelper;

- (id)parse:(id)object;
@end
