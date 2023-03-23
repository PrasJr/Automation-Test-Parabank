Given('I am on the homepage') do
    visit ("https://parabank.parasoft.com/parabank/admin.htm(opens%20in%20a%20new%20tab)")
end
When('I fill my credential and click login') do
    fill_in "username", with: 'tulustester'
    fill_in "password", with: 'tulus12345'
    click_on"Log In"
  end
Then('I should be logged in') do
    expect(find('h1.title').text)
  end


When('I fill wrong username and click login') do
    fill_in "username", with: 'tulustes'
    fill_in "password", with: 'tulus12345'
    click_on"Log In"
  end

Then('I should be not logged in and see the error message') do
    expect(find('h1.title').text)
  end