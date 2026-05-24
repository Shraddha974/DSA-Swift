
class Solution {
    var res = 0
    func passwordStrength(_ password: String) -> Int {
        var setChar = Set(password)


        for val in setChar {
          if ("a"..."z").contains(val){
                res += 1
            } else if ("A"..."Z").contains(val) {
              res += 2
            } else if ("0"..."9").contains(val) {
              res += 3
            } else {
              res += 5
            }
        }

        return res
    }
}
