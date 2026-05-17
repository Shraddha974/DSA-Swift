
import Foundation

// Problem: Contains Duplicate
// LeetCode #217
// Time Complexity: O(n)
// Space Complexity: O(n)

func containsDuplicate(_ nums: [Int]) -> Bool {
    var seen = Set<Int>()
    
    for num in nums {
        if seen.contains(num) {
            return true
        }
        seen.insert(num)
    }
    
    return false
}

// Test Cases
print(containsDuplicate([1,2,3,1]))   // true
print(containsDuplicate([1,2,3,4]))   // false
print(containsDuplicate([1,1,1,3]))   // true
