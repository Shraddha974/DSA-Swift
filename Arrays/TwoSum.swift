import Foundation

// Problem: Two Sum
// Time Complexity: O(n)
// Space Complexity: O(n)

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map = [Int: Int]()
    
    for (index, num) in nums.enumerated() {
        let complement = target - num
        
        if let foundIndex = map[complement] {
            return [foundIndex, index]
        }
        
        map[num] = index
    }
    
    return []
}

print(twoSum([2, 7, 11, 15], 9))
