#cs ----------------------------------------------------------------------------

 Auteur:         Docteur

 Fonction du Script :
	Point d'entr�e de l'application Library.
 Source:
    https://www.autoitscript.fr/forum/viewtopic.php?t=7822

#ce ----------------------------------------------------------------------------

; D�finition des variables globales
Opt("GUIOnEventMode", 1)

; Inclusion des biblioth�ques
#include <Array.au3>
#include "app/lib/UDF_ArraysUtils.au3"
#include "app/lib/UDF_Dictionary.au3"
#include "app/lib/UDF_Logs.au3"

; Inclusion des mod�les
#include "src/Model/Book.au3"

; Inclusion des vues
#include "src/View/book/list.au3"
#include "src/View/book/show.au3"

; Inclusion des contr�leurs
#include "src/Controller/book.au3"

; Action � effectuer par d�faut
book_list_controller()

;~ $obj1 = _InitDictionary()
;~ _AddItem("One", "Same", $obj1)
;~ _AddItem("Two", "Car", $obj1)
;~ _AddItem("Three", "House", $obj1)

;~ $obj2 = _InitDictionary()
;~ _AddItem("1", "A", $obj2)
;~ _AddItem("2", "B", $obj2)
;~ _AddItem("3", "C", $obj2)

;~ $aArray1 = _GetItems($obj1)
;~ $aArray2 = _GetItems($obj2)

;~ _ArrayDisplay($aArray2)
;~ _ArrayDisplay($aArray1)

; Pause dans le script
While(True)
	Sleep(10)
WEnd