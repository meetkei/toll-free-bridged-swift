//
//  main.m
//  ObjCUninitializedVariables
//
//  Created by Keun young Kim on 2014. 10. 23..
//  Copyright (c) 2014년 Keun young Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char * argv[]) {
    BOOL condition = NO;
    int num;
    if (condition) {
        num = 777;
    }
    
    NSLog(@"%i", num);
    // ??????
}
