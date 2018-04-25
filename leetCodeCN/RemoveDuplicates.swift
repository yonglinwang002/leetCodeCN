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
    
    
    /// 给定一个数组 nums 和一个值 val，你需要原地移除所有数值等于 val 的元素，返回移除后数组的新长度。
    //不要使用额外的数组空间，你必须在原地修改输入数组并在使用 O(1) 额外空间的条件下完成。
    //元素的顺序可以改变。你不需要考虑数组中超出新长度后面的元素。
    ///
    /// - Parameters:
    ///   - nums: <#nums description#>
    ///   - val: <#val description#>
    /// - Returns: <#return value description#>
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var index = 0
        for i in 0..<nums.count {
            if nums[i] != val {
                if index != i
                {
                    nums[index] = nums[i]
                }
                index = index + 1
            }
        }
        
        return index
    }
    
}
