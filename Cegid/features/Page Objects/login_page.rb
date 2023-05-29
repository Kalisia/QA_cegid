class Store < SitePrism::Page
    set_url 'https://www.demoblaze.com/'

    element :login, 'a#login2.nav-link'
    element :username, 'input#loginusername.form-control'
    element :password, 'input#loginpassword.form-control'
    element :login_button, 'button.btn.btn-primary'

    element :img_phone, '[src="imgs/iphone_6.jpg"]'
    element :cart_phone, '[onClick="addToCart(5)"]'

    element :home, 'a#nava.navbar-brand'

    element :name, 'input#name.form-control'
    element :country, 'input#country.form-control'
    element :city, 'input#city.form-control'
    element :card, 'input#card.form-control'
    element :month, 'input#month.form-control'
    element :year, 'input#year.form-control'

    def login_store
        login.click
        username.set 'admin'
        password.set 'admin'
        login_button.click
        img_phone.click
        cart_phone.click
    end
end



