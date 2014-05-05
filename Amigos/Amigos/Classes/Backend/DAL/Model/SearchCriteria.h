//
//  SearchCriteria.h
//  Amigos
//
//  Created by Kashan Khan on 05/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface SearchCriteria : NSManagedObject

@property (nonatomic, retain) NSString * kind;
@property (nonatomic, retain) NSString * authority;
@property (nonatomic, retain) NSDate * startDate;
@property (nonatomic, retain) NSDate * endDate;

@end
