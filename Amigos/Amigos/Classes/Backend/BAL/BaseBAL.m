//
//  BaseBAL.m
//  Amigos
//
//  Created by Kashan Khan on 03/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import "BaseBAL.h"

@implementation BaseBAL

- (void)performRequest:(id)parameters block:(BALBlock)block {


}


- (id)parse:(ParseType)parseType object:(id)object {

    ParserHandler *parserHandler = [ParserHandler new];
    return [parserHandler parse:parseType object:object];
}
@end
