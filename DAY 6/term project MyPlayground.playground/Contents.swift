//: Playground - noun: a place where people can play



import UIKit

class User{
    var userID : String?
    var password : String?
    var logInStatus : String?
    
    //initializer
    init(){
        self.userID = ""
        self.password = ""
        self.logInStatus = ""
    }
    
    //parameterized initializer
    init(u_Id: String, u_pwd: String, u_loginstatus: String){
        self.userID = u_Id
        self.password = u_pwd
        self.logInStatus = u_loginstatus
    }
    func verifyLogin(){
    }
}
class Administrator: User{
    
    var adminname: String?
    
    
    
    //initializer
    
    override init() {
        
        super.init()
        
        self.adminname = ""
        
    }
    
    //parameterized initializer
    
    init(u_Id: String,adminname: String) {
        
        super.init()
        
        self.adminname = adminname
        
    }
    
    func updateCatalog()
        
    {
        
        
        
    }
    
}









//customer

class Customer: User{
    
    var customerId: Int?
    
    var customerName: String?
    
    var address: String?
    
    var creditCardInfo: Int?
    
    var shippingInfo: String?
    
    
    
    //initializer
    
    override init(){
        
        super.init()
        
        self.customerId=0
        
        self.customerName = ""
        
        self.address=""
        
        self.creditCardInfo=0
        
        self.shippingInfo=""
        
    }
    
    //parameterized initializer
    
    init(u_Id: String,c_Id: Int,c_name: String,c_address: String,c_creditCardInfo: Int,c_shippingInfo: String)
        
    {
        
        super.init()
        
        self.customerId = c_Id
        
        self.customerName = c_name
        
        self.address = c_address
        
        self.creditCardInfo = c_creditCardInfo
        
        self.shippingInfo = c_shippingInfo
        
    }
    
    
    
    func register()
        
    {
        
        
        
    }
    
    func login()
        
    {
        
        
        
    }
    
    func update_profile()
        
    {
        
        
        
    }
    
    
    
}



//inheriting from customer class

class shopping_cart : Customer{
    
    var cardId: Int?
    
    var productId: Int?
    
    var quantity: Int?
    
    var dateAdded: Int?
    
    
    
    //default initializer
    
    override init(){
        
        super.init()
        
        self.cardId = 0
        
        self.productId = 0
        
        self.quantity = 0
        
        self.cardId = 0
        
        
        
    }
    
    
    
    //parameterized initializer of subclass shopping_cart
    
    init(c_Id: Int,c_name: String,c_address: String,c_creditCardInfo: Int,c_shippingInfo: String,s_cardId: Int,s_productId: Int,s_quantity: Int,s_dateAdded: Int){
        
        super.init()
        
        self.cardId = s_cardId
        
        self.productId = s_productId
        
        self.quantity = s_quantity
        
        self.dateAdded = s_dateAdded
        
    }
    
    
    
    func addCartItem(){
        
        
        
    }
    
    
    
    func updateQuantity(){
        
        
        
    }
    
    
    
    func viewCartDetails(){
        
        
        
    }
    
    
    
    func checkOut(){
        
        
        
    }
    
    
    
}



//inheriting class order from customer class

class Order : Customer{
    
    var oderId: Int?
    
    var dateCreated: String?
    
    var dateShipped: String?
    
    var status: String?
    
    var shippingId: String?
    
    
    
    
    
    //default initializer
    
    override init() {
        
        super.init()
        
        self.oderId = 0
        
        self.dateCreated = ""
        
        self.dateShipped = ""
        
        self.status = ""
        
        self.shippingId = ""
        
    }
    
    
    
    //parameterized initializer
    
    init(c_Id: Int,c_name: String,o_orderId: Int,o_dateCreated: String,o_dateShipped: String,o_status: String,o_shippingId: String)
        
    {
        
        super.init()
        
        self.oderId = o_orderId
        
        self.dateCreated = o_dateCreated
        
        self.dateShipped = o_dateShipped
        
        self.status = o_status
        
        self.shippingId = o_shippingId
        
        
        
    }
    
    
    
    func placeorder(){
        
        
        
    }
    
}



//inheriting class shipping_info from Order class

class ShippingInfo: Order{
    
    
    
    var shippingType : String?
    
    var shippingCost : Int?
    
    // var shippingRegion : String? ///////new var///
    
    var shippingRegionID : Int?
    
    
    
    //intializer
    
    override init(){
        
        super.init()
        
        self.shippingType = ""
        
        self.shippingCost = 0
        
        //self.shippingRegion = ""
        
        self.shippingRegionID = 0
        
        
        
    }
    
    //parameterized initializer
    
    init(o_shippingId: String,s_shippingType: String,s_shippingCost: Int,s_shippingRegionId: Int){
        
        super.init()
        
        self.shippingType = s_shippingType
        
        self.shippingCost = s_shippingCost
        
        self.shippingRegionID = s_shippingRegionId
        
        
        
    }
    
    
    
    func updateShippingInfo(){
        
        
        
    }
    
    
    
}





class Orderdetails:Order{
    
    
    
    
    
    var productID : Int?
    
    var productName : String?
    
    var quantity : Int?
    
    var unitCost : Float?
    
    var subTotal : Float?
    
    
    
    //initializers
    
    
    
    override init(){
        
        super.init()
        
        self.productID = 0
        
        self.productName = ""
        
        self.quantity = 0
        
        self.unitCost = 0.0
        
        self.subTotal = 0.0
        
        
        
    }
    
    
    
    //parameterized initialisers with order class
    
    
    
    init(o_orderId: Int,od_productId: Int,od_productname: String,od_quantity: Int, od_unitcost: Float,od_subtotal: Float){
        
        super.init()
        
        self.productID = od_productId
        
        self.productName = od_productname
        
        self.quantity = od_quantity
        
        self.unitCost = od_unitcost
        
        self.subTotal = od_subtotal
        
        
        
    }
    
    
    
    func calcPrice(){
        
        
        
    }
    
    
    
}
