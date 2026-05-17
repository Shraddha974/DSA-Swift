import Foundation

// Problem: Top K Frequent Elements
// LeetCode #347
// Time Complexity: O(n)
// Space Complexity: O(n)

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    // Step 1: Frequency map
    var frequencyMap: [Int: Int] = [:]
    
    for num in nums {
        frequencyMap[num, default: 0] += 1
    }
    
    // Step 2: Bucket sort (index = frequency)
    var buckets = Array(repeating: [Int](), count: nums.count + 1)
    
    for (num, freq) in frequencyMap {
        buckets[freq].append(num)
    }
    
    // Step 3: Collect top k from highest frequency
    var result: [Int] = []
    
    for freq in stride(from: buckets.count - 1, through: 0, by: -1) {
        for num in buckets[freq] {
            result.append(num)
            
            if result.count == k {
                return result
            }
        }
    }
    
    return result
}

// Test Cases
print(topKFrequent([1,1,1,2,2,3], 2))   // [1,2]
print(topKFrequent([1], 1))             // [1]
print(topKFrequent([4,4,4,6,6,7], 1))   // [4]
