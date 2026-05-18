import Foundation

// Problem: Reverse String
// LeetCode #344
// Time Complexity: O(n)
// Space Complexity: O(1)

func reverseString(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1
    
    while left < right {
        s.swapAt(left, right)
        left += 1
        right -= 1
    }
}

// Test Cases
var str1: [Character] = ["h","e","l","l","o"]
reverseString(&str1)
print(str1) // ["o","l","l","e","h"]

var str2: [Character] = ["H","a","n","n","a","h"]
reverseString(&str2)
print(str2) // ["h","a","n","n","a","H"]
