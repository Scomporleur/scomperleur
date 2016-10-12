#cs ----------------------------------------------------------------------------

 AutoIt Version : 3.3.14.2
 Auteur:         a.benrejeb

 Fonction du Script :
	Contr�leur reli� � la gestion des livres.

#ce ----------------------------------------------------------------------------

#cs ----------------------------------------------------------------------------

 Fonction du Script :
    Action pour lister les livres.

#ce ----------------------------------------------------------------------------
Func book_list_controller()
    Local $dataList
    Local $index
    Local $lastIndex
    Local $bookIds

    ; R�cup�ration de la liste des identifiants des livres.
    $bookIds = model_book_getAllBookIds()

    $lastIndex = UBound($bookIds) - 1
    For $index = 0 To $lastIndex
        ; R�cup�ration du livre.
        model_book_getBookById($bookIds[$index])

        ; Transformation de la liste des identifiants en cha�ne de caract�res
        ; pour le contr�le "List", sous la forme "1|2|3|4|5".
        $bookTitle = model_book_getTitle()
        $dataList &= $bookTitle
        If $index <> $lastIndex Then
            $dataList &= "|"
        EndIf
    Next

    ; D�finition des donn�es.
    view_book_list_setData($dataList)

    ; Affichage de la fen�tre de la liste des livres.
    view_book_list_show()
EndFunc

#cs ----------------------------------------------------------------------------

 Fonction du Script :
    Action pour afficher le livre s�lectionn�.

#ce ----------------------------------------------------------------------------
Func book_show_controller($bookTitle)
    Local $index
    Local $lastIndex

    ; R�cup�ration du livre en fonction du titre pass� en param�tre.
    $book = model_book_getBookByTitle($bookTitle)

    ; D�finition des donn�es.
    view_book_show_setData(model_book_getTitle(), model_book_getAuthor(), model_book_getShortDescription())

    ; Affichage de la fen�tre d'informations d'un livre.
    view_book_show_show()
EndFunc

