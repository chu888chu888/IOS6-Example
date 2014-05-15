//
//  Mypaser.h
//  TestLogin
//
//  Created by skyler on 12-12-17.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Mypaser : NSObject<NSXMLParserDelegate>
{
    NSString* content;
    NSXMLParser* parser;
    


}
@property(nonatomic, strong)NSString *content;
@property(nonatomic, strong)NSXMLParser *parser;

-(id)initWithContent:(NSString*)aContent;
-(void)BeginToParse;
@end
