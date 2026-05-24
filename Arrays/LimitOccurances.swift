
class Solution {
    func limitOccurrences(_ arr: [Int], _ limit: Int) -> [Int] {
    var arr = arr
    //if arr.count <= limit { return [] }
    
    var index = limit
    
    for i in limit..<arr.count {
        
        if arr[i] != arr[index - limit] {
            arr[index] = arr[i]
            index += 1
        }
    }
    
    return Array(arr.prefix(index))
    }
}
