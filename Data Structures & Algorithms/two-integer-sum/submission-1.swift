class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hash:[Int:Int] = [:]

          for i in 0..<nums.count {

            if let index = hash[nums[i]] {
                return [index, i]
            }

            let remain = target - nums[i]
            

            hash[remain] = i
          }

          return []

    }
}
