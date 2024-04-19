class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let uniqueNums = Set(nums)
        return nums.count != uniqueNums.count
    }
}