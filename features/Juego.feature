Feature:    Como    jugador
            Quiero  salir del juego
            Para    dejar de jugar

Scenario:
            Given   Visito la pagina del juego
            Then    deberia mostrar el boton "Salir del juego"

Scenario:
            Given   Visito la pagina del juego 
            Then    Si la cueva solo tiene acceso a la cueva sud deberia mostrar boton "Ir al norte"
Scenario:
            Given   Visito la pagina del juego 
            Then    Si la cueva solo tiene acceso a la cueva sud deberia mostrar boton "Ir al sud"
Scenario:
            Given   Visito la pagina del juego 
            Then    Si la cueva solo tiene acceso a la cueva sud deberia mostrar boton "Ir al este"
Scenario:
            Given   Visito la pagina del juego 
            Then    Si la cueva solo tiene acceso a la cueva sud deberia mostrar boton "Ir al oeste"


Scenario:
            Given   Visito la pagina del juego
            Then    deberia mostrar el mensaje "Estas en la cueva Nº 1"
Scenario:
            Given   Visito la pagina del juego 
            Then    Si la cueva solo tiene acceso a la cueva sud deberia mostrar boton "Ir al sud"
Scenario:
            Given   Visito la pagina del juego
            When    presiono el boton "Ir al sud" 
            Then    deberia mostrar el mensaje "Estas en la cueva Nº 2"

Scenario:
            Given   Visito la pagina del juego
            When     presiono el boton "Ir al norte"
            Then    deberia mostrar el mensaje "Estas en la cueva Nº 1"
Scenario:
            Given   Visito la pagina del juego
            When    presiono el boton "Salir del juego"
            And     presiono el boton "Comenzar a jugar"
            And      presiono el boton "Ir al sud" 
            And     presiono el boton "Ir al norte" 
            Then    deberia mostrar el mensaje "Estas en la cueva Nº 1"
Scenario:
            Given   Visito la pagina del juego
            Then    deberia mostrar el mensaje "Flechas: "
Scenario:
            Given   Visito la pagina del juego
            Then    deberia mostrar el mensaje "Monedas: "

Scenario:
            Given   Visito la pagina del juego
            When    presiono el boton "Salir del juego"
            And     presiono el boton "Comenzar a jugar"
            And      presiono el boton "Ir al sud" 
            Then    deberia mostrar el mensaje "Oigo un sonido"

Scenario:
            Given   Visito la pagina del juego
            When    presiono el boton "Salir del juego"
            Then    Deberia mostrarme la pantalla principal
Scenario:
            Given   Visito la pagina del juego y hay un pozo cerca
            Then    deberia mostrar el mensaje "Siento una brisa"

Scenario:
            Given   Visito la pagina del juego y hay un pozo cerca
            When    presiono el boton "Ir al este"
            Then    deberia mostrar el mensaje "Te caiste al pozo"

