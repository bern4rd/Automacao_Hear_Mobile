*** Settings ***
Library    AppiumLibrary       run_on_failure=AppiumLibrary.CapturePageScreenshot

*** Variables *** 
#initial page 
${initial-page}                        //android.view.View[@content-desc="ENTRAR"]

#User info - Locators
${email-locator}                       //android.widget.EditText[1] 
${pass-locator}                        //android.widget.EditText[2]  
${login-button}                        //android.widget.Button[@content-desc="ENTRAR"]  

#Inputs de login
${User-email}                          teste@gmail.com
${User-pass}                           Abc.1234
${User-phone}                          99988887777
${User-name}                           Pessoa de sobrenome da Silva


#Register page
${register-page}                         //android.view.View[@content-desc="CADASTRO"]
${register-page-button}                  //android.widget.Button[@content-desc="CADASTRAR"]
${inative-register-page-button}          //android.widget.Button[@clickable=false]
${register-button}                       //android.widget.Button[@content-desc="Cadastrar"]
${name-register-locator}                 //android.widget.EditText[1] 
${email-register-locator}                //android.widget.EditText[2] 
${phone-register-locator}                //android.widget.EditText[3] 
${pass-register-locator}                 //android.widget.EditText[4] 
${pass-confirmation-register-locator}    //android.widget.EditText[5] 


*** Keywords ***
Open Session
    Set Appium Timeout                  10
    Open Application                    http://localhost:4723/wd/hub      
    ...                                 platformName=android     
    ...                                 deviceName=RQ8R701J5XF         
    ...                                 appPackage=com.example.hear        
    ...                                 appActivity=com.example.hear.MainActivity      
    ...                                 automationName=Uiautomator2
    Start Screen Recording

Close Session
    Sleep                          3
    Stop Screen Recording          
    Close Application

Dado que eu esteja na pagina inicial do App Hear
    Wait Until Page Contains       ENTRAR    10

Quando eu preencho corretamente os campos do usuário
    Wait Until Page Contains Element                        ${email-locator}    10
    Wait Until Page Contains Element                        ${pass-locator}     10
    Click Element                                           ${email-locator}
    Input Text                                              ${email-locator}    ${User-email}   
    Click Element                                           ${pass-locator}
    Input Text                                              ${pass-locator}     ${User-pass}
    Capture Page Screenshot

Quando eu preencho corretamente os campos do usuário sem o email
    Wait Until Page Contains Element                        ${email-locator}    10
    Wait Until Page Contains Element                        ${pass-locator}     10
    Click Element                                           ${pass-locator}
    Input Text                                              ${pass-locator}    ${User-pass}   
    Capture Page Screenshot       

Quando eu preencho corretamente os campos do usuário sem a senha
    Wait Until Page Contains Element                        ${email-locator}    10
    Wait Until Page Contains Element                        ${pass-locator}     10
    Click Element                                           ${email-locator}
    Input Text                                              ${email-locator}    ${User-email}   
    Capture Page Screenshot            
          
E clico em entrar
    Element Should Be Visible                               ${login-button}    3
    Click Element                                           ${login-button}
    Capture Page Screenshot  

Quando eu cliclo em Cadastrar
    Element Should Be Visible                               ${register-button}    3
    Click Element                                           ${register-button}    

E os campos de cadastro estão visiveis
    Element Should Be Visible                               ${register-page}                         10
    Element Should Be Visible                               ${name-register-locator}                 3
    Element Should Be Visible                               ${email-register-locator}                3
    Element Should Be Visible                               ${phone-register-locator}                3
    Element Should Be Visible                               ${pass-register-locator}                 3
    Element Should Be Visible                               ${pass-confirmation-register-locator}    3

E preencho as informações de cadastro
    Click Element                                           ${name-register-locator}
    Input Text                                              ${name-register-locator}                 ${User-name}
    Click Element                                           ${email-register-locator}
    Input Text                                              ${email-register-locator}                ${User-email}
    Click Element                                           ${phone-register-locator}    
    Input Text                                              ${phone-register-locator}                ${User-phone}
    Click Element                                           ${pass-register-locator}
    Input Text                                              ${pass-register-locator}                 ${User-pass}
    Click Element                                           ${pass-confirmation-register-locator}
    Input Text                                              ${pass-confirmation-register-locator}    ${User-pass}

E preencho as informações de cadastro sem nome
    Click Element                                           ${email-register-locator}
    Input Text                                              ${email-register-locator}                ${User-email}
    Click Element                                           ${phone-register-locator}    
    Input Text                                              ${phone-register-locator}                ${User-phone}
    Click Element                                           ${pass-register-locator}
    Input Text                                              ${pass-register-locator}                 ${User-pass}
    Click Element                                           ${pass-confirmation-register-locator}
    Input Text                                              ${pass-confirmation-register-locator}    ${User-pass}

E preencho as informações de cadastro sem email
    Click Element                                           ${name-register-locator}
    Input Text                                              ${name-register-locator}                 ${User-name}
    Click Element                                           ${phone-register-locator}    
    Input Text                                              ${phone-register-locator}                ${User-phone}
    Click Element                                           ${pass-register-locator}
    Input Text                                              ${pass-register-locator}                 ${User-pass}
    Click Element                                           ${pass-confirmation-register-locator}
    Input Text                                              ${pass-confirmation-register-locator}    ${User-pass}
E preencho as informações de cadastro sem telefone
    Click Element                                           ${name-register-locator}
    Input Text                                              ${name-register-locator}                 ${User-name}
    Click Element                                           ${email-register-locator}
    Input Text                                              ${email-register-locator}                ${User-email}
    Click Element                                           ${pass-register-locator}
    Input Text                                              ${pass-register-locator}                 ${User-pass}
    Click Element                                           ${pass-confirmation-register-locator}
    Input Text                                              ${pass-confirmation-register-locator}    ${User-pass}
E preencho as informações de cadastro sem a senha
    Click Element                                           ${name-register-locator}
    Input Text                                              ${name-register-locator}                 ${User-name}
    Click Element                                           ${email-register-locator}
    Input Text                                              ${email-register-locator}                ${User-email}
    Click Element                                           ${phone-register-locator}    
    Input Text                                              ${phone-register-locator}                ${User-phone}
    Click Element                                           ${pass-confirmation-register-locator}
    Input Text                                              ${pass-confirmation-register-locator}    ${User-pass}

E preencho as informações de cadastro sem a confirmação de senha
    Click Element                                           ${name-register-locator}
    Input Text                                              ${name-register-locator}                 ${User-name}
    Click Element                                           ${email-register-locator}
    Input Text                                              ${email-register-locator}                ${User-email}
    Click Element                                           ${phone-register-locator}    
    Input Text                                              ${phone-register-locator}                ${User-phone}
    Click Element                                           ${pass-register-locator}
    Input Text                                              ${pass-register-locator}                 ${User-pass}

Então o botão de cadastrar deve estar desabilitado
    Hide Keyboard
    Page Should Contain Element                             ${register-page-button}
    Element Should Be Disabled                              ${register-page-button}

Então o botão de login deve estar desabilitado
    Hide Keyboard
    Page Should Contain Element                             ${login-button}
    Element Should Be Disabled                              ${login-button}

#E cliclo em CADASTRAR        //Só será possível após a integração com o backend
#   ...

#Capabilities         
#{"platformName":"android","deviceName":"RQ8R701J5XF","appPackage":"com.example.hear","appActivity":"com.example.hear.MainActivity","automationName":"Uiautomator2"}