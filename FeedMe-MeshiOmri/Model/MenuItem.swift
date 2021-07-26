import Foundation

struct MenuItem: Codable {
    var id: Int
    var name: String
    var description: String
    var prepTime: String
    var category: String
    var imageURL: URL
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case prepTime
        case category
        case imageURL = "image_url"
    }
}

// The top key returned by API is called items
struct MenuItems: Codable {
    let items: [MenuItem]
}
