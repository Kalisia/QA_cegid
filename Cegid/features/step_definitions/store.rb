When('I access the store to choose the products') do
    @store = Store.new
    @store.load
    @store.login_store  

    sleep 2
    wait = Selenium::WebDriver::Wait.new
    alert = wait.until { page.driver.browser.switch_to.alert }
    alert.accept
    sleep 2
    expect(page).to have_content("PRODUCT STORE")
    @store.home.click
    click_on('Monitors')
    click_on('ASUS Full HD')
    click_on('Add to cart')
    sleep 2
    wait = Selenium::WebDriver::Wait.new
    alert = wait.until { page.driver.browser.switch_to.alert }
    alert.accept
    expect(page).to have_content("PRODUCT STORE")
    @store.home.click
end
  

Then('I put in the cart to buy it') do
    click_on('Cart')
    click_on('Place Order')
    expect(page).to have_content("Place order")
    @store.name.set 'will'
    @store.country.set 'Portugal'
    @store.city.set 'Porto'
    @store.card.set '0001 0002 0003 0004'
    @store.month.set '12'
    @store.year.set '2030'
    click_on('Purchase')
    expect(page).to have_content("Thank you for your purchase!")
    click_on('OK')
    
end    