//
//  PatentDBInitializeParser.m
//  Amigos
//
//  Created by Kashan Khan on 03/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import "PatentDBInitializeParser.h"
#import "Patent.h"

@implementation PatentDBInitializeParser


- (id)parse:(id)object {
    
    NSLog(@" helo : %d", [object count]);
    NSString * familyInPaDocId = nil;
    NSString * aAuthority = nil;
    NSString * aNumber = nil;
    NSString * aDate = nil;
    NSString * pAuthority= nil ;
    NSString * pNumber = nil;
    NSString * pKind = nil;
    NSString * citYrs3p = nil;
    NSString * citYrs5p = nil;
    
    Patent *patent = nil;
    NSMutableArray *patents = [NSMutableArray new];
    
    for (NSDictionary *patentInfo  in object) {
        
        familyInPaDocId = [patentInfo valueForKey:@"familyInPaDocId"];
        aAuthority = [patentInfo valueForKey:@"aAuthority"];
        aNumber = [patentInfo valueForKey:@"aNumber"];
        aDate = [patentInfo valueForKey:@"aDate"];
        pAuthority = [patentInfo valueForKey:@"pAuthority"];
        pNumber = [patentInfo valueForKey:@"pNumber"];
        pKind = [patentInfo valueForKey:@"pKind"];
        citYrs3p = [patentInfo valueForKey:@"citYrs3p"];
        citYrs5p = [patentInfo valueForKey:@"citYrs5p"];
        
        patent = [Patent MR_createEntity];
        //patent = [self.coreDataHelper getPatent:familyInPaDocId];
        
        [patent setFamilyInPaDocId:familyInPaDocId];
        [patent setAAuthority:aAuthority];
        [patent setANumber:aNumber];
        [patent setADate:aDate];
        [patent setPAuthority:pAuthority];
        [patent setPNumber:pNumber];
        [patent setPKind:pKind];
        [patent setCitYrs3p:citYrs3p];
        [patent setCitYrs5p:citYrs5p];
        
        [patents addObject:patent];
    }//for
    
        NSLog(@" helo : %d", [patents count]);
    
    return patents;
    
}

@end
