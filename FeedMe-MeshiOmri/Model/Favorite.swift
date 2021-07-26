import Foundation

struct Favorite:Codable {
    var menuItems:[MenuItem]
    
    init(menuItems:[MenuItem]=[]){
        self.menuItems=menuItems
    }
    
}
