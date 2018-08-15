import FluentSQLite
import Vapor

/// A single entry of a Todo list.
final class Contact: SQLiteModel {
    var id: Int?
    var name: String
    var photo: String
    
    /// Creates a new `Contact`.
    init(id: Int? = nil, name: String, photo: String) {
        self.id = id
        self.name = name
        self.photo = photo
    }
}

/// Allows `Contact` to be used as a dynamic migration.
extension Contact: Migration { }

/// Allows `Contact` to be encoded to and decoded from HTTP messages.
extension Contact: Content { }

/// Allows `Contact` to be used as a dynamic parameter in route definitions.
extension Contact: Parameter { }
