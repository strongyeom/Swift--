import Foundation

func solution(_ babbling:[String]) -> Int {
    //같은 발음을 연속해서 할 수 없다.
    var result = [String]()
    
    var count = 0
    
    //사용 가능한 단어를 숫자로 변환 // ["aya", "yee", "u", "maa"]
    for babble in babbling {
        result.append(
            babble.replacingOccurrences(of: "aya", with: "1")
                .replacingOccurrences(of: "ye", with: "2")
                .replacingOccurrences(of: "woo", with: "3")
                .replacingOccurrences(of: "ma", with: "4")
        )
        print(result)
    }
    
    //하나의 요소씩 접근하며 숫자로만 이루어진 요소만 검사해서
    for now in result{
        if let replacing = Int(now){
            // 연속된 숫자를 포함하고 있지 않다면 1 증가
            // 연속해서 발음 할때를 제외시키기 위해서 "11" 설정
            if !String(replacing).contains("11") && !String(replacing).contains("22") && !String(replacing).contains("33") && !String(replacing).contains("44"){
                count += 1
            }
        }
    }
    return count
}

let result = solution(["aya", "yee", "u", "maa"])
print(result)

var cc = ""
var ce = "12"
var ceq = cc + ce
print(ceq)

/*
 다른 풀이
 func solution(_ babbling:[String]) -> Int {
     var answer = 0
     for bab in babbling {
         var prons = ["aya", "ye", "woo", "ma"]
         var used: [String] = []
         var block = ""
         for b in bab {
             block = block + String(b)
             //print("block: \(block)" )
             if prons.contains(block) && used.last != block {
                 used.append(block)
                 block = ""
             }
             //print("prons: \(prons)"  )

         }
         if block == "" {
             answer = answer + 1
         }
     }

     return answer

 }
 */
