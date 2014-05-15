//
//  ComunicationWithCloud.m
//  TestLogin
//
//  Created by skyler on 12-12-17.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ComunicationWithCloud.h"

@implementation ComunicationWithCloud

+(BOOL)TestUser:(NSString *)userName andPassWord:(NSString *)password andBlock:(HandleResponseBlock)block{
    NSURL* WebURL = [NSURL URLWithString:CLOUDURL];
    NSMutableURLRequest* req = [[NSMutableURLRequest alloc] init];
    [req setURL:WebURL];
    [req setHTTPMethod:@"POST"];
    [req addValue:@"text/xml" forHTTPHeaderField:@"Content-Type"];
    NSMutableData* postbody = [[NSMutableData alloc] init];
    [postbody appendData:[[NSString stringWithFormat:@"<?xml version=\"1.0\" encoding=\"UTF-8\"?><Envelope  xmlns=\"http://schemas.xmlsoap.org/soap/envelope/\"><Body><REQUEST><AUTHENTICATION><SERVERDEF><SERVERNAME>server</SERVERNAME></SERVERDEF><LOGONDATA><USERNAME>"] dataUsingEncoding:NSUTF8StringEncoding]];
    [postbody appendData:[userName dataUsingEncoding:NSUTF8StringEncoding]];
    [postbody appendData:[[NSString stringWithFormat:@"</USERNAME><PASSWORD>"] dataUsingEncoding:NSUTF8StringEncoding]];
    [postbody appendData:[password dataUsingEncoding:NSUTF8StringEncoding]];
    [postbody appendData:[[NSString stringWithFormat:@"</PASSWORD></LOGONDATA></AUTHENTICATION><COMMAND>LOGON</COMMAND></REQUEST></Body></Envelope>"] dataUsingEncoding:NSUTF8StringEncoding]];
    [req setHTTPBody:postbody];
    
    [NSURLConnection sendAsynchronousRequest:req queue:[[NSOperationQueue alloc] init] completionHandler:block];
    
    return YES;

    

}

+(void)addUser:(NSString *)username andPassWord:(NSString *)password andNewUsername:(NSString *)newusername andNewPassword:(NSString *)newpassword andBlock:(HandleResponseBlock)aBlock{

    NSURL* WebURL = [NSURL URLWithString:CLOUDURL];
    NSMutableURLRequest* req = [[NSMutableURLRequest alloc] init];
    [req setURL:WebURL];
    [req setHTTPMethod:@"POST"];
    [req addValue:@"text/xml" forHTTPHeaderField:@"Content-Type"];
    NSMutableData* postbody = [[NSMutableData alloc] init];
    [postbody appendData:[[NSString stringWithFormat:@"<?xml version=\"1.0\" encoding=\"UTF-8\"?><Envelope  xmlns=\"http://schemas.xmlsoap.org/soap/envelope/\"><Body><REQUEST><AUTHENTICATION><SERVERDEF><SERVERNAME>server</SERVERNAME></SERVERDEF><LOGONDATA><USERNAME>"] dataUsingEncoding:NSUTF8StringEncoding]];
    [postbody appendData:[username dataUsingEncoding:NSUTF8StringEncoding]];
    [postbody appendData:[[NSString stringWithFormat:@"</USERNAME><PASSWORD>"] dataUsingEncoding:NSUTF8StringEncoding]];
    [postbody appendData:[password dataUsingEncoding:NSUTF8StringEncoding]];
    
    [postbody appendData:[[NSString stringWithFormat:@"</PASSWORD></LOGONDATA></AUTHENTICATION><COMMAND>IMPORTYOUNGUSER</COMMAND><DATA><NAME>"] dataUsingEncoding:NSUTF8StringEncoding]];
    [postbody appendData:[newusername dataUsingEncoding:NSUTF8StringEncoding]];
    [postbody appendData:[[NSString stringWithFormat:@"</NAME><PASSWORD>"] dataUsingEncoding:NSUTF8StringEncoding]];
    [postbody appendData:[newpassword dataUsingEncoding:NSUTF8StringEncoding]];
    [postbody appendData:[[NSString stringWithFormat:@"</PASSWORD>"] dataUsingEncoding:NSUTF8StringEncoding]];
        [postbody appendData:[[NSString stringWithFormat:@"</DATA></REQUEST></Body></Envelope>"] dataUsingEncoding:NSUTF8StringEncoding]];
    [req setHTTPBody:postbody];
    
    [NSURLConnection sendAsynchronousRequest:req queue:[[NSOperationQueue alloc] init] completionHandler:aBlock];
}

@end
