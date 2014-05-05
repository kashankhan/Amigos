//
//  SwitchTableViewCell.h
//  Amigos
//
//  Created by Kashan Khan on 05/05/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwitchTableViewCell : UITableViewCell


@property (nonatomic, retain) IBOutlet UILabel *titleLabel;
@property (nonatomic, retain) IBOutlet UILabel *subTitleLabel;
@property (nonatomic, retain) IBOutlet UISwitch *switchControl;
@end
