*** Settings ***
Resource                ../resource.robot

*** Variable ***
${HOME_URL}            https://www.thunderkick.com/games/toki-time/


*** Keywords ***
#PRE-CONDIÇÕES
Dado que o usuário acesse o link do jogo
        Go To                                           ${HOME_URL}


#AÇÕES
Quando a página abrir
      Title Should Be                                  Toki Time® | Video slot | Thunderkick

Então deve ser exibido o Toki time

        Click Link                                https://forfun.thunderkick.com/gamelauncher/play/generic?device=desktop&gameId=tk-tokitime&operatorId=2&playMode=demo

        Capture Page Screenshot