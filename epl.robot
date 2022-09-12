
Documentation  A simple for loop example.
*** Variables ***

@{ROBOTS}=   patil

*** Test Cases ***
 Exit a loop on condition
    FOR    ${i}  IN  ${ROBOTS}
      # Exit For Loop  IF   ${i}== 2  
        Log   ${i}
    END
*** Test Cases ***
TEST
    Log to console  @{ROBOTS}

*** Variables ***
${h}=  s
${g}=  p

*** Test Cases ***
TEST2
    FOR  ${intw}  IN  ${h} ${g} Rowdy
        Log  ${intw}
    END
