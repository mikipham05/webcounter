*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${SERVER}
    Click  button >> text=Nollaa
    Get Title  ==  Laskuri
    Get Text  body  *=  nappia painettu 0 kertaa

When button pressed twice the counter is two
    Go To  ${SERVER}
    Click  button >> text=Nollaa
    Click  button >> text=Paina
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 2 kertaa
