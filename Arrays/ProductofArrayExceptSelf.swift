import Foundation

// Problem: Product of Array Except Self
// LeetCode #238
// Time Complexity: O(n)
// Space Complexity: O(1) extra space (excluding output array)

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var result = Array(repeating: 1, count: n)
        
        // Step 1: Prefix products
        var prefix = 1
        for i in 0..<n {
            result[i] = prefix
            prefix *= nums[i]
        }
        
        // Step 2: Suffix products
        var suffix = 1
        for i in stride(from: n - 1, through: 0, by: -1) {
            result[i] *= suffix
            suffix *= nums[i]
        }
        
        return result
    }
}

// Test Cases
let solution = Solution()

print(solution.productExceptSelf([1,2,3,4]))
// [24,12,8,6]

print(solution.productExceptSelf([-1,1,0,-3,3]))
// [0,0,9,0,0]
