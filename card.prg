 PRIVATE пов_дата
 пов_дата = {}
 SELECT 0
 USE common!Национальности AGAIN ALIAS к_нац ORDER Имя
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE common!город AGAIN ALIAS к_гор ORDER Имя
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE common!район AGAIN ALIAS к_рай ORDER Имя
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE common!языки AGAIN ALIAS к_яз ORDER Имя
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE common!Улицы AGAIN ALIAS к_ул ORDER Имя
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE common!Учеб AGAIN ALIAS к_учеб ORDER Имя
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE common!ВоенСпец AGAIN ALIAS к_спец ORDER Спец_Код
 = CURSORSETPROP("Buffering", 2)
 SELECT картотека
 SET ORDER TO П_Список
 GOTO TOP
 SELECT семья
 SET KEY TO картотека.ключ
 GOTO TOP
 SELECT дети
 SET KEY TO картотека.ключ
 GOTO TOP
 SELECT картотека
 PUSH MENU _MSYSMENU
 DO Card.mpr
 DO FORM CardForm.scx NAME ocardform
ENDPROC
**
