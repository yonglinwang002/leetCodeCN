//
//  Solution38.swift
//  leetCodeCN
//
//  Created by 王永林 on 2018/4/25.
//  Copyright © 2018年 gewara. All rights reserved.
//

import Foundation
class Solution38 {
    func countAndSay(_ n: Int) -> String {
        var say : String = ""
        for i  in 1...n
        {
            if  i == 1 {
                say = "1"
            }
            else
            {
                say = count(say)
            }
        }
        return say
    }
    
    func count(_ strNum : String) -> String {
        let charArray =  [Character](strNum);
        var currentChar = charArray[0];
        var result : String = ""
        var count = 0
        for char in charArray {
            if  char == currentChar {
                count += 1
            }
            else
            {
                result += "\(count)" + String(currentChar)
                currentChar = char;
                count = 1;
            }
        }
        result += "\(count)" + String(currentChar)
        
        return result;
    }
}
