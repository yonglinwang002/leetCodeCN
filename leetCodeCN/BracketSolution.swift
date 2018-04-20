//
//  BracketSolution.swift
//  leetCodeCN
//
//  Created by 王永林 on 2018/4/19.
//  Copyright © 2018年 gewara. All rights reserved.
//

import Foundation

class BracketSolution {
    func isValid(_ s : String) -> Bool {
        if s.count == 0 {return true;}
        if s.count == 1 {return false;}

        let bracketArray = [Character]("{}()[]");
        
        let charArray =  [Character](s);
        var stackArray = [charArray[0]];
        for i in 1..<s.count
        {
            let lastChar = stackArray.last;
            if lastChar == nil
            {
                stackArray.append(charArray[i]);
                continue;
            }
            let stackLastIndex : Int? = bracketArray.index(of: lastChar!);
            let currentIndex : Int? = bracketArray.index(of: charArray[i]);
            
            if  (currentIndex == nil ) { continue;}
            
            let stackLastGroup =  stackLastIndex! / 2;
            let currentGroup = currentIndex! / 2;
            let stackLastType =  stackLastIndex! % 2;
            let currentType = currentIndex! % 2;
            
            if stackLastType == 0
            {
                if currentType == 1
                {
                    if stackLastGroup == currentGroup
                    {
                        stackArray.popLast();
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    stackArray.append(charArray[i]);
                }
            }
            else{
                return false;
            }
        }
        return stackArray.count == 0 ;
    }
    
    func Test()  {
        print(isValid("(){}"));
    }
}
