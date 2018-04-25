//
//  Solution28.swift
//  leetCodeCN
//
//  Created by 王永林 on 2018/4/25.
//  Copyright © 2018年 gewara. All rights reserved.
//

import Foundation

//实现 strStr() 函数。
//
//给定一个 haystack 字符串和一个 needle 字符串，在 haystack 字符串中找出 needle 字符串出现的第一个位置 (从0开始)。如果不存在，则返回  -1。

class Solution28 {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.count == 0 {return 0};
        
        if needle.count > haystack.count {
            return -1;
        }
        let hCharArray = [Character](haystack);
        let nCharArray = [Character](needle);
        for i in 0...(haystack.count -  needle.count) {
            var found = true;
            for j in 0..<nCharArray.count
            {
                if  nCharArray[j] != hCharArray[i+j]
                {
                    found = false;
                    break;
                }
            }
            
            if  found
            {
                return i;
            }
        }
        return -1;
    }
}
