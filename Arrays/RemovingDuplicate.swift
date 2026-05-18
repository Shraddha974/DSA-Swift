
import Foundation

// Problem: Remove Duplicates from Sorted Array
// LeetCode #26
// Time Complexity: O(n)
// Space Complexity: O(1)

func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.isEmpty { return 0 }
    
    var left = 0
    
    for right in 1..<nums.count {
        if nums[right] != nums[left] {
            left += 1
            nums[left] = nums[right]
        }
    }
    
    return left + 1
}

// Test Cases
var nums1 = [1,1,2]
let k1 = removeDuplicates(&nums1)
print(k1)                    // 2
print(Array(nums1[0..<k1]))  // [1,2]

var nums2 = [0,0,1,1,1,2,2,3,3,4]
let k2 = removeDuplicates(&nums2)
print(k2)                    // 5
print(Array(nums2[0..<k2]))  // [0,1,2,3,4]
