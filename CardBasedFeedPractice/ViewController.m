//
//  ViewController.m
//  CardBasedFeedPractice
//
//  Created by LILouis on 11/16/16.
//  Copyright © 2016 LILouis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

UITableView *tableView;
NSMutableArray *test_array;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    test_array = @[@"r1", @"r2"];
    
    tableView=[[UITableView alloc]init];
    tableView.frame = CGRectMake(0,0,[[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height);
    tableView.dataSource=self;
    tableView.delegate=self;
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [tableView reloadData];
    [self.view addSubview:tableView];
    
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [test_array count];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier   forIndexPath:indexPath] ;
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    //cell.textLabel.text=[test_array objectAtIndex:indexPath.row];
    
    cell.frame = CGRectMake(0,0,[[UIScreen mainScreen] bounds].size.width,200);
    

    
    UIImageView *userAvatarView = [[UIImageView alloc] initWithFrame:CGRectZero];
    [userAvatarView setImage:[UIImage imageNamed:@"avatar_01.png"]];
    userAvatarView.frame = CGRectMake(0,0,60,60);
    userAvatarView.center = CGPointMake(40,40);
    userAvatarView.layer.cornerRadius = userAvatarView.frame.size.width / 2;
    userAvatarView.clipsToBounds = YES;
    [cell.contentView addSubview:userAvatarView];
    
    UILabel *username_label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
    username_label.center = CGPointMake(175,25);
    username_label.text = @"Donal Trump!!!!";
    [username_label setBackgroundColor:[UIColor clearColor]]; // transparent label background
    [username_label setFont:[UIFont boldSystemFontOfSize:20.0]];
    [cell.contentView addSubview:username_label];
    
    UILabel *location_label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
    location_label.center = CGPointMake(175,50);
    location_label.text = @"D.C >";
    [location_label setBackgroundColor:[UIColor clearColor]]; // transparent label background
    [location_label setFont:[UIFont boldSystemFontOfSize:16.0]];
    [cell.contentView addSubview:location_label];
    
    UILabel *viewer_number_label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
    viewer_number_label.center = CGPointMake([[UIScreen mainScreen] bounds].size.width,25);
    viewer_number_label.text = @"11235";
    [viewer_number_label setBackgroundColor:[UIColor clearColor]]; // transparent label background
    [viewer_number_label setFont:[UIFont boldSystemFontOfSize:14.0]];
    [cell.contentView addSubview:viewer_number_label];
    
    UILabel *watch_label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 20)];
    watch_label.center = CGPointMake([[UIScreen mainScreen] bounds].size.width - 20,50);
    watch_label.text = @"观看";
    [watch_label setBackgroundColor:[UIColor clearColor]]; // transparent label background
    [watch_label setFont:[UIFont boldSystemFontOfSize:16.0]];
    [cell.contentView addSubview:watch_label];
    
    UIImageView *bgView = [[UIImageView alloc] initWithFrame:CGRectZero];
    [bgView setImage:[UIImage imageNamed:@"title_bar.png"]];
    bgView.frame = CGRectMake(0,0,[[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.width);
    bgView.center = CGPointMake([[UIScreen mainScreen] bounds].size.width / 2, [[UIScreen mainScreen] bounds].size.width / 2 + 80);
    [cell.contentView addSubview:bgView];
    

    
    
    //[(UILabel *)[cell.contentView viewWithTag:1] setText:[data1 objectAtIndex:indexPath.row]];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Your custom operation
    NSLog(@"%d", indexPath.row);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [[UIScreen mainScreen] bounds].size.width + 80;
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
