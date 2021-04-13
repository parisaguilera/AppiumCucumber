Given 'Ingresamos con el dominio XTEST' do
    dominio = 'XTEST'
    textFieldDominio = find_element(:accessibility_id, "domainText")
    buttonContinuar = find_element(:accessibility_id, "continueDomainButton")
    textFieldDominio.send_keys "#{dominio}"
    buttonContinuar.click
end

Then(/Ingresamos usuario "([^"]*)"$/) do |usuario|
    textFieldUser = find_element(:accessibility_id, "textUser")
    textFieldUser.send_keys "#{usuario}"
end
  
Then(/Ingresamos password "([^"]*)"$/) do |pass|
    textFieldPass = find_element(:accessibility_id, "textPass")
    textFieldPass.send_keys "#{pass}"
end


Then('Logeamos apretando el boton Ingresar') do
    button = find_element(:accessibility_id, "loginButton")
    button.click
end

Then('Aceptamos la bienvenida') do
    welcomeButton = find_element(:accessibility_id, "welcomeButton")
    welcomeButton.click
end
Then('Verificamos que estamos adentro de la freeAPP') do
    log('verificado')
end

Then('Deslogueamos y volvemos a la vista dominio') do
    logOut = Appium::TouchAction.new.press(x: 372, y: 56).perform
    logOutbutton = find_element(:accessibility_id, "logoutButton")
    logOutbutton.click
end