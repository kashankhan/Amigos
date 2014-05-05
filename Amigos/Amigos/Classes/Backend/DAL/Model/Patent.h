//
//  Patent.h
//  Amigos
//
//  Created by Kashan Khan on 05/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Patent : NSManagedObject

@property (nonatomic, retain) NSString * aAuthority;
@property (nonatomic, retain) NSDate * aDate;
@property (nonatomic, retain) NSString * aNumber;
@property (nonatomic, retain) NSString * citYrs3p;
@property (nonatomic, retain) NSString * citYrs5p;
@property (nonatomic, retain) NSString * familyInPaDocId;
@property (nonatomic, retain) NSString * pAuthority;
@property (nonatomic, retain) NSString * pKind;
@property (nonatomic, retain) NSString * pNumber;

@end
