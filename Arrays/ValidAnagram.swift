// Problem: Valid Anagram
// LeetCode #242
// Time Complexity: O(n)
// Space Complexity: O(1) for fixed alphabet (26 lowercase letters)
// O(n) in general character set

    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }
        
        var count: [Character: Int] = [:]
        
        for char in s {
            count[char, default: 0] += 1
        }
        
        for char in t {
            if count[char] == nil || count[char]! == 0 {
                return false
            }
            count[char]! -= 1
        }
        
        return true
    }


print(isAnagram("anagram", "nagaram")) // true
print(isAnagram("rat", "car"))         // false
print(isAnagram("listen", "silent"))   // true
