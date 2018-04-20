//
//  RomaToInt.swift
//  leetCodeCN
//
//  Created by 王永林 on 2018/4/19.
//  Copyright © 2018年 gewara. All rights reserved.
//

import Foundation

class Solution {
    public func romanToInt(_ s: String) -> Int {
        var result = 0 ;
        
        let characters = Array(s);
        var index : Int = 0;
        while index < characters.count {
            let char =  characters [index];
            var nextChar : Character = Character.init(" ");
            if(index<characters.count-1){
                nextChar = characters [index+1];
            }
            print(char);
            
            switch (char) {
            case "I":
                if nextChar == " "
                {
                    result += 1;
                }
                else
                {
                    if nextChar == "V"
                    {
                        result += 4;
                        index += 1;
                    }
                    else if nextChar == "X"
                    {
                        result += 9;
                        index += 1;
                    }
                    else
                    {
                        result += 1;
                    }
                }
                break;
            case "V":
                result += 5;
                break;
            case "X":
                if nextChar == " "
                {
                    result += 10;
                }
                else
                {
                    if nextChar == "L"
                    {
                        result += 40;
                        index += 1;
                    }
                    else if nextChar == "C"
                    {
                        result += 90;
                        index += 1;
                    }
                    else
                    {
                        result += 10;
                    }
                }
                break;
            case "L":
                result += 50;
                break;
            case "C":
                if nextChar == " "
                {
                    result += 100;
                }
                else
                {
                    if nextChar == "D"
                    {
                        result += 400;
                        index += 1;
                    }
                    else if nextChar == "M"
                    {
                        result += 900;
                        index += 1;
                    }
                    else
                    {
                        result += 100;
                    }
                }
                break;
            case "D":
                result += 500;
                break;
            case "M":
                result += 1000;
                break;
            default:
                break;
            }
            index += 1;
        }
        return result;
    }
}



//let s : Solution = Solution.init();
//var i=s.romanToInt("IIMD");
//print("结果：\(i)" );

