//
//  SearchQueryBAL.m
//  Amigos
//
//  Created by Kashan Khan on 12/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import "SearchQueryBAL.h"
#import "NSString+HTML.h"


@implementation SearchQueryBAL

static NSInteger kCurrentPageId = 0;
static NSInteger kMaxResutInPage = 10;

- (void)performRequest:(id)parameters block:(BALBlock)block {
    

    NSString *uri = @"https://www.google.com/patents/US8638787?hl=en&dq=Hello";// [[[self baseUrl] absoluteString] stringByAppendingString:[self requestUrl:parameters]];
    NSURL *url = [NSURL URLWithString:uri];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    
    [NSURLConnection sendAsynchronousRequest:urlRequest queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error)
    {
        NSString *result = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
        if (block) {
            block ([self parseobject:result], error);
        }
        kCurrentPageId += kMaxResutInPage;
    }];
    
}


- (NSURL *)baseUrl {
    
    return [NSURL URLWithString:@"https://www.google.com/"];
}

- (NSString *)requestUrl:(id)parameters {

    NSString *uri = @"?tbm=pts#q=%@&start=%d&tbm=pts";
    NSString *queryParams = [parameters stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding];
    uri = [NSString stringWithFormat:uri, queryParams, kCurrentPageId];
    
    return uri;
}

- (id)parseobject:(id)object {

    NSLog(@" stringByStrippingTags : %@", [object stringByStrippingTags]);

    
    return object;

}

@end
