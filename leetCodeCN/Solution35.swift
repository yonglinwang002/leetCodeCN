//
//  Solution35.swift
//  leetCodeCN
//
//  Created by 王永林 on 2018/4/25.
//  Copyright © 2018年 gewara. All rights reserved.
//

import Foundation

class Solution35 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for i in 0..<nums.count
        {
            if  nums[i] >= target
            {
                return i;
            }
        }
        return nums.count;
    }
}
