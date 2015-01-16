//
//  Indexer.m
//  BodyMassIndex
//
//  Created by God on 1/17/15.
//  Copyright (c) 2015 God. All rights reserved.
//

#import "Indexer.h"

@implementation Indexer
@synthesize height, weight;

- (float) calcIndex {
    return self.weight/(self.height*self.height);
}

@end
