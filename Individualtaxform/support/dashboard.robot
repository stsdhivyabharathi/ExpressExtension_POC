
*** Keywords ***
  
Newinvform
  ${logid}=     Get Environment Variable     logid     
  
  ${o4868}=       fndbget      select objvalue from autoobj where objname='o4868'
  ${ofname}=       fndbget        select objvalue from autoobj where objname='ofname'
  
  Click Element    ${o4868}
  ${passed} =    Run Keyword And Return Status      Wait Until Element Is Visible       ${ofname}      5s
  Run Keyword Unless    ${passed}       Capture Page Screenshot     ${CURDIR}/reference/${logid}_newinv-tc-001.png
  Run Keyword If	${passed}	writelog    '${logid}','ts-newinv-1','happy path','newinv-tc-001','User should be navigated to basic information page','user navigated to basic information page successfully','pass',' '
  ...        ELSE   writelog    '${logid}','ts-newinv-1','happy path','newinv-tc-001','User should be navigated to basic information page','user not navigated to basic information page ','fail','${logid}_newinv-tc-001.png'
  [Return]   ${passed}
  