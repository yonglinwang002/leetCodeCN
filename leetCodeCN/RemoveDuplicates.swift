//
//  RemoveDuplicates.swift
//  leetCodeCN
//
//  Created by 王永林 on 2018/4/20.
//  Copyright © 2018年 gewara. All rights reserved.
//

import Foundation

class RemoveDuplicatesSolution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count<=1 {return nums.count;}
        var index = 0;
        var count = 0;
        while  index < nums.count - 1 {
            if nums[index] != nums [index+1]
            {
                count += 1;
                nums[count] = nums [index+1];
            }
            index += 1;
        }

        return count + 1;
    }
}
