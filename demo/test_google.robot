*** Settings ***

Documentation  Google Tests

...
Library    demo.GoogleHomePage
Library    demo.GoogleSearchResultPage
Library    robotpageobjects.Page

*** Test Cases ***

Test Searching Google For A Term, All Results On Result Page Should Contain That Term
    Open Google
    Search Google For  cat 
    All Result Titles On Google Search Result Page Should Contain  cat
    [Teardown]  Close Google Search Result Page

Test Searching Google For A Term And Clicking First Result, Page Should Contain That Term
    Open Google
    Search Google For  cat
    Click Result On Google Search Result Page  1
    Page Should Contain  cat
    [Teardown]  Close Page

