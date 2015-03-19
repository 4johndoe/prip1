**
PROCEDURE OpenData
 dirlocal = "..\LOCAL\"
 SELECT 0
 USE SHARED (dirlocal+"Struct.DBF")
 = CURSORSETPROP("Buffering", 2)
 PUBLIC arlist[RECCOUNT(), 1]
 SELECT 0
 USE SHARED (dirlocal+"Strlist.DBF")
 = CURSORSETPROP("Buffering", 2)
 PUBLIC arlist1[RECCOUNT(), 1]
 STORE "" TO arlist, arlist1
 SELECT 0
 USE SHARED (dirlocal+"Reports.DBF")
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED (dirlocal+"Setting.DBF")
 = CURSORSETPROP("Buffering", 2)
 dirdata = "..\DATA\"
 LOCAL nerror
 nerror = 0
 ON ERROR nerror = 1
 OPEN DATABASE dirdata+"common\common.dbc" SHARED
 IF nerror=1
    ON ERROR
    = MESSAGEBOX('База даних зайнята монопольно або відсутня!', 0016, '')
    RETURN
 ENDIF
 OPEN DATABASE dirdata+"pripiska\"+ALLTRIM(_период)+"\t_o_w.dbc" SHARED
 IF nerror=1
    ON ERROR
    = MESSAGEBOX('База даних зайнята монопольно або відсутня!', 0016, '')
    RETURN
 ENDIF
 ON ERROR
 SELECT 0
 USE SHARED common!COMPL ORDER recid
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!insp_res ORDER LIST
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED t_o_w!results
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED t_o_w!newres
 SELECT 0
 USE SHARED common!Национальности ORDER Имя
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!Улицы ORDER Имя
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!город ORDER Имя
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!район ORDER Имя
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!языки ORDER Имя
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!ВоенСпец ORDER Спец_Код
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!Команды ORDER Команда
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!Учеб ORDER Имя
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED t_o_w!Повесть ORDER П_Ключ
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED t_o_w!Повесть AGAIN ALIAS к_пов ORDER П_Ключ
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED t_o_w!Семья ORDER Ключ
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED t_o_w!Дети ORDER Ключ
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!Команды AGAIN ALIAS к_ком_пр ORDER Команда
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED t_o_w!SubType ORDER NUMBER
 SELECT 0
 USE t_o_w!DateType
 SELECT 0
 USE SHARED t_o_w!Картотека ORDER П_Список
 = CURSORSETPROP("Buffering", 2)
 GOTO TOP
ENDPROC
**
