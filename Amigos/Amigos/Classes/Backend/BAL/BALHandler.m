//
//  BALHandler.m
//  Amigos
//
//  Created by Kashan Khan on 03/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import "BALHandler.h"
#import "PatentDBInitializeBAL.h"
#import "SearchQueryBAL.h"

@implementation BALHandler

- (void)performRequest:(BALType)balType parameters:(id)parameters block:(BALBlock)block {

    BaseBAL *bal = nil;
    
    switch (balType) {
            
        case BALTypePatentDBInitailizer:
            bal = [PatentDBInitializeBAL new];
            break;
            
        case BALTypeSearchQuery:
            bal = [SearchQueryBAL new];
            break;
            
            
            
        default:
            break;
    }//switch

    [bal performRequest:parameters block:block];
}

@end
