 //task : create a class for the person. Use functions for the manipulating the datas.

struct address{
    var street = "265 yorkland blvd"
    var city = "North York"
    var postcode = "M1H1Y1"
}

class Person {
    var First_name = "priya"
    var Last_name = "nair"
    var age = 22
    var total_amt = 2000
    //declaring an object address
    var loc = address()
}
 // declaring an object
 var Person_object = Person()
print("First Name = " ,Person_object.First_name)
print("Last Name = " ,Person_object.Last_name)
print("Age = " ,Person_object.age)
print("Street name = " ,Person_object.loc.street)
print("City = " ,Person_object.loc.city)
print("postal code = " ,Person_object.loc.postcode)
print("Total amount = " ,Person_object.total_amt)
