//
//  main.m
//  4&7LuckNumber
//
//  Created by hello on 16/9/5.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        
//        
//        
//        
//        NSLog(@"Hello, World!");
//    }
//    return 0;
//}


#include <iostream>
#include<string.h>
using namespace std;
class MyClass
{
public:
    MyClass(int i = 0)
    {
        cout<<i<<endl;
    }
    MyClass(const MyClass &x)
    {
        cout<<2<<endl;
    }
    MyClass &operator=(const MyClass &x)
    {
        cout<<4<<endl;
        return *this;
    }
    ~MyClass()
    {
        cout<<5<<endl;
    }
    };
    
    int main()
    {
        char b[10]="Hello!";
        MyClass obj1(1),obj2(3);
        MyClass obj3;
        obj3=obj1;
        MyClass obj4=obj1;
        cout<<b<<endl;
        return 0;
    }
    
    
