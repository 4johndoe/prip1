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
    = MESSAGEBOX('���� ����� ������� ���������� ��� �������!', 0016, '')
    RETURN
 ENDIF
 OPEN DATABASE dirdata+"pripiska\"+ALLTRIM(_������)+"\t_o_w.dbc" SHARED
 IF nerror=1
    ON ERROR
    = MESSAGEBOX('���� ����� ������� ���������� ��� �������!', 0016, '')
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
 USE SHARED common!�������������� ORDER ���
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!����� ORDER ���
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!����� ORDER ���
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!����� ORDER ���
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!����� ORDER ���
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!�������� ORDER ����_���
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!������� ORDER �������
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!���� ORDER ���
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED t_o_w!������� ORDER �_����
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED t_o_w!������� AGAIN ALIAS �_��� ORDER �_����
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED t_o_w!����� ORDER ����
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED t_o_w!���� ORDER ����
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED common!������� AGAIN ALIAS �_���_�� ORDER �������
 = CURSORSETPROP("Buffering", 2)
 SELECT 0
 USE SHARED t_o_w!SubType ORDER NUMBER
 SELECT 0
 USE t_o_w!DateType
 SELECT 0
 USE SHARED t_o_w!��������� ORDER �_������
 = CURSORSETPROP("Buffering", 2)
 GOTO TOP
ENDPROC
**
