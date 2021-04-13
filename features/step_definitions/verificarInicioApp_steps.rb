# Vital para sacar el extracto de una web:
# source = @driver.get_source
# log(source)
Given('Iniciar freeAPP') do
    log('Iniciando Iniciar freeAPP...')
end

Then 'Forzar el boton continuar sin texto en el field' do
    buttonContinuar = find_element(:accessibility_id, "continueDomainButton")
    buttonContinuar.click
end

Then 'Entrar al link explicativo' do
    externalLink =  find_element(:accessibility_id, "infoDomainButton")
    externalLink.click
    externalLinkWeb= find_element(:xpath, "//XCUIElementTypeStaticText[@name=\"https://intercom.help/freeAPP/es/articles/xtest\"]")
end

And 'volver al inicio de freeAPP' do
    doneButton = driver.find_element(:xpath,"//XCUIElementTypeButton[@name=\"Done\"]")
    doneButton.click
end