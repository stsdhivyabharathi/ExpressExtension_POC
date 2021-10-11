
*** Keywords ***


formAR1155
#[Arguments]    ${columnid}
    ${logid}=     Get Environment Variable     logid   
    ${ostatebtn}=       fndbget      select objstvalue from autoobjST where objstname='statebtn'
    ${osstartbtn}=       fndbget      select objstvalue from autoobjST where objstname='startbtn'
    ${ostate}=       fndbget      select objstvalue from autoobjST where objstname='state'
    ${oCcorp}=       fndbget      select objstvalue from autoobjST where objstname='Ccorp'
    ${oAR1155btn}=     fndbget      select objstvalue from autoobjST where objstname='AR1155btn'
    ${oTYbeginning}=       fndbget      select objstvalue from autoobjST where objstname='oTYbeginning'
    ${oTYending}=       fndbget      select objstvalue from autoobjST where objstname='oTYending'
    ${oBusinessName}=       fndbget      select objstvalue from autoobjST where objstname='oBusinessName'
    ${oFEIN1}=       fndbget      select objstvalue from autoobjST where objstname='oFEIN1'
    ${oFEIN2}=       fndbget      select objstvalue from autoobjST where objstname='oFEIN2'
    ${oFEIN3}=       fndbget      select objstvalue from autoobjST where objstname='oFEIN3'
    ${oFEIN4}=       fndbget      select objstvalue from autoobjST where objstname='oFEIN4'
    ${oFEIN5}=       fndbget      select objstvalue from autoobjST where objstname='oFEIN5'
    ${oFEIN6}=       fndbget      select objstvalue from autoobjST where objstname='oFEIN6'
    ${oFEIN7}=       fndbget      select objstvalue from autoobjST where objstname='oFEIN7'
    ${oFEIN8}=       fndbget      select objstvalue from autoobjST where objstname='oFEIN8'
    ${oFEIN9}=       fndbget      select objstvalue from autoobjST where objstname='oFEIN9'
    ${oAddress}=       fndbget      select objstvalue from autoobjST where objstname='oAddress'
    ${oCity}=       fndbget      select objstvalue from autoobjST where objstname='oCity'
    ${oStatedrop}=       fndbget      select objstvalue from autoobjST where objstname='oState'
    ${oZip}=       fndbget      select objstvalue from autoobjST where objstname='oZip'
    ${oCountry}=       fndbget      select objstvalue from autoobjST where objstname='oCountry'
    ${oNAICS}=       fndbget      select objstvalue from autoobjST where objstname='oNAICS'
    ${oDateOfCorporation}=       fndbget      select objstvalue from autoobjST where objstname='oDateOfCorporation'
    ${oDomestic}=      fndbget      select objstvalue from autoobjST where objstname='oDomestic'
    ${oForeign}=       fndbget      select objstvalue from autoobjST where objstname='oForeign'
    ${oPatnership}=       fndbget      select objstvalue from autoobjST where objstname='oPatnership'
    ${oLLC}=       fndbget      select objstvalue from autoobjST where objstname='oLLC'
    ${oScorp}=       fndbget      select objstvalue from autoobjST where objstname='oScorp'
    ${oCorp}=       fndbget      select objstvalue from autoobjST where objstname='oCorp'

    ${CorpAssociate}=       fndbget      select objstvalue from autoobjST where objstname='CorpAssociate'
    ${ExptOrg}=       fndbget      select objstvalue from autoobjST where objstname='ExptOrg'
    ${o60Days}=       fndbget      select objstvalue from autoobjST where objstname='o60Days'
    ${o180Days}=       fndbget      select objstvalue from autoobjST where objstname='o180Days'
    ${oAmount}=       fndbget      select objstvalue from autoobjST where objstname='oAmount'
    ${oSavebtn}=      fndbget      select objstvalue from autoobjST where objstname='oSavebtn'
    ${oGotItBtn}=      fndbget      select objstvalue from autoobjST where objstname='oGotItBtn'
    ${oReview}=      fndbget      select objstvalue from autoobjST where objstname='oReview'

   # ${columnid}    Set Variable    64079702-D0DF-42B7-A2B1-42848D161E35
    ${BusinessName}=       fndbget      select BusinessName from autstateAR where id='64079702-D0DF-42B7-A2B1-42848D161E35'
    ${Address}=       fndbget      select Address from autstateAR where id='64079702-D0DF-42B7-A2B1-42848D161E35'
    ${City}=       fndbget      select City from autstateAR where id='64079702-D0DF-42B7-A2B1-42848D161E35'
    ${State}=       fndbget      select State from autstateAR where id='64079702-D0DF-42B7-A2B1-42848D161E35'
    ${Zip}=       fndbget      select Zip from autstateAR where id='64079702-D0DF-42B7-A2B1-42848D161E35'
    ${Countryname}=       fndbget      select Countryname from autstateAR where id='64079702-D0DF-42B7-A2B1-42848D161E35'
    ${NAICSCode}=       fndbget      select NAICSCode from autstateAR where id='64079702-D0DF-42B7-A2B1-42848D161E35'
    ${Amount}=       fndbget      select Amount from autstateAR where id='64079702-D0DF-42B7-A2B1-42848D161E35'
  


  Click Element    ${ostatebtn}
  Wait Until Element Is Visible       ${osstartbtn}      10s
  Click Element    ${osstartbtn}
  Wait Until Element Is Visible    ${ostate}      15s   
  Click Element    ${ostate}
  Wait Until Element Is Visible       ${oCcorp}      15s
  Click Element    ${oCcorp}
  Wait Until Element Is Visible       ${oAR1155btn}      15s
  Click Element    ${oAR1155btn}

  Wait Until Element Is Visible       ${oTYbeginning}      15s
  Input Text       ${oTYbeginning}          01/01/2020
  Input Text       ${oTYending}          31/12/2020
  #Wait Until Element Is Visible       ${oBusinessName}      
  Input Text       ${oBusinessName}     ${BusinessName}
  
  Input Text    ${oFEIN1}    3
  Input Text    ${oFEIN2}    4
  Input Text    ${oFEIN3}    5
  Input Text    ${oFEIN4}    6
  Input Text    ${oFEIN5}    5
  Input Text    ${oFEIN6}    7
  Input Text    ${oFEIN7}    8
  Input Text    ${oFEIN8}    6
  Input Text    ${oFEIN9}    4
  Input Text    ${oAddress}    ${Address}    
  Input Text    ${oCity}     ${City}   
  Input Text    ${oZip}    ${Zip}
  Input Text    ${oNAICS}    ${NAICSCode}
  Input Text     ${oDateOfCorporation}    01/09/2018
  Click Element    ${oForeign}   
  Click Element    ${oPatnership}
  Click Element    ${oCorp}
  Click Element    ${o180Days}
  Input Text     ${oAmount}    ${Amount}
  Sleep    10
  #Wait Until Element Is Visible       ${oSavebtn}      15s
  Click Button    ${oSavebtn}


# Wait Until Element Is Visible       ${oGotItBtn}      25s
#Click Element    ${oGotItBtn}

  # Wait Until Element Is Visible       ${oReview}      15s
  #Click Element    ${oReview}


