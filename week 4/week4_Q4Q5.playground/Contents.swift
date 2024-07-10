import UIKit

// 4.
func printPyramid(rows: Int) {
    for i in 0...rows - 1 {
        let space = String(repeating: " ", count: rows - i - 1)
        let star = String(repeating: "*", count: 2 * i + 1)
        print(space + star)
    }
}

// 5. 準備法律類科國家考試的筆記app，統整法條更新和考試熱點並能自定義進行分類
