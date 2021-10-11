
*** Settings ***
Resource   support/support.robot
Suite Teardown      Close Browser
  

  

*** Test Cases ***
create4868 - US001 - File for individual
  ssettings
  ${passed}=        Login 
  ${passed}=        Run Keyword If	${passed}	Newinvform
  ${passed}=        Run Keyword If	${passed}   fillform
  Run Keyword If	${passed}   summaryandpay
create4868 - US002 - File for individual with 
