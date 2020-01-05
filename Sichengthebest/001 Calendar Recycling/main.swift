//  let date = ask("Date")
let date = ask("Date")
let dateInt = Int(date) ?? 0
var answer = 0
var days = 0
var monthDays = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
if dateInt  < 0 || dateInt  > 50000000 {
    show("NO!")
}else{
    let y = Int((dateInt )/10000)
    let m = Int((dateInt - y * 10000)/100)
    let d = Int(dateInt - y*10000 - m*100)
    var month = m
    var bissextile = y%4
    var bissextileAgain = y%100
    var bissextileNo3 = y%400
    if bissextile == 0 && bissextileAgain > 0 {
        monthDays[2] += 1
    } else if bissextileAgain == 0 && bissextileNo3 == 0 {
        monthDays[2] += 1
    }
    if m > 12 {
        show("NO!")
    } else {
        if m == 0 {
            show("NO!")
        } else {
            if d > monthDays[m] {
                show("NO!")
            }else{
                show("Year: " + String(y))
                show("Month: " + String(m))
                show("Day: " + String(d))
                for i in 1 ... month {
                    month -= 1
                    days += monthDays[month]
                }
                days += d
                show(String(days) + "th day of the year " + String(y) + "!")
            }
        }
    }
}
