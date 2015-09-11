//
//  InterfaceController.m
//  AppWatchTV WatchKit Extension
//
//  Created by fl on 09.09.15.
//  Copyright (c) 2015 LWO LLC. All rights reserved.
//

#import "InterfaceController.h"

@interface InterfaceController()

@end

@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end

NSString *const cellIdentifier = @"cell";

@interface WKRow : NSObject
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *rowTitle;
@end

@implementation WKRow

@end

@interface SecondInterfaceController : WKInterfaceController
@property(nonatomic, weak) IBOutlet WKInterfaceTable *tableView;
@property(nonatomic, strong) NSArray *sourseArray;
@end

@implementation SecondInterfaceController

-(instancetype)init {
    if (self = [super init]) {
        [self loadTableViewData];
    } return self;
}

-(void)loadTableViewData {
    if (self.tableView != nil) {
        [self.tableView setNumberOfRows:self.sourseArray.count withRowType:cellIdentifier];
        for (NSInteger i = 0; i < self.sourseArray.count; i++) {
            WKRow *row = [self.tableView rowControllerAtIndex:i];
            [row.rowTitle setText:self.sourseArray[i]];
        }
    }
}

-(NSArray *)sourseArray {
    if (_sourseArray == nil) {
        _sourseArray = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14", @"15", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14", @"15", ];
    } return _sourseArray;
}

@end