//
//  MergeTwoLists.swift
//  leetCodeCN
//
//  Created by 王永林 on 2018/4/20.
//  Copyright © 2018年 gewara. All rights reserved.
//

import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public func printList () {
        if self == nil {
            return;
        }
        
        var lastNode =  self.next;
        var printString = "";
        printString.append(String(self.val));
        while lastNode != nil {
            printString.append("->\(lastNode!.val)");
            lastNode = lastNode!.next;
        }
        print(printString);
    }
}

class MergeTwoListsSolution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1;
        var list2 = l2;
        var newListNode : ListNode? = nil;
        var currentListNode : ListNode? = nil;
        while list1 != nil && list2 != nil  {
        
            var isOne : Bool = true;
            
            if  list1!.val < list2!.val
            {
                isOne = true;
            }
            else
            {
                isOne = false;
            }
            
            if newListNode == nil
            {
                newListNode = isOne ? list1 : list2;
                currentListNode = newListNode;
            }
            else
            {
                currentListNode!.next = isOne ? list1 : list2;
                currentListNode = currentListNode!.next;
            }
            if isOne {
                 list1 = list1!.next;
            }
            else
            {
                 list2 = list2!.next;
            }
        }

        if newListNode == nil  {
            if list1 != nil {newListNode = list1;}
            if list2 != nil {newListNode = list2;}
        }
        else
        {
            if list1 != nil {currentListNode!.next = list1;}
            if list2 != nil {currentListNode!.next = list2;}
        }
        
        return newListNode;
        
    }
    
    
    func test()  {
        let l1 =  ListNode.init(1);
        l1.next = ListNode.init(2);
        l1.next?.next = ListNode.init(3);
        
        l1.printList();
        
        let l2 =  ListNode.init(1);
        l2.next = ListNode.init(4);
        l2.next?.next = ListNode.init(5);
        l2.printList();
        
        let l3 = mergeTwoLists(l1, l2);
        l3?.printList();
    }
}

