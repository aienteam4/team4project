from django.db import connection

class Friends_Talk:
    #讀出交友所有資料
    def all(self):
        with connection.cursor() as cursor:
            sql = """select * from friends_chat"""
            cursor.execute(sql)
            friendsAll = cursor.fetchall()
        return friendsAll

    #讀出交友單筆資料
    def single(self, id):
        with connection.cursor() as cursor:
            sql = """select * from friends_chat where id=%s"""
            #tuple
            cursor.execute(sql,(id,))
            friendsOne = cursor.fetchone()
        return friendsOne

    #新增交友資料    
    def create(self, friends_chat):
        with connection.cursor() as cursor:
            sql = """insert into friends_chat(memberId,message,messageUpdate) values(%s,%s,%s)"""
            #tuple  
            cursor.execute(sql, friends_chat)

    #更新交友訊息資料  
    def update(self, friends_chat):
        with connection.cursor() as cursor:
            sql = """update friends_chat set message=%s messageUpdate=%s where id=%s"""
            #tuple 
            cursor.execute(sql, friends_chat)

    #刪除交友資料 
    def delete(self, id):
        with connection.cursor() as cursor:
            sql = """delete from friends_chat where id=%s"""
            #tuple
            cursor.execute(sql,(id,))

    #刪除交友訊息資料 
    def deleteOne(self, friends_chat):
        with connection.cursor() as cursor:
            sql = """delete from friends_chat set message=%s where id=%s"""
            #tuple
            cursor.execute(sql, friends_chat)