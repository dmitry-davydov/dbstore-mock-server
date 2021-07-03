import Vapor

func routes(_ app: Application) throws {
    
    let userGroup = app.grouped("user")
    
    let userController = UserController()
    
    userGroup.post("create", use: userController.create)
    userGroup.post("update", use: userController.update)
    userGroup.post("auth", use: userController.auth)
    userGroup.post("logout", use: userController.logout)
    
    let productController = ProductController()
    let productsGroup = app.grouped("product")
    productsGroup.post("all", use: productController.all)
    productsGroup.post("one", use: productController.one)
    
    let productReviewController = ProductReviewController()
    
    app.get("reviews", use: productReviewController.getList)
    app.post("reviews", use: productReviewController.create)
    app.post("reviews", "approve", use: productReviewController.approve)
    app.delete("reviews", use: productReviewController.delete)
}
