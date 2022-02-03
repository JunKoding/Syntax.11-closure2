import Cocoa

// 스위프트 기초 문법 11. 매개변수로서 closure

// completion 이라는 closure를 매개변수로 가지는 매소드 정의
func sayHi(completion: () -> Void) {
    print("sayHi() called")
    sleep(2) // 2초 잠깐 멈추기
    completion()
}
// 메소드 호출부에서 이벤트 종료를 알 수 있음.
sayHi(completion: {
    print("2초가 지났다. 1")
})

//sayHi() called
//2초가 지났다. 1
sayHi(){
    print("2초가 지났다. 2")
}
//sayHi() called
//2초가 지났다. 2
sayHi {
    print("2초가 지났다. 3")
}
//sayHi() called
//2초가 지났다. 3


// 매개변수로서 데이터를 반환하는 closure
func sayHiWithName(completion: (String) -> Void) {
    print("sayHiWithName() called")
    sleep(2)
    // closure를 실행과 동시에 반환
    completion("오늘도 빡코딩 하고 계신가요??")
}
sayHiWithName(completion: { (comment: String) in
    print("2초뒤에 그가 말했다! comment: ", comment)
})
// sayHiWithName() called
// 2초뒤에 그가 말했다! comment:  오늘도 빡코딩 하고 계신가요??

sayHiWithName(completion: { (comment: String) in
    print("2초 뒤에 그가 말했다! comment: ", comment)
})
// sayHiWithName() called
// 2초뒤에 그가 말했다! comment:  오늘도 빡코딩 하고 계신가요??

sayHiWithName{ comment in
    print("2초 뒤에 그가 말했다! comment: ", comment)
}
// sayHiWithName() called
// 2초뒤에 그가 말했다! comment:  오늘도 빡코딩 하고 계신가요??

sayHiWithName{
    print("2초 뒤에 그가 말했다! comment: ", $0)
}
// sayHiWithName() called
// 2초뒤에 그가 말했다! comment:  오늘도 빡코딩 하고 계신가요??

