#cs ----------------------------------------------------------------------------

 Fonction du Script :
	Redimensionne et ins�re une donn�e dans un tableau

#ce ----------------------------------------------------------------------------
Func _ArrayInsertAndRedim(ByRef $array, $value)
	$indexLastElement = UBound($array)
	ReDim $array[$indexLastElement+1]
	$array[$indexLastElement] = $value
EndFunc