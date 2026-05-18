
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var n = nums.count-1
        var k = 0
        for i  in 0..<nums.count {
            if nums[i] != 0 {
                nums[k] = nums[i]
                k += 1
            }
        }
        for i in k..<nums.count {
            nums[i] = 0
        }
    }
}
