class Solution {
    func majorityElement(_ nums: [Int]) -> Int {

        var numberHash:[Int: Int] = [:]
        let arrCount = nums.count

        for ele in nums {
            numberHash[ele, default: 0] += 1
        }

        for (number , value) in numberHash {

            if value > (arrCount/2) {
                return number
            }

        }

        return 0

    }
}
