//
//  ParserHandler.h
//  Amigos
//
//  Created by Kashan Khan on 03/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {

    ParseTypePatentDBInitailizier,
    ParseTypeUnkwon
}ParseType;

@interface ParserHandler : NSObject

- (id)parse:(ParseType)parseType object:(id)object;

@end
