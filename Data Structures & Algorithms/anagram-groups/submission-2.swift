class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
  var hash:[String:[String]] = [:]

     for str in strs {
       let sortedStr = String(str.sorted())

         hash[sortedStr, default: []].append(str)
     }

   return Array(hash.values)
    }
}
