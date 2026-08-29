class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var answer:[Int] = []
       var hashMap: [Int: Int] = [:]

        for num in nums {
            hashMap[num, default: 0] += 1

        }

    var sortedArray = hashMap.sorted { $0.value > $1.value }
    
    for dict in sortedArray {
        answer.append(dict.key)
    }
    return Array(answer.prefix(k))


    }
}
