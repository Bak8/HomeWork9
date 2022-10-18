import Foundation


//1. Создать класс Человек с параметрами Имя, Фамилия, Возраст
//Создать класс Работник, который будет наследоваться от класса Человек, но будет иметь дополнительные параметры: Место работы, должность
//Создать класс Инвестор, наследуемый от класса Работник, но будет иметь дополнительные параметры: Количество инвестиций
//В каждом классе по-своему реализовать функцию "Приветствие"


class Human {
    var name: String = ""
    var surname: String = ""
    var age: Int = 0
    
    init(name:String , surname:String , age:Int){
        self.name = name
        self.surname = surname
        self.age = age
    }
    func greeting (){
        var greeting1 = "Привет"
        print ("\(self.name) передает \(greeting1.uppercased())!")
    }
}


class Worker: Human {
    var jobLocation: String = ""
    var jobTittle: String = ""
    
    init(name:String , surname:String , age:Int , jobLocation:String , jobTittle:String) {
        
        self.jobLocation = jobLocation
        self.jobTittle = jobTittle
        super .init(name: name, surname: surname, age: age)
    }
    func greeting2 () {
        var greeting2 = "Добрый день"
        print("\(self.name) передает \(greeting2.uppercased())!")
    }
}


class Investor:Worker{
    var investAmount: Int = 0
    
    init(name: String, surname: String, age: Int, jobLocation: String, jobTittle: String, investAmount: Int) {
        
        self.investAmount = investAmount
        super.init(name: name, surname: surname, age: age, jobLocation: jobLocation, jobTittle: jobTittle)
    }
    func greeting3 () {
        var greeting3 = "ciao"
        print("\(self.name) передает \(greeting3.uppercased())!")
    }
}

var human = Human(name: "Адам", surname: "Человеков", age: 43)
human.greeting()

var worker1 = Worker(name: "Воркер", surname: "Сильный", age: 23, jobLocation: "Бишкек", jobTittle: "Директор")
worker1.greeting2()

var investor1 = Investor(name: "Джордан", surname: "Бэлфорт", age: 51, jobLocation: "Нью-Йорк", jobTittle: "Инвестор", investAmount: 1000000)
investor1.greeting3()

print("")

//#2. Создать класс Магазин
//Параметры: Название, Площадь, Расположение, Часы работы
//После чего путём наследования создать следующие классы: Магазин автозапчастей, Магазин одежды и заполнить их соответствующими параметрами
//
//Так же в конце должна быть функция, которая будет отображать следующую информацию:
//
//Название магазина. Площадь.
//Расположение. Часы работы.
//
//Наименование товара. Кол-во товара. Цена товара

class Shop {
    var name: String = ""
    var area: Double = 0.0
    var location: String = ""
    var workTime: String = ""
    
    init(name:String, area:Double, location:String, worktime:String){
        self.name = name
        self.area = area
        self.location = location
        self.workTime = worktime
    }
    func shopInfo() {
        print("Наш магазин '\(name)' c влощадью \(area)кв2 открыт для вас \(workTime) по улице \(location)")
    }
}

class Tuningshop : Shop {
    var wheels: String = ""
    var suspension: String = ""
    var turbos: String = ""
    
    init(name: String, area: Double, location: String, worktime: String, wheels:String, suspension:String, turbos:String) {
        self.wheels = wheels
        self.suspension = suspension
        self.turbos = turbos
        
        super .init(name: name, area: area, location: location, worktime: worktime)
    }
    func tunungInfo() {
        print("Наш магазин '\(name)' c площадью \(area)кв2 открыт для вас \(workTime) по улице \(location)\nу нас вы можете найти диски:\(wheels),\nПодвеску: \(suspension),\nТурбины: \(turbos)")
    }
}

class ClothShop : Shop {
    var brands: String = ""
    var size: String = ""
    var discount: Double = 0.0
    
    init(name:String, area:Double, location:String, worktime:String, brands:String, size:String, discount:Double) {
        self.brands = brands
        self.size = size
        self.discount = discount
        super .init(name: name, area: area, location: location, worktime: worktime)
    }
    func clothInfo() {
        print("Наш магазин '\(name)' c площадью \(area)кв2 открыт для вас \(workTime) по улице \(location)\nу нас вы можете найти вещи этих брендов:\(brands) c размерами \(size) со скидкой \(discount)%")
    }
}

var shop1 = Shop(name: "Globus", area: 5000 , location: "Магистраль 43", worktime: "24/7")
shop1.shopInfo()
print("")
var tuningshop1 = Tuningshop(name: "Summit", area: 1000, location: "Логвиненко 23/2", worktime: "С 9:00 до 18:00", wheels: "HRE, BBS, AMG, MANSORY", suspension: "H&K, BILLSTAIN", turbos: "GARRETT, BORG WANRNER")
tuningshop1.tunungInfo()
print("")
var clothshop1 = ClothShop(name: "Ambassador", area: 500, location: "Bishkek-Park", worktime: "С 9:00 до 18:00", brands: "ZARA | GUCCI | HUGO BOSS | LACOSTE ", size: "XS - XXL" , discount: 25)
clothshop1.clothInfo()
