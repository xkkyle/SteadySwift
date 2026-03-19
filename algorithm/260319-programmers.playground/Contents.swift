import Foundation

// 1. 나머지가 1이 되는 수 찾기

func solution1(_ n:Int) -> Int {
    var result: [Int] = []
    
    for x in 1...n {
        if n % x != 1 { continue }
        
        result.append(x)
    }
    
    
    return result[0]
}

func solution1_1(_ n: Int) -> Int {
    
    guard let result = ((1...n).filter { n % $0 == 1 }.min()) else {
        return 1
    }
    
    return result
    
}

print(solution1(10)) // 3
print(solution1(12)) // 11


// 2. 문자열을 정수로 바꾸기
/**
 제한 조건
 - s의 길이는 1 이상 5이하입니다.
 - s의 맨앞에는 부호(+, -)가 올 수 있습니다.
 - s는 부호와 숫자로만 이루어져있습니다.
 - s는 "0"으로 시작하지 않습니다.
 */

func solution2(_ s:String) -> Int {
     guard let num = Int(s) else { return 0 }
    return num
}

print(solution2("1234"))
print(solution2("-1234"))


// 3. 약수의 합

func solution3(_ n:Int) -> Int {
    // 예외 - n=0 이면 약수가 없으므로 에러
    guard n >= 1 else { return 0 }
    return (1...n).filter { n % $0 == 0 }.reduce(0, +)
}


print(solution3(12)) // 28
print(solution3(5)) // 6
