//
//  AppDelegate.m
//  Amigos
//
//  Created by Kashan Khan on 05/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import "AppDelegate.h"
#import "BALHandler.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self initailizeApplicationDefaultSettings];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    [self saveRunningTasks];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)initailizeApplicationDefaultSettings {

    [MagicalRecord setupAutoMigratingCoreDataStack];
//    BALHandler *balHandler = [BALHandler new];
//    [balHandler performRequest:BALTypePatentDBInitailizer parameters:nil block:^(id response, NSError *error) {
//        NSLog(@" response : %@", response);
//        NSLog(@" error : %@", error);
//    }];
}

- (void)saveRunningTasks {

    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
}
@end
