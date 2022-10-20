*** Settings ***

Documentation  serial testt

Library  modbus.py

Library  String

*** Keywords ***

yay

    [Arguments]  ${var1}  

    ${output}=  test  a

    [Return]  ${output}

*** Test Cases ***

test
  ${out}=  yay  a
  ${v1}=  Encode String To Bytes  UTTHUNGA  UTF-8
  Log To Console  ${v1}
  Should Be Equal  ${out}  ${v1}