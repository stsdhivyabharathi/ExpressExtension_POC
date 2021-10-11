
*** Keywords ***
  
fillform
  ${logid}=     Get Environment Variable     logid     
  ${fname}=       fndbget      select fn from autofrm
  ${lname}=       fndbget      select ln from autofrm
  ${phone}=       fndbget      select ph from autofrm
  ${addr1}=       fndbget      select addr1 from autofrm
  ${city}=       fndbget      select city from autofrm
  ${zip}=       fndbget      select zip from autofrm
  ${state}=       fndbget      select stateval from autofrm
  
  ${ofname}=       fndbget      select objvalue from autoobj where objname='ofname'
  ${olname}=       fndbget        select objvalue from autoobj where objname='olname'
  ${ossn}=       fndbget        select objvalue from autoobj where objname='ossn'
  ${ophone}=       fndbget        select objvalue from autoobj where objname='ophone'
  ${oaddr1}=       fndbget      select objvalue from autoobj where objname='oaddr1'
  ${ocity}=       fndbget        select objvalue from autoobj where objname='ocity'
  ${ozip}=       fndbget        select objvalue from autoobj where objname='ozip'
  ${ostate}=       fndbget        select objvalue from autoobj where objname='ostate'
  ${ooutofcountry}=       fndbget      select objvalue from autoobj where objname='ooutofcountry'
  ${onowages}=       fndbget        select objvalue from autoobj where objname='onowages'
  ${oprofilenext}=       fndbget        select objvalue from autoobj where objname='oprofilenext'
  ${onotax}=       fndbget        select objvalue from autoobj where objname='onotax'
  ${oliabilityenext}=       fndbget        select objvalue from autoobj where objname='oliabilityenext'
  ${oactualssn}=       fndbget        select objvalue from autoobj where objname='oactualssn'
  ${otimezone}=       fndbget        select objvalue from autoobj where objname='otimezone'
  


  Input Text       ${ofname}          ${fname}
  Input Text       ${olname}          ${lname}
  ${ssn}=    Generate random string    9    123456789
  Input Text       ${ossn}          ${ssn}
  Input Text       ${ophone}          ${phone}
  Input Text       ${oaddr1}          ${addr1}
  Input Text       ${ocity}          ${city}
  Input Text       ${ozip}          ${zip}

  Select From List By Value     ${ostate}          ${state}
  Select From List By Value     ${otimezone}          Mountain Standard Time
  Click Element    ${ooutofcountry}
  Click Element    ${onowages}
  Click Element    ${oprofilenext}
  
  Wait Until Element Is Enabled       ${onotax}    5s
  Click Element    ${onotax}
  Click Element    ${oliabilityenext}
  
  ${actualssn}=  Get text   ${oactualssn}
  ${actualssn}=  Remove String        ${actualssn}   -
  Run Keyword Unless    ${actualssn}==${ssn}       Capture Page Screenshot     ${CURDIR}/reference/${logid}_newinv-tc-002.png
  Run Keyword If	${actualssn}==${ssn}	writelog    '${logid}','ts-newinv-1','happy path','newinv-tc-002','values entered and displayed should match','values matching','pass',' '
  ...        ELSE   writelog    '${logid}','ts-newinv-1','happy path','newinv-tc-002','values entered and displayed should match','values not matching','fail','${logid}_newinv-tc-002.png'
  [Return]   ${actualssn}==${ssn}
  