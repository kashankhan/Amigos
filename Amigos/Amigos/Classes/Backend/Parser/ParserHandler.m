//
//  ParserHandler.m
//  Amigos
//
//  Created by Kashan Khan on 03/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import "ParserHandler.h"
#import "BaseParser.h"
#import "PatentDBInitializeParser.h"

@implementation ParserHandler

- (id)parse:(ParseType)parseType object:(id)object {
    
    BaseParser *parser = nil;
    
    switch (parseType) {
        case ParseTypePatentDBInitailizier:
            parser = [[PatentDBInitializeParser alloc] init];
            break;
            
        default:
            break;
    }//switch
    
    return [parser parse:object];

}
@end
