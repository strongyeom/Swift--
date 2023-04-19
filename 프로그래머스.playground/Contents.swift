import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    
    // 첫번째 name 과 yearning 값을 같게 한다.
    var emptyArray: [Int] = []
    for i in photo {
        // ["may", "kein", "kain", "radi"]
        var total = 0
        // 4
        for j in 0..<name.count {
            
            if i.contains(name[j]) {
                total += yearning[j]
            }
        }
        emptyArray.append(total)
        print(emptyArray)
    }
    return emptyArray
}
let result = solution(["may", "kein", "kain", "radi"], [5, 10, 1, 3], [["may"],["kein", "deny", "may"], ["kon", "coni"]])
print(result)


