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
        
        familyInPaDocId = [[patentInfo valueForKey:@"familyinpadoc_id"] stringValue];
        aAuthority = [patentInfo valueForKey:@"aauthority"];
        aNumber = [patentInfo valueForKey:@"anumber"];
        aDate = [patentInfo valueForKey:@"adate"];
        pAuthority = [patentInfo valueForKey:@"pauthority"];
        pNumber = [patentInfo valueForKey:@"pnumber"];
        pKind = [patentInfo valueForKey:@"pkind"];
        citYrs3p = [[patentInfo valueForKey:@"cit_yrs3_p"] stringValue];
        citYrs5p = [[patentInfo valueForKey:@"cit_yrs5_p"] stringValue];
        
        NSArray *patentFinder = [Patent MR_findByAttribute:@"familyInPaDocId" withValue:familyInPaDocId];
        
        patent = ([patentFinder count]) ? [patentFinder lastObject] : [Patent MR_createEntity];

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
    
    return patents;
    
}

@end
