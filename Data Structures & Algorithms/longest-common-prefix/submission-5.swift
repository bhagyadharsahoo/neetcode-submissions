class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
          guard var firstStr = strs.first, !firstStr.isEmpty else {
               return ""
        }
    
    for str in strs.dropFirst() {
        
        while !str.hasPrefix(firstStr) {
           firstStr.removeLast()
           
           if firstStr.isEmpty {
             return ""
           }
        }
        
    }
    
    return firstStr

    }
}
