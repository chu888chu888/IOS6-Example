//
//  LoginParse.m
//  TestLogin
//
//  Created by skyler on 12-12-17.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "LoginParse.h"

@implementation LoginParse

@synthesize success;
-(id) initWithContent:(NSString *)aContent
{
    self = [super initWithContent:aContent];
    self.success = FALSE;
    
    return self;
}





-(void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    
}

-(void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    
    
}

-(void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if ([elementName isEqualToString:@"SUCCESS"]) {
        success = YES;
    };
}


@end
