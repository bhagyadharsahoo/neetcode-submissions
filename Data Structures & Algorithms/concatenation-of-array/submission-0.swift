class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {

        var ans:[Int] = []
        for i in 0..<2 {
            ans.append(contentsOf:nums)
        }

        return ans


    }
}
