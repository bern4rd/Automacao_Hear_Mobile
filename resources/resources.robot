*** Settings ***
Library     AppiumLibrary       run_on_failure=AppiumLibrary.CapturePageScreenshot

*** Variables *** 
#Confirmação de localização Android
${Confirm-Location}    //android.widget.Button[contains(@resource-id,'com.android.permissioncontroller:id/permission_allow_foreground_only_button')]

#initial page 
${initial-page}        //android.view.View[@content-desc="ENTRAR"]

#User info - Locators
${email-locator}       //android.widget.EditText[1] 
${pass-locator}        //android.widget.EditText[2]  
${entrar-botao}        //android.widget.Button[@content-desc="ENTRAR"]  

#Inputs de login
${User-email}          felipebernard.pe@gmail.com
${User-pass}           Abc.1234

*** Keywords ***
Open Session
    Set Appium Timeout      10
    Open Application                    http://localhost:4723/wd/hub      
    ...                                 platformName=android     
    ...                                 deviceName=RQ8R701J5XF         
    ...                                 appPackage=com.example.hear        
    ...                                 appActivity=com.example.hear.MainActivity      
    ...                                 automationName=Uiautomator2
    Capture Page Screenshot   
    Sleep                   10

Close Session
    Capture Page Screenshot
    Close Application

Dado que eu esteja na pagina inicial do App Hear
    Page Should Contain Text        ENTRAR

Quando eu preencho corretamente os campos do usuário
    Element Should Be Visible                               ${email-locator}
    Element Should Be Visible                               ${pass-locator}
    Click Element                   ${email-locator}
    Input Text                      ${email-locator}        ${User-email}   
    Click Element                   ${pass-locator}
    Input Text                      ${pass-locator}         ${User-pass}
    Capture Page Screenshot            
    Sleep               5

E clico em entrar
    Element Should Be Visible                               ${entrar-botao}
    Click Element                   ${entrar-botao}
    Capture Page Screenshot  
    Sleep               5