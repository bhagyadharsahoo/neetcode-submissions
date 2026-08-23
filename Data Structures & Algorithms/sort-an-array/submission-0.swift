class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
    let left = 0
    let right = nums.count - 1
    var nums = nums
    
    mergeSort(left: left, right: right, nums: &nums)
    
    return nums
    

}

func mergeSort(left: Int, right: Int, nums: inout [Int]) {
    if left >= right {
        return
    }
    
    var left = left
    var right = right
    var mid = (left + right) / 2
    
    mergeSort(left: left, right: mid, nums: &nums)
    mergeSort(left: mid + 1, right: right, nums: &nums)
    
    mergeInterval(left: left, mid: mid, right: right, nums: &nums)
    
}

func mergeInterval(left: Int,mid: Int, right: Int, nums: inout [Int]) {
    
    var i = left
    var j = mid + 1
    var temp:[Int] = []
    
    
    while i <= mid && j <= right {
        if nums[i] <= nums[j] {
            temp.append(nums[i])
            i += 1
        } else {
            temp.append(nums[j])
            j += 1
        }
       
    }
    
    while i <= mid {
        temp.append(nums[i])
        i += 1
    }
    
    while j <= right {
        temp.append(nums[j])
        j += 1
    }

    for index in 0..<temp.count {
        nums[left + index] = temp[index]
    }
 
}
}
