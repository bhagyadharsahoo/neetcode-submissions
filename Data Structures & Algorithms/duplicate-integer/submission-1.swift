class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
      var hash: [Int] = []

      for i in 0..<nums.count {
        if hash.contains(nums[i]) {
            return true
        }
        hash.append(nums[i])
      }
      return false

    }
}
