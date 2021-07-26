import UIKit
import Firebase

class MenuController{
    
    static let shared = MenuController()
    var fave=Favorite();
    
    func fetchCategories(completion: @escaping ([String]?) -> Void) {
            completion(LocalData.categories)
            return
    }
    
    func fetchMenuItems(categoryName: String = "", completion: @escaping([MenuItem]?) -> Void) {
            completion(LocalData.menuItems.filter { $0.category == categoryName || categoryName.isEmpty })
            return
    }

    func fetchImage(url: URL, completion: @escaping (UIImage?) -> Void) {
            completion(UIImage(named: url.relativeString))
            return
    }
}
