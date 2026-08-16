class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
          var hash:[String:[String]] = [:]

     for str in strs {
       let sortedStr = String(str.sorted())

         if let  _ = hash[sortedStr] {
             hash[sortedStr]?.append(str)
         } else {
             hash[sortedStr] = [str]
         }
     }

    var ans: [[String]] = []
    
    for val in hash.values {
        ans.append(val)
    }
    
    return ans


    }
}
