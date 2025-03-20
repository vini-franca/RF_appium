*** Settings ***
Resource  base.resource

*** Keywords ***
Open APP

    IF    '${EMULATOR}' == 'local'
        Open Application    
        ...    remote_url=http://localhost:4723/wd/hub
        ...    automationName=UIAutomator2
        ...    platformName=${PLATFORM_NAME}
        ...    deviceName=Pixel 5
        ...    appWaitActivity= com.swaglabsmobileapp.MainActivity
        ...    app=${CURDIR}${/}..${/}app${/}app_loja.apk
        ...    disableIdLocatorAutocompletion=${True}
    ELSE IF  '${EMULATOR}' == 'browserstack'
        Open Application In Browserstack
        ...  automationName=UIAutomator2
        ...  platformName=${PLATFORM_NAME}
        ...  deviceName=Pixel 5
        ...  project=TED_ROBOTCOURSES
        ...  build=TED_%{GH_ACTIONS_RUNNER=LOCAL}
        ...  name=${TEST_NAME}
        ...  bstack:options=${BROWSERSTACK_OPTIONS}
        ...  disableIdLocatorAutocompletion=${True}
        ...  browserstack.idleTimeout=60
        ...  interactiveDebugging=${True} 
    END