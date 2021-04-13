Given(/Ingresamos con el "([^"]*)"$/) do |dominios|
    textFieldDominio = find_element(:accessibility_id, "domainText")
    buttonContinuar = find_element(:accessibility_id, "continueDomainButton")
    textFieldDominio.send_keys "#{dominios}"
    buttonContinuar.click
end

Then ('Verificamos que pasamos al login y volvemos a atras') do
    cambiarEmpresa = find_element(:accessibility_id, "changeDomainButton")
    cambiarEmpresa.click
end