class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
         while true {
            if let index = nums.firstIndex(of: val) {
                nums.remove(at: index)
            } else {
                return nums.count
            }

        }

    }
}
