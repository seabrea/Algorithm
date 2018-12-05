import UIKit

/// Fibonacci数列
func fibonacci (num: Int) -> Int {
    if(num >= 2) {
        return fibonacci(num: num - 1) + fibonacci(num: num - 2)
    }
    else {
        return num
    }
}

print("######### 结果: #########")
print(fibonacci(num: 1),fibonacci(num: 2),fibonacci(num: 3),fibonacci(num: 4),fibonacci(num: 5),fibonacci(num: 6),fibonacci(num: 7),fibonacci(num: 8),fibonacci(num: 9),fibonacci(num: 10))

