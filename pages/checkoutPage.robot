*** Settings ***
Resource    ../resources/utils/base.resource

*** Variables ***
### INPUT
${INPUT_FIRSTNAME}                  android=new UiSelector().text("First Name")
${INPUT_LASTNAME}                   android=new UiSelector().text("Last Name")
${INPUT_POSTALCODE}                 android=new UiSelector().text("Zip/Postal Code")

### BOTOES
${BOTAO_MOCHILA}                    android=new UiSelector().text("Sauce Labs Backpack")
${BOTAO_ADD_TO_CART}                android=new UiSelector().text("ADD TO CART")
${BOTAO_REMOVE}                     android=new UiSelector().description("test-REMOVE")
${BOTAO_CONTINUE}                   android=new UiSelector().text("CONTINUE")
${BOTAO_FINISH}                     android=new UiSelector().description("test-FINISH")
${BOTAO_CART}                       android=new UiSelector().className("android.view.ViewGroup").instance(13)
${BOTAO_CHECKOUT}                   android=new UiSelector().description("test-CHECKOUT")

### MODAL
${MODAL_CHECKOUT_INFO}              android=new UiSelector().text("CHECKOUT: INFORMATION")
${MODAL_CHECKOUT_COMPLETE}          android=new UiSelector().text("CHECKOUT: COMPLETE!")
