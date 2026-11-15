*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Set Counter Value
    Go To  ${SERVER}
    Click  button >> text=Nollaa
    Fill Text  input[name="value"]  25
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 25 kertaa

