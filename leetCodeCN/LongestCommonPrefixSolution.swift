//
//  LongestCommonPrefixSolution.swift
//  leetCodeCN
//
//  Created by 王永林 on 2018/4/19.
//  Copyright © 2018年 gewara. All rights reserved.
//

import Foundation
class LongestCommonPrefixSolution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else {
            return ""
        }
        var res = [Character](strs[0])
        
        for j in 1..<strs.count {
            let str =  strs[j];
            var strContent = [Character](str)
            
            if res.count > strContent.count {
                res = Array(res[0..<strContent.count])
            }
            for i in 0..<res.count {
                if res[i] != strContent[i] {
                    res = Array(res[0..<i])
                    break
                }
            }
        }
        return String(res)
    }
}


//print(LongestCommonPrefixSolution.init().longestCommonPrefix(["abc","abc","abc"]));

//func longestCommonPrefix(_ strs: [String]) -> String {
//
//    if strs.count <= 0 {
//        return "";
//    }
//
//    if strs.count == 1 {
//        return strs[0];
//    }
//    var isEnd = false;
//    var index = 0;
//    var subPre : String = String.init("");
//    while !isEnd {
//
//        var currentChar : Character = Character.init(" ");
//        var newChar : Bool = true ;
//        for signleString in strs
//        {
//            if index >= signleString.count
//            {
//                isEnd = true;
//                break;
//            }
//
//            var charArray = Array(signleString);
//
//            let char = charArray[index];
//            if(newChar)
//            {
//                currentChar = char;
//                newChar = false;
//            }
//            else if(currentChar != char)
//            {
//                isEnd = true;
//                break;
//            }
//        }
//        if !isEnd
//        {
//            subPre.append(currentChar);
//            newChar = true ;
//            index += 1;
//        }
//    }
//    return subPre;
//}
//print (longestCommonPrefix(["abc"]));
