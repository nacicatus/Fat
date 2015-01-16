//
//  Indexer.h
//  BodyMassIndex
//
//  Created by God on 1/17/15.
//  Copyright (c) 2015 God. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Indexer : NSObject
{
    float height, weight;
}

@property(readwrite) float height, weight;

- (float) calcIndex;

@end
