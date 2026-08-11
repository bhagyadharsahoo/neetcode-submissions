class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

        if s.count != t.count {
            return false
        }

        var charHash: [Character] = []

        for char in s {
            charHash.append(char)
        }

        for char in t {
            if let index = charHash.firstIndex(of: char) {
                charHash.remove(at: index) 
            } 
        }

        return charHash.isEmpty
     
    }
}
