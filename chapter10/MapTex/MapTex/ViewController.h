//
//  ViewController.h
//  MapTex
//
//  Created by skyler on 12-11-20.
//  Copyright (c) 2012年 skyler. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController {

    MKReverseGeocoder *geo;
    IBOutlet MKMapView *mv;

}
-(IBAction)changMapType:(id)sender;

-(IBAction)addPin:(id)sender;
-(IBAction)reverseGeoTest:(id)sender;
-(IBAction)currentLocation:(id)sender;
@end
