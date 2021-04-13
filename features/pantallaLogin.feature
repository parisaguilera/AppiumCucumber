Feature: iOS Tests

@VerificarInicio
Scenario: Iniciar freeAPP y verificar la primera pantalla con sus botones
    Given Iniciar freeAPP
    Then Forzar el boton continuar sin texto en el field
    Then Entrar al link explicativo
    And volver al inicio de freeAPP

@VerificarDominios
Scenario Outline: Verificar dominios
    Given Ingresamos con el "<dominios>"
    Then Verificamos que pasamos al login y volvemos a atras

    Examples:
        | dominios  |
        | XTEST     |
        | XTEST_1   |  

@LoginSimple
Scenario Outline: Logeando en la freeAPP con un login simple
    Given Ingresamos con el dominio XTEST
    Then Ingresamos usuario "<user>"
    And  Ingresamos password "<pass>"
    Then Logeamos apretando el boton Ingresar
    Then Aceptamos la bienvenida
    Then Verificamos que estamos adentro de la freeAPP
    Then Deslogueamos y volvemos a la vista dominio

    Examples:
        | user         | pass        |
        | USER         | PASS        |
        | USER_1       | PASS_1      |