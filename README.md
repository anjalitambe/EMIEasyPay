# Easy Pay - An E-commerce Portal

<br>
An online shopping portal that provides a virtual EMI card to the registered customers to shop from the Easy-Pay website. The card has various benefits depending on the plan selected.
1. &nbsp;&nbsp;Gold
2. &nbsp;&nbsp;Platinum
3. &nbsp;&nbsp;Titanium
<br>
Benefits as per the plan selected:
<table>
    <thead>
       <tr><th rowspan="2">Type</th>
   <th rowspan="2">Initial Payment</th>
     <th rowspan="2">Credits Added</th>
     <th colspan="4">EMI Period</th>
    </tr><tr>
    <th>3M</th>
     <th>6M</th>
     <th>9M</th>
     <th>12M</th>
    </tr>
    </thead>
    <tbody>
       <tr>
        <td>Gold</td>
        <td>₹ 10,000</td>
        <td>7,500 points</td>
        <td>&#10004;</td>
        <td>&#10008;</td>
        <td>&#10008;</td>
        <td>&#10008;</td>
       </tr><tr>
        <td>Platinum</td>
        <td>₹ 25,000</td>
        <td>23,500 points</td>
        <td>&#10004;</td>
        <td>&#10004;</td>
        <td>&#10008;</td>
        <td>&#10008;</td>
       </tr><tr>
        <td>Titanium</td>
        <td>₹ 50,000</td>
        <td>48,000 points</td>
        <td>&#10004;</td>
        <td>&#10004;</td>
        <td>&#10004;</td>
        <td>&#10004;</td>
       </tr>
     
   </tbody>
    
</table>

<br>
Tools & Technology
1. &nbsp;&nbsp;JAVA 8 - Spring MVC Hibernate framework
2. &nbsp;&nbsp;Server - Tomcat server 8.0
4. &nbsp;&nbsp;Database - Oracle 10g 
5. &nbsp;&nbsp;Web Technologies - HTML5, CSS3, JAVASCRIPT, BOOTSTRAP, jQuery
6. &nbsp;&nbsp;IDE - Eclipse Java EE for web Developers 2018

<br>
Entity - Relationship Diagram

Entities - 
1. Customer
2. Product
3. Admin

Relationships
1. Customer - Product (M:M)
Multiple customers can purchase multiple products

2. Admin - Customer (1:M)
An admin manages multiple customers

3. Admin - Product (1:M)
An admin manages multiple products

<kbd>
    <img src='..\master\images\ER-diagram.png' height=350px>
</kbd>
<br>
Working of Easy Pay
Personas
1. Customer 
2. Admin

Person #1 - Customer
1. A customer can register in the Easy Pay Portal, select their EMI card type. 
2. After successful payment, their account is verified by the administrator and they receive credits in their Virtual Card
3. Using the virtual credits, customers can browse and shop for products with EMIs and credits will be deducted on a monthly basis
4. Additionally customers can add more credits to their card

<br>Landing Page <br>
<img src='..\master\images\home-page.png'>
<br>Registration Form<br><img src='..\master\images\registraion-page.png'>
<br>Registration Success<br><img src='..\master\images\registration-success.jpg'>
<br>Login Form<br><img src='..\master\images\login-page.png'>
<br>Customer Dashboard<br><img src='..\master\images\customer-dashboard.png'>
<br>Product List<br><img src='..\master\images\product-category.png'>
<br>Product Details<br><img src='..\master\images\buy-product.png'>
<br>Payment<br><img src='..\master\images\checkout-page.jpg'>
<br>Payment Success<br><img src='..\master\images\sucessful-payment.jpg'>
<br>Customer Logout<br><img src='..\master\images\log-out.jpg'>
<br>Admin Login<br><img src='..\master\images\admin-login.jpg'>
<br>Admin Dashboard<br><img src='..\master\images\admin-options.jpg'>
<br>Manage Customers<br><img src='..\master\images\admin-customer-view.png'>
<br>Manage Products<br><img src='..\master\images\admin-product-view.png'>





Person #2 - Admin
1. An admin can verify customers and activate thei Virtual Card
2. Manage Customers and Products








