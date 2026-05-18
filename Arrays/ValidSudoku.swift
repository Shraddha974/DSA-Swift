import Foundation

// Problem: Valid Sudoku
// LeetCode #36
// Time Complexity: O(1) -> 9x9 board is fixed
// Space Complexity: O(1)

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        var rows = Array(repeating: Set<Character>(), count: 9)
        var cols = Array(repeating: Set<Character>(), count: 9)
        var boxes = Array(repeating: Set<Character>(), count: 9)
        
        for row in 0..<9 {
            for col in 0..<9 {
                
                let value = board[row][col]
                
                // Skip empty cells
                if value == "." {
                    continue
                }
                
                let boxIndex = (row / 3) * 3 + (col / 3)
                
                // Check duplicate in row, column, or box
                if rows[row].contains(value) ||
                    cols[col].contains(value) ||
                    boxes[boxIndex].contains(value) {
                    return false
                }
                
                // Insert value
                rows[row].insert(value)
                cols[col].insert(value)
                boxes[boxIndex].insert(value)
            }
        }
        
        return true
    }
}
