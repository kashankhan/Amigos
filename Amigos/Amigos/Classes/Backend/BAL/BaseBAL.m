//
//  BaseBAL.m
//  Amigos
//
//  Created by Kashan Khan on 03/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import "BaseBAL.h"
#import "AFHTTPSessionManager.h"

@implementation BaseBAL

- (void)performRequest:(id)parameters block:(BALBlock)block {


    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[self baseUrl]];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];

        [manager GET:[self requestUrl:parameters] parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
      
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Weather"
                                                                message:[responseObject localizedDescription]
                                                               delegate:nil
                                                      cancelButtonTitle:@"Ok"
                                                      otherButtonTitles:nil];
            [alertView show];
            
        } failure:^(NSURLSessionDataTask *task, NSError *error) {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Weather"
                                                                message:[error localizedDescription]
                                                               delegate:nil
                                                      cancelButtonTitle:@"Ok"
                                                      otherButtonTitles:nil];
            [alertView show];
        }];
    
    
    
    
//    // 2
//    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
//    manager.responseSerializer = [AFJSONResponseSerializer serializer];
//    
//    // 3
//    if (buttonIndex == 0) {
//        [manager GET:@"weather.php" parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
//            self.weather = responseObject;
//            self.title = @"HTTP GET";
//            [self.tableView reloadData];
//        } failure:^(NSURLSessionDataTask *task, NSError *error) {
//            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Weather"
//                                                                message:[error localizedDescription]
//                                                               delegate:nil
//                                                      cancelButtonTitle:@"Ok"
//                                                      otherButtonTitles:nil];
//            [alertView show];
//        }];
//    }
//    
//    // 4
//    else if (buttonIndex == 1) {
//        [manager POST:@"weather.php" parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
//            self.weather = responseObject;
//            self.title = @"HTTP POST";
//            [self.tableView reloadData];
//        } failure:^(NSURLSessionDataTask *task, NSError *error) {
//            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Weather"
//                                                                message:[error localizedDescription]
//                                                               delegate:nil
//                                                      cancelButtonTitle:@"Ok"
//                                                      otherButtonTitles:nil];
//            [alertView show];
//        }];
//    }

    
    
//    
//    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
//    operation.responseSerializer = [AFJSONResponseSerializer serializer];
//    [self appendHeaders:operation];
//    
//    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
//        if (block) {
//            block ([self parseobject:responseObject], nil);
//        }
//        
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        
//        if (block) {
//            block (nil, error);
//        }
//        
//            NSLog(@"%s: AFHTTPRequestOperation error: %@", __FUNCTION__, error);
//    }];
//    
//    [operation start];

}


- (NSURL *)baseUrl {

    return nil;
}

- (NSString *)requestUrl:(id)parameters{
    
    return nil;

}


- (id)parseobject:(id)object {

    ParserHandler *parserHandler = [ParserHandler new];
    return [parserHandler parse:[self getParserType:object] object:object];
}


- (ParseType)getParserType:(id)object {

    return ParseTypeUnkwon;
}

@end
