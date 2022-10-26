*** Settings ***
Library  modbus.py
Library  String
Library  Collections
*** Test Cases ***
Test case for connection
    ${connection}=  modbus.connection  
    log             ${connection}
    Should Be Equal     ${connection}   ${1}

# test cases for read only register with function code 4(input register)
# Test Cases for status

#     @{status}=        Create List    ${4660 }    ${22136}
#         Log List    ${status}
#     @{fun}=        modbus.func_04    ${30000}    ${2}
#         Log List    ${fun}
#     Lists Should Be Equal    ${fun}    ${status}

Test Cases for POUT

    @{pout}=  Create List    ${17142}    ${58982}
        Log List    ${pout}
    @{fun}=   modbus.func_04  ${30002}  ${2}
        Log List  ${fun}
    Lists Should Be Equal    ${fun}    ${pout}

*** Keywords ***




