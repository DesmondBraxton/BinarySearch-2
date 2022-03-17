import UIKit

var nums = [-1,0,3,5,9,12]
var target = 9
    
func binarySearch(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count
    while low < high { // while loop runs O(log n) times e.g will be 4 times, worst case target is the last of 16 elements
        let middleIndex = low + (high - low) / 2
        if nums[middleIndex] == target {
            return middleIndex
        } else if nums[middleIndex] > target { // go left
            high = middleIndex
        } else { // go right
            low = middleIndex + 1
        }
    }
    return -1
}
print(binarySearch([-1,0,3,5,9,12], 9))
