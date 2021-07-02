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
    productsGroup.get(":productId", "reviews", use: productReviewController.getList)
    productsGroup.post(":productId", "reviews", use: productReviewController.create)
    productsGroup.post(":productId", "reviews", "approve", use: productReviewController.approve)
    productsGroup.delete(":productId", "reviews", use: productReviewController.delete)
}
