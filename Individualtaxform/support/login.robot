
*** Keywords ***
  
Login
  ${logid}=     Get Environment Variable     logid     
  ${URL}=       fndbget      select Siteid from autolgn
  ${uid}=       fndbget      select userid from autolgn where userid='anand+sp1@spanenterprises.com'
  ${pwd}=       fndbget      select pwd from autolgn where userid='anand+sp1@spanenterprises.com'
  
  ${osigin}=       fndbget      select objvalue from autoobj where objname='signin'
  ${ouid}=       fndbget        select objvalue from autoobj where objname='uid'
  ${opwd}=       fndbget        select objvalue from autoobj where objname='pwd'
  ${omacc}=       fndbget        select objvalue from autoobj where objname='myacc'
    
  Open Browser    ${URL}     Chrome
  Maximize Browser Window
  ${passed} =    Run Keyword And Return Status         Wait Until Element Is Enabled       ${ouid}    5s
  Run Keyword Unless    ${passed}       Capture Page Screenshot     ${CURDIR}/reference/${logid}_login-tc-001.png
  Run Keyword If	${passed}	writelog    '${logid}','ts-login-1','valid login','login-tc-001','login page should be displayed with userid and password fields','login displayed successfully with userid and password fields','pass',' '
  ...        ELSE   writelog    '${logid}','ts-login-1','valid login','login-tc-001','login page should be displayed with userid and password fields','login not displayed successfully with userid and password fields','fail','${logid}_login-tc-001.png'
  
  
  Input Text       ${ouid}          ${uid}   
  Input Password       ${opwd}          ${pwd}   
  Click Button           ${osigin}
  ${passed} =    Run Keyword And Return Status      Wait Until Element Is Visible       ${omacc}      5s

  Run Keyword Unless    ${passed}       Capture Page Screenshot     ${CURDIR}/reference/${logid}_login-tc-002.png
  Run Keyword If	${passed}	writelog    '${logid}','ts-login-1','valid login','login-tc-002','User should be navigated to home page','user navigated to home page successfully','pass',' '
  ...        ELSE   writelog    '${logid}','ts-login-1','valid login','login-tc-002','User should be navigated to home page','user not navigated to home page ','fail','${logid}_login-tc-002.png'
  [Return]   ${passed}
  