//
//  BALHandler.h
//  Amigos
//
//  Created by Kashan Khan on 03/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseBAL.h"

typedef enum {
    BALTypePatentDBInitailizer,
    BALTypeSearchQuery,
    
    BALTypeUnknown
} BALType;

@interface BALHandler : NSObject


- (void)performRequest:(BALType)balType parameters:(id)parameters block:(BALBlock)block;

@end
