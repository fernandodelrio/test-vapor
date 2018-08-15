import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    let contactController = ContactController()
    router.post("contacts", use: contactController.post)
    router.get("contacts", use: contactController.get)
}
