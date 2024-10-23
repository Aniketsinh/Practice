*** Settings ***
Documentation   To validate the Login form
Library     SeleniumLibrary
#Resource

*** Keywords ***
 Open Browser the website page
        Create Webdriver    Chrome
        Go To    https://rahulshettyacademy.com/loginpagePractise/

 Fill the login form
        Input Text    id:username    aniketsinh.108@gmail.com
        Input Password    id:password    $etuDhw@j1089
        Click Button    signInBtn
 wait until it checks error and display error message
        Wait Until Element Is Enabled    css:.alert-danger


Verify error message is correct
        ${result}=      Get Text    css:.alert-danger
        Should Be Equal As Strings    ${result}      Incorrect username/password.
        Log    ${result}

*** Test Cases ***
Validate Succesful Login
        Open Browser the website page
        Fill the login form
        wait until it checks error and display error message
        Verify error message is correct
        Log    ${result}
