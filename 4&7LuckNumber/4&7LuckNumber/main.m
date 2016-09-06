//
//  main.m
//  4&7
//
//  Created by ccit on 16/9/5.
//  Copyright © 2016年 ccit. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int n = 1001, j= 0, i = 0;
        int sum = 0;
        printf("请输入想要的幸运数的序号：");
        scanf("%d", &n);
        for(i = 1; i < n; i++)
        {
            int t= 1;
            for (j = 0; j < i; j++) {
                t *= 2;
            }
            sum += t;
            if (sum >= n) {
                printf("i:%d\n", i);
                break;
            }
        }
        
        sum = 0;
        int sum1 = 0;
        int t= 1;
        for (int loop = 0; loop < i; loop++) {
            t *= 2;
            if (0 != loop) {
                sum += t>>1;
            }
            sum1 += t;
        }
        //        printf("sum:%d\n", sum);
        //        printf("sum1:%d\n", sum1);
        
        unsigned char tmp[60] = {0};
        if (1 == n-sum) {
            memset(tmp, 0x34, i);
            printf("%dth luck num:%s\n", n, tmp);
            return 0;
        }
        if (n == sum1) {
            memset(tmp, 0x37, i);
            printf("%dth luck num:%s\n", n, tmp);
            return 0;
        }
        
        printf("%dth luck num:", n);
        for (int loop = i; loop > 0; loop--) {
            n = n - sum ;
            if(n<= (sum1- sum)/2)
            {
                tmp[i-loop] = 0x34;
                sum1 = (sum1-sum)/2;
                sum = 0 ;
                
            }else
            {
                tmp[i-loop] = 0x37;
                sum = (sum1-sum)/2;
                n = n-sum;
                sum1 = sum;
                sum = 0;
            }
            
        }
        printf("%s\n", tmp);
    }
    return 0;
}