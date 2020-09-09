import UIKit

/*
 컬렉션 타입
 Array - 순서가 있는 리스트 컬렉션 (인덱스 값이 있음)
 Dictionary - 키와 쌍으로 이루어진 컬렉션 (맵과 비슷)
 Set - 순서가 없고, 멤버가 유일한 컬렉션 (수학의 집합처럼 같은 값이 둘 이상 있을 수 없다)
 */

var integers: Array<Int> = Array<Int>() // 기본적 배열 생성 방법
integers.append(1) // 배열에 값을 넣어줌
integers.append(100)

integers.contains(100) // 배열에 해당하는 값이 들어있는지 확인
integers.contains(90)

integers.remove(at: 0) // 0번째 인덱스의 값을 없애달라는 키워드
integers.removeLast() // 마지막 멤버를 없애달라는 키워드
integers.removeAll()

integers.count

var doubles: Array<Double> = [Double]() // 배열 생성 축약 버전
var characters: Array<Character> = [] // 여기까지 축약할 수 있음

let immutable = [1, 2, 3] // let으로 설정하면 초기값을 설정후 값을 넣을수도, 뺄수도 없음
// immutable.append(1) // 오류 발생

//------------------------------------------------

var anyDictionary: Dictionary<String, Any> = Dictionary<String, Any>() // String 자리에 오는 것은 키의 타입이고, Any에 오는 것은 값의 타입
// 또한 배열과 동일하게 축약형 표현이 존재한다
// var anyDictionary2: Dictionary<String, Any> = [String: Any]() // 축약형

anyDictionary["JunBro"] = 24
anyDictionary["Thomas"] = "It's English name of Junbro"
anyDictionary

anyDictionary["Thomas"] = "His name"
anyDictionary

anyDictionary.removeValue(forKey: "Thomas") // 해당 키의 값을 지워줌
anyDictionary["JunBro"] = nil // nil을 할당해주면서 값을 없앨 수도 있음
anyDictionary

var anyDictionary2: Dictionary<String, Any> = [:] // 빈 딕셔너리 생성
let anyDictionary3: Dictionary<String, String> = ["name":"JunBro", "Age":"24", "Gender":"male"] // 마찬가지로 let이면 후에 변경 불가능

//-----------------------------------------------

var integerSet: Set<Int> = Set<Int>() // Set은 축약형이 없음
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(100)

integerSet //

integerSet.contains(1)
integerSet.remove(1)
integerSet.count

// Set은 두 집합의 합집합과 교집합, 차집합을 계산하는데 용이

let SetA: Set<Int> = [1,2,3,4,5]
let SetB: Set<Int> = [3,4,5,6,7]

let union: Set<Int> = SetA.union(SetB) // 합집합
let intersection: Set<Int> = SetA.intersection(SetB) // 교집합
let subtracting: Set<Int> = SetA.subtracting(SetB) // 차집합
let sortedUnion: [Int] = union.sorted() // 배열로 정렬돼서 변환



