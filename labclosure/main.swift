import Foundation

var loop : Bool = true;
var students = [String]()
var first = [String]()
var second = [String]()
var third = [String]()

func handle(array: [String], closure: (Int) -> Bool ) -> [String] {
    var returnStudent = [String]()
    for student in array {
        let year = student.suffix(4)
        let yearCheck = Int(year)!
        let validYear = 2021 - yearCheck
        if closure(validYear) {
            returnStudent.append(student)
        }
        /// / commit new 
    }
    return returnStudent
}

func checkYearFirst(year: Int) -> Bool {
    return year >= 18 && year < 26
}

func checkYearSecond(year: Int) -> Bool {
    return year >= 26 && year <= 35
}

func checkYearThird(year: Int) -> Bool {
    return year >= 36 && year <= 50
}


while (loop) {
    print("1 Add student",
          "\n2 Show all",
          "\n3 Exit\n4 Cool")
    let typed = readLine()!
    switch typed {
    case "1":
        print("Enter student date ")
        let date = readLine()!
        let year = date.suffix(4)
        let yearCheck = Int(year)!
        print(yearCheck)
        if (date.count == 10) {
            students.append(date)
        } else {
            print("Enter valid date")
        }
        break
    case "2":
        print("First category students are")
        first =  handle(array: students, closure: checkYearFirst)
        print(first.count)
        print("Second category students are")
        second =  handle(array: students, closure: checkYearSecond)
        print(second.count)
        print("Third category students are")
        third =  handle(array: students, closure: checkYearThird)
        print(third.count)
        break
    case "3":
        loop = false
        break
    default:
        print("Wrong choice")
        break
    }
}

