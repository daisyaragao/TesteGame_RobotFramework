*** Settings ***
Resource                ../resource.robot

*** Variable ***
${HOME_URL}            https://www.n1casino.com/game/golden-fishtank


*** Keywords ***
#PRE-CONDIÇÕES
Dado que o usuário acesse o link do jogo
        Go To                                           ${HOME_URL}


#AÇÕES
Quando a página abrir
       Wait Until Element Is Visible                    class:react-notification-root

Então deve ser exibido o Golden FishTank
        Title Should Be                                  Play Golden Fishtank Online Casino Game Free or Real Money
        Element Should Be Disabled                              //*[@id="games-search"]
        Capture Page Screenshot