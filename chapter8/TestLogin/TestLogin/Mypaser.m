//
//  Mypaser.m
//  TestLogin
//
//  Created by skyler on 12-12-17.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "Mypaser.h"

@implementation Mypaser{

    BOOL success;
}
@synthesize parser;
@synthesize content;
    
    -(id) initWithContent:(NSString*) aContent
    {
        if ([super init]) {
            self.content = aContent;
            self.parser = [[NSXMLParser alloc] initWithData:
                           [content dataUsingEncoding:NSUTF8StringEncoding]];
            parser.delegate = self;
        }
        return self;
    }
    
    -(void) BeginToParse
    {
        [parser parse];
    }






-(void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    NSLog(@"start element:");
    //    NSLog(elementName);
}

-(void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    NSLog(@"character:");
    //    NSLog(string);
}

-(void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if ([elementName isEqualToString:@"SUCCESS"]) {
        success = YES;
    };
}

@end
