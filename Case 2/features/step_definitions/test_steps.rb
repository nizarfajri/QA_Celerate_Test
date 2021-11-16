Given('I visit indihome website') do
    visit '/'
    sleep(1)
  end
  
  Then('I click Login\/Register button') do
    click_on(class: 'btn btn-primary')
    sleep(1)
  end
  
  Then('I choose Register') do
    click_on(class: 'btn btn-primary btn-block')
    sleep(1)
  end
  
  Then('I fill the form using unregister account') do
    find('#fullName').set('Nizar Fajri Syawaluddi')
    find('#mobileNumber').set('0812345678910')
    find('#email').set('nizarfajri6@gmail.com')
    find('#password').set('Nizar_96')
    sleep(2)
  end
  
  When('I click register now button') do
    find('[type="button"]').click
   sleep(3) 
  end
  
  Then('I should have a pop up message') do
    expect(page).to have_css('div[class="box box-main mb-0"]')
    sleep(3)
  end