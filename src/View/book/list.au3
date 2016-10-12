#cs ----------------------------------------------------------------------------

 AutoIt Version : 3.3.14.2
 Auteur:         a.benrejeb

 Fonction du Script :
	Fen�tre de la liste des livres.

#ce ----------------------------------------------------------------------------

#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <GUIListBox.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

Global $_view_book_list_window
Global $_view_book_list_listcontrol

; Affichage d'une fen�tre unique pour l'application.
view_book_list_prepare()

#cs ----------------------------------------------------------------------------

 Fonction du Script :
    Pr�paration de la fen�tre.

#ce ----------------------------------------------------------------------------
Func view_book_list_prepare()
    $_view_book_list_window = GUICreate("Ma biblioth�que", 250, 250)
    GUISetOnEvent($GUI_EVENT_CLOSE, "view_book_list_close", $_view_book_list_window)

    GUICtrlCreateLabel("Liste des livres disponibles", 8, 8, 128, 17)

    $_view_book_list_listcontrol = GUICtrlCreateList("", 8, 32, 217, 175)

    GUICtrlCreateButton("Voir le livre", 128, 216, 97, 25, $WS_GROUP)
    GUICtrlSetOnEvent(-1, "view_book_list_showBook")
EndFunc

#cs ----------------------------------------------------------------------------

 Fonction du Script :
    D�finition des donn�es � afficher dans la fen�tre.

#ce ----------------------------------------------------------------------------
Func view_book_list_setData($dataList)
    GUICtrlSetData($_view_book_list_listcontrol, $dataList)
EndFunc

#cs ----------------------------------------------------------------------------

 Fonction du Script :
    Affichage de la fen�tre.

#ce ----------------------------------------------------------------------------
Func view_book_list_show()
    GUISetState(@SW_SHOW, $_view_book_list_window)
EndFunc

#cs ----------------------------------------------------------------------------

 Fonction du Script :
    Fermeture de la fen�tre.

#ce ----------------------------------------------------------------------------
Func view_book_list_close()
    ; La fermeture de la fen�tre provoque l'arr�t du script.
    Exit
EndFunc

; Fonctions priv�es

#cs ----------------------------------------------------------------------------

 Fonction du Script :
    Fonction appel�e lors du clic sur le bouton "Voir le livre".

#ce ----------------------------------------------------------------------------
Func view_book_list_showBook()
    Local $bookTitle = GUICtrlRead($_view_book_list_listcontrol)
    book_show_controller($bookTitle)
EndFunc


