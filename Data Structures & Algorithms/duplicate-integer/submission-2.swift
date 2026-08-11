class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
      
      if nums.count == Set(nums).count {
        return false
      }else {
        return true
      }

    }
}
