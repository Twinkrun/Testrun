//
//  TWRViewController.m
//  Testrun
//
//  Created by Kawazure on 2014/06/30.
//  Copyright (c) 2014年 Twinkrun. All rights reserved.
//

#import "TWRViewController.h"

@interface TWRViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong) NSDictionary *cells;

@end

@implementation TWRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.cells = @{
       [NSIndexPath indexPathForRow:0 inSection:0]: @{
            @"identifier": @"upDownCell",
            @"name": @"Time",
            @"default": @"0:30",
            @"step": @10,
            @"stepped": ^(){},
        },
        [NSIndexPath indexPathForRow:0 inSection:0]: @{
            @"identifier": @"upDownCell",
            @"name": @"Pink",
            @"default": @0,
            @"step": @1,
            @"stepped": ^(){},
        },
        [NSIndexPath indexPathForRow:1 inSection:0]: @{
            @"identifier": @"upDownCell",
            @"name": @"Red",
            @"default": @4,
            @"step": @1,
            @"stepped": ^(){},
        },
        [NSIndexPath indexPathForRow:2 inSection:0]: @{
            @"identifier": @"upDownCell",
            @"name": @"Orange",
            @"default": @0,
            @"step": @1,
            @"stepped": ^(){},
        },
        [NSIndexPath indexPathForRow:3 inSection:0]: @{
            @"identifier": @"upDownCell",
            @"name": @"Yellow",
            @"default": @0,
            @"step": @1,
            @"stepped": ^(){},
        },
        [NSIndexPath indexPathForRow:4 inSection:0]: @{
            @"identifier": @"upDownCell",
            @"name": @"Green",
            @"default": @3,
            @"step": @1,
            @"stepped": ^(){},
        },
        [NSIndexPath indexPathForRow:5 inSection:0]: @{
            @"identifier": @"upDownCell",
            @"name": @"Cyan",
            @"default": @0,
            @"step": @1,
            @"stepped": ^(){},
        },
        [NSIndexPath indexPathForRow:6 inSection:0]: @{
            @"identifier": @"upDownCell",
            @"name": @"Blue",
            @"default": @0,
            @"step": @1,
            @"stepped": ^(){},
        },
        [NSIndexPath indexPathForRow:7 inSection:0]: @{
            @"identifier": @"upDownCell",
            @"name": @"Violet",
            @"default": @0,
            @"step": @1,
            @"stepped": ^(){},
        },
        [NSIndexPath indexPathForRow:8 inSection:0]: @{
            @"identifier": @"upDownCell",
            @"name": @"Black",
            @"default": @3,
            @"step": @1,
            @"stepped": ^(){},
        },
        [NSIndexPath indexPathForRow:9 inSection:0]: @{
            @"identifier": @"upDownCell",
            @"name": @"White",
            @"default": @0,
            @"step": @1,
            @"stepped": ^(){},
        },
    };
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.cells.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableDictionary *content = self.cells[indexPath];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:content[@"identifier"]];
    
    UIStepper *stepper = (UIStepper * )[cell viewWithTag:1];
    
    UILabel *nameLabel = (UILabel *)[cell viewWithTag:2];
    [nameLabel setText:content[@"name"]];
    
    UILabel *valueLabel = (UILabel *)[cell viewWithTag:3];
    NSString *value = [NSString stringWithFormat:@"%@", content[@"default"]];
    [valueLabel setText:value];
    
    [cell setBackgroundColor:content[@"color"]];
    
    return cell;
}

@end
