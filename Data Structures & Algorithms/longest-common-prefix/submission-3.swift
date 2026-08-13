class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {

        let firstWord = Array(strs[0])
        var ans = ""

        for i in 0..<firstWord.count {
            let selctedChar = firstWord[i]

            for word in strs {
                let wordArr = Array(word)

                if i >= wordArr.count || wordArr[i] != selctedChar{
                    return ans
                }
            }

            ans.append(selctedChar)
        }
        return ans

    }
}
