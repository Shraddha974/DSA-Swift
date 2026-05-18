import Foundation

// Problem: Group Anagrams
// LeetCode #49
// Time Complexity: O(n * k log k)
// n = number of strings, k = max string length
// Space Complexity: O(n * k)

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagramMap: [String: [String]] = [:]
        
        for str in strs {
            let sortedStr = String(str.sorted())
            anagramMap[sortedStr, default: []].append(str)
        }
        
        return Array(anagramMap.values)
    }
}

// Test Cases
let solution = Solution()
print(solution.groupAnagrams(["eat","tea","tan","ate","nat","bat"]))
// Possible Output: [["eat","tea","ate"],["tan","nat"],["bat"]]

print(solution.groupAnagrams([""]))
// [[""]]

print(solution.groupAnagrams(["a"]))
// [["a"]]
