import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    
    // 가장 큰수부터 k번째 까지 끊기
    
    var result: [Int] = []
    var emptyArray: [Int] = []
    for i in 0..<score.count {
        
       emptyArray.append(score[i])
        emptyArray.sort()
        print(emptyArray)
        
        if emptyArray.count > k {
            emptyArray.removeFirst()
            print("emptyArray.remove",emptyArray)
        }
        
        if let number = emptyArray.first {
            print("number:",number)
            result.append(number)
            print("Result:",result)
        }
       
    }
    return result
}
let result = solution(3, [10, 100, 20, 150, 1, 100, 200])
print(result)


