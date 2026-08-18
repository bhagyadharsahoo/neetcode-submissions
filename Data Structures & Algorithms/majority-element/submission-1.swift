class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0
        var element: Int?


        for ele in nums {
            if count == 0 {
                element = ele
                count = 1
            } else if count > 0 && element == ele {
                count += 1
            } else {
                count -= 1
            }
        }

        return element ?? 0


    }
}
