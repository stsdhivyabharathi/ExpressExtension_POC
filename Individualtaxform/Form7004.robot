*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}   chrome
${SELSPEED}  0.0s

*** Test Cases ***
Untitled Test Case
    [Setup]  Run Keywords  Open Browser  https://ees.efile4taxes.com/  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    # open    https://ees.efile4taxes.com/
    type    id=LoginName    dhivyabharathi.d+bo@spanllc.com
    type    id=OriginalPassword    Test@123
    click    id=btnsignin
    click    xpath=//*[@id="A2"]
    type    id=BusinessName    Trevis Corp
    type    id=EIN    00-9876543
    type    id=ConfirmEIN    00-9876543
    type    id=Address1    34 park st
    type    id=Address2    Suite 34
    type    id=City    Atlanta
    select    id=USStates    Georgia (GA)
    click    id=txtzip
    type    id=txtzip    31011
    type    id=Fax    (898) 676-7656
    type    id=SAName    Paul Trevis
    type    id=SATitle    ceo
    type    id=SADayTimePhone    (876) 543-2134
    click    id=btnNext
    click    id=btn1
    click    id=btnNext
    click    xpath=//div[@id='isOtherTaxYear1']/label/label
    click    id=TaxYearBeginDate
    click    xpath=//div[@id='ui-datepicker-div']/div/div/select
    click    link=1
    click    id=TaxYearEndDate
    click    link=31
    click    id=btnStep2Next
    click    xpath=//div[@id='contanier']/div/div[2]/div[4]/div[2]/div[3]/div[3]/label/label
    click    id=TotalTax
    type    id=TotalTax    800
    click    id=TotalPayments
    type    id=TotalPayments    600
    click    xpath=//div[@id='divTentativeTax']/table/tbody/tr[2]/td[2]
    click    id=btnStep3Next
    click    xpath=//label[@id='divEFTPS']/label
    click    xpath=//div[@id='dAcceptEFTPSFTDCheck']/label
    click    id=btnSubmit
    click    id=btnNext
    click    id=btnNext
    click    id=btnNext
    type    id=FirstName    paul
    type    id=CardNumber    4111111111111111
    click    id=ExpiryMonth
    select    id=ExpiryMonth    February(02)
    click    id=ExpiryYear
    select    id=ExpiryYear    2023
    click    id=AuthCode
    type    id=AuthCode    345
    click    id=btnSave
    click    id=btnNext
    click    link=View
    selectWindow    win_ser_1
    close    win_ser_1
    selectWindow    win_ser_local
    click    id=btnDash
    [Teardown]  Close Browser

*** Keywords ***
open
    [Arguments]    ${element}
    Go To          ${element}

clickAndWait
    [Arguments]    ${element}
    Click Element  ${element}

click
    [Arguments]    ${element}
    Click Element  ${element}

sendKeys
    [Arguments]    ${element}    ${value}
    Press Keys     ${element}    ${value}

submit
    [Arguments]    ${element}
    Submit Form    ${element}

type
    [Arguments]    ${element}    ${value}
    Input Text     ${element}    ${value}


select
    [Arguments]        ${element}  ${value}
    Select From List By Value   ${element}  ${value}

verifyValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

verifyTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertConfirmation
    [Arguments]                  ${value}
    Alert Should Be Present      ${value}

assertText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

assertTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

waitForTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

doubleClick
    [Arguments]           ${element}
    Double Click Element  ${element}

doubleClickAndWait
    [Arguments]           ${element}
    Double Click Element  ${element}

goBack
    Go Back

goBackAndWait
    Go Back

runScript
    [Arguments]         ${code}
    Execute Javascript  ${code}

runScriptAndWait
    [Arguments]         ${code}
    Execute Javascript  ${code}

setSpeed
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

setSpeedAndWait
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

verifyAlert
    [Arguments]              ${value}
    Alert Should Be Present  ${value}
