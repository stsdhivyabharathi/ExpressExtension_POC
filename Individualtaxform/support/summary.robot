
*** Keywords ***

summaryandpay
  ${logid}=     Get Environment Variable     logid     
  ${cname}=       fndbget      select tname from autofrm
  ${cnum}=       fndbget      select tcard from autofrm
  ${cvv}=       fndbget      select cvv from autofrm
  ${expmn}=       fndbget      select expm from autofrm
  ${expyr}=       fndbget      select expy from autofrm

  ${oreview}=       fndbget      select objvalue from autoobj where objname='oliabilityenext'
  ${oreviewnext}=       fndbget        select objvalue from autoobj where objname='oreviewnext'
  ${ofeenext}=       fndbget        select objvalue from autoobj where objname='ofeenext'
  ${ophone}=       fndbget        select objvalue from autoobj where objname='ophone'
  ${ocname}=       fndbget      select objvalue from autoobj where objname='ocname'
  ${ocnum}=       fndbget        select objvalue from autoobj where objname='ocnum'
  ${ocvv}=       fndbget        select objvalue from autoobj where objname='ocvv'
  ${oexpmn}=       fndbget      select objvalue from autoobj where objname='oexpmn'
  ${oexpyr}=       fndbget        select objvalue from autoobj where objname='oexpyr'
  ${opayprocess}=       fndbget        select objvalue from autoobj where objname='opayprocess'
  ${opaytransmit}=       fndbget      select objvalue from autoobj where objname='opaytransmit'
  ${omsg}=       fndbget        select objvalue from autoobj where objname='omsg'
  ${onewid}=       fndbget        select objvalue from autoobj where objname='onewid'
  
  
  Click Element    ${oreview}
  Wait Until Element Is Visible       ${oreviewnext}      15s
  Click Element    ${oreviewnext}
  Wait Until Element Is Enabled       ${oreviewnext}      15s
  Click Element    ${oreviewnext}
  ${passed} =    Run Keyword And Return Status     Wait Until Element Is Visible       ${ofeenext}      15s
  Wait Until Element Is Enabled       ${ocname}      15s  
  Input Text       ${ocname}          ${cname}
  Input Text       ${ocnum}          ${cnum}
  Input Text       ${ocvv}          ${cvv}
  Select From List By Value     ${oexpmn}          ${expmn}
  Select From List By Value     ${oexpyr}          ${expyr}
  Click Element    ${opayprocess}
  Wait Until Element Is Visible       ${opaytransmit}      15s
  Click Element    ${opaytransmit}
  ${passed} =    Run Keyword And Return Status      Wait Until Element Is Visible       ${omsg}      5s
  ${SSDIR}=     Replace String     ${CURDIR}    support     reference
  Capture Page Screenshot     ${SSDIR}/${logid}_newinv-tc-003.png
  ${id}=   Run Keyword If	${passed}    get text    ${onewid}
  Run Keyword If	${passed}	writelog    '${logid}','ts-newinv-1','happy path','newinv-tc-003','Request should be created ','request created.id is ${id}','pass','${logid}_newinv-tc-003.png'
  ...        ELSE   writelog    '${logid}','ts-newinv-1','happy path','newinv-tc-003','Request should be created ','request not created','fail','${logid}_newinv-tc-003.png'

  
  