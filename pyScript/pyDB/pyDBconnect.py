import pymysql
db = pymysql.connect("localhost","root","","odqa" )
cursor=db.cursor()
sql="show tables"
cursor.execute(sql)

results = cursor.fetchall()
print(results)
roe=results[0]
print(roe[0])
#'sampleanswer'
roe=results[1]
print(roe[0])
#'samplequestion'
sql="select * from samplequestion"
cursor.execute(sql)
results = cursor.fetchall()
print(results)
