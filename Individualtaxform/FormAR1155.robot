*** Settings ***
Resource   support/support.robot
#Suite Teardown      Close Browser
  

  

*** Test Cases ***
createform AR1155
  ssettings
  ${passed}=        Login 
  ${passed}=        formAR1155