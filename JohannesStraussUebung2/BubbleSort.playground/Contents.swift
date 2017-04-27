	//: Playground - noun: a place where people can play

import UIKit

    var intArray = [4,1,7,0,9,3,5,2,8,6]

func bubbleSort(array: [Int] ) -> [Int]{

    var result = array
    var n = result.count
    
    while n > 1 {
        var i = 0
        while i < n-1 {
            if result[i] > result[i+1] {
                result = swap(array : result, a : i)
            }
            i = i+1
        }
        n = n-1
    }
   return result
}

func swap(array: [Int], a: Int) -> [Int] {
    
    let b = a+1
    var result = array
    let tmp = array[a]
    result[a] = array[b]
    result[b] = tmp
    return result
}

    let sortedArray = bubbleSort(array : intArray)
    
    for i in sortedArray {
        print(i)
    }
