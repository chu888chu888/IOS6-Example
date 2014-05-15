//
//  ViewController.m
//  MapTex
//
//  Created by skyler on 12-11-20.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UIAlertView * aaa=[[UIAlertView alloc]initWithTitle:@"" message:@"“MapTest” would Like to Use Your Curent Location" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"Yes", nil];
    [aaa show];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)addPin:(id)sender{

    CLLocationCoordinate2D coordinary={31.240948,121.485958};//上海的经度
    //上述位置地址信息
    NSDictionary *address=[NSDictionary dictionaryWithObjectsAndKeys:@"中国",@"Country",@"上海",@"Locality", nil];
    
    MKPlacemark *shanghai=[[MKPlacemark alloc]initWithCoordinate:coordinary addressDictionary:address];//创建MKPlacemark
    [mv addAnnotation:shanghai]; //在地图上标识
    //按照同样的方法,在地图上标记北京
    CLLocationCoordinate2D c = {39.908605,116.398019};
    
    address = [NSDictionary dictionaryWithObjectsAndKeys:@"中国", @"Country",@"北京",@"Locality", nil];
    MKPlacemark *mysteryspot = [[MKPlacemark alloc]initWithCoordinate:c addressDictionary:address];
    [mv addAnnotation:mysteryspot];
    
    [mv setCenterCoordinate:coordinary animated:YES];



}
-(IBAction)changMapType:(id)sender{

    UISegmentedControl *ctrl=(UISegmentedControl *) sender;
   
    NSInteger temp=ctrl.selectedSegmentIndex;//获取分段控件上的值
    
    mv.mapType=temp;//设置地图的显示类型（也是使用0/1/2来代表3种显示）
    
    
   

}
-(IBAction)currentLocation:(id)sender{

    mv.showsUserLocation=YES;//允许显示用户当前位置（缺省为否）
    MKUserLocation *userLocation=mv.userLocation;
    CLLocationCoordinate2D coordinte=userLocation.location.coordinate;//经度
    if (!geo) {
        geo=[[MKReverseGeocoder alloc]initWithCoordinate:coordinte];
        geo.delegate=self;
        [geo start];
    }
    



}
/*-(IBAction)reverseGeoTest:(id)sender{

    CLLocationCoordinate2D c={39.908605,116.398019};
    geo=[[MKReverseGeocoder alloc]initWithCoordinate:c];
    geo.delegate=self;
    [geo start];


}*/
-(void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFailWithError:(NSError *)error {
    NSLog(@"reverseGeoCoder erro");
   

}
-(void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFindPlacemark:(MKPlacemark *)placemark{
    
    MKPlacemark *mysteryspot=[[MKPlacemark alloc]
                              initWithCoordinate:placemark.coordinate addressDictionary:placemark.addressDictionary];
    
    [mv addAnnotation:mysteryspot];
    [mysteryspot release];
    [mv setCenterCoordinate:placemark.coordinate    animated:YES];

}
@end
