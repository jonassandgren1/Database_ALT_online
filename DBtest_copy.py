import pymysql
from sshtunnel import SSHTunnelForwarder

tunnel = SSHTunnelForwarder(
    ('fries.it.uu.se', 22),# do not change 22, this is a portal
    ssh_username = 'joko3950', # use your Studium username
    ssh_password = 'MITTPASSWORDÄRJÄTTEBRA', # use your Studium password
    remote_bind_address = ('127.0.0.1', 3306)
    ) 

tunnel.start()

mydb = pymysql.connect(
    host='127.0.0.1',
    user='ht23_2_group_43',
    password='pasSWd_43',
    port=tunnel.local_bind_port,
    db = 'ht23_2_project_group_43'
)

mycursor = mydb.cursor ()
# Dept = input("What department do you want to vist? ")

Dept = 3

mycursor.execute ("SELECT * FROM Department WHERE Department_ID=%s", (Dept))

columns = mycursor.fetchall()
# for column in columns:
#     print(column)
#     print(f'{column[0]} {column[1]} {column[2]}')

mycursor_all = mydb.cursor ()
mycursor_all.execute ("SELECT * FROM Department")

PARENT_ID_LIST = [x[4] for x in mycursor_all]
# print(PARENT_ID_LIST)

def Return_Child(dept, parent_id_list):
    matching = []
    for i in range(len(parent_id_list)):
        if parent_id_list[i] == dept:
            matching.append(i+1)
    return matching

children_dept = (Return_Child(Dept, PARENT_ID_LIST))

mycursor_all2 = mydb.cursor ()
mycursor_all2.execute ("SELECT * FROM Department")

for x in mycursor_all2:
    if x[0] in children_dept:
        print(f'Child department: {x[1]}, ID: {x[0]}')

mydb.close()
