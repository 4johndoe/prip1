from dbfread import DBF
from docx import Document

db_table = DBF('test.dbf')
ro = len(db_table)
co = db_table.field_names.__len__()

doc = Document()

table = doc.add_table(rows=1, cols=co)
header_cells = table.rows[0].cells
header_cells[0].text = 'Number'
header_cells[1].text = 'Name'
header_cells[2].text = 'Date'
header_cells[3].text = 'Show'

for item in db_table:
    cells = table.add_row().cells
    cells[0].text = str(item['NOM'])
    cells[1].text = str(item['NAME'])
    cells[2].text = str(item['BIRTHDAY'])
    cells[3].text = str(item['SHOW'])

# for rec in DBF('test.dbf'):
#     print rec['NOM'], rec['NAME'], rec['BIRTHDAY'], rec['SHOW']


doc.save('demo.docx')