
import Foundation

// Problem: Best Time to Buy and Sell Stock
// LeetCode #121
// Time Complexity: O(n)
// Space Complexity: O(1)

func maxProfit(_ prices: [Int]) -> Int {
    var minPrice = Int.max
    var maxProfit = 0
    
    for price in prices {
        // Buy at lowest price
        if price < minPrice {
            minPrice = price
        }
        
        // Sell today and check profit
        let profit = price - minPrice
        maxProfit = max(maxProfit, profit)
    }
    
    return maxProfit
}

// Test Cases
print(maxProfit([7,1,5,3,6,4])) // 5
print(maxProfit([7,6,4,3,1]))   // 0
