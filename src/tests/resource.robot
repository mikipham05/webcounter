*** Settings ***
Library  Browser

*** Variables ***
${DELAY}     500ms
${SERVER}    http://localhost:5001
${HEADLESS}  False
${BROWSER}   chromium

*** Keywords ***
Open And Configure Browser
    IF    $HEADLESS.lower() == 'true'
        New Browser  browser=${BROWSER}  headless=True
    ELSE
        New Browser  browser=${BROWSER}  headless=False  slowMo=${DELAY}
    END
    New Context
    New Page  about:blank
