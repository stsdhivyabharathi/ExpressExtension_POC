
*** Settings ***
Library      Selenium2Library
Library      OperatingSystem
Library      associatelib.py
Library      String 
Resource     login.robot
Resource     dashboard.robot
Resource     fillform.robot
Resource     summary.robot
Resource     arstate.robot


*** Keywords ***
ssettings
  
  ${logid}=   logid
  Set Environment Variable     logid     ${logid}
  Set Screenshot Directory     C:\Users\STS-DHIVYA D\Downloads\space\space\POC\Individualtaxform