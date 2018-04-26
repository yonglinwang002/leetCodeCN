//
//  Solution53.swift
//  leetCodeCN
//
//  Created by 王永林 on 2018/4/25.
//  Copyright © 2018年 gewara. All rights reserved.
//

import Foundation

class Solution53 {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0;
        }
        print(nums)
        var tempMaxValue =  nums[0]
        var maxValue =  nums[0]
        
        
        for i in 1..<nums.count {
            tempMaxValue =  max( nums[i], nums[i]+tempMaxValue)
            print("tempMaxValue \(tempMaxValue)")
            maxValue = max(maxValue,tempMaxValue)
        }
        return maxValue;
    }

}
