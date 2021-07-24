
import Foundation


struct User {

    let login: String
    let password: String
    let name : String
    let surname: String
    
    static func login(login:String, password: String) -> User? {
        if let user = database[login] {
            if user.password == password {
                return user
            }
        }
        return nil
    }
    
    static let database: Dictionary<String, User> = {
        
        var theDatabase = Dictionary<String, User>()
        for user in [
            User(login: "privet1@mail.ru", password: "Zdravstvui1", name : "Nikita", surname: "Sobolev"),
            User(login: "privet2@mail.ru", password: "Zdravstvui2",name : "Nastya", surname: "Tretyakova"),
            User(login: "privet3@mail.ru", password: "Zdravstvui3",name : "Sonya", surname: "Terenteva"),
            User(login: "privet4@mail.ru", password: "Zdravstvui4",name : "Daniil", surname: "Darenyi"),
            ] {
                theDatabase[user.login] = user
        }
       return theDatabase
    }()
    
}
