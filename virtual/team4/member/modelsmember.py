from django.db import connection
from datetime import date

class Member:
    #讀出所有資料
    def all(self):
        with connection.cursor() as cursor:
            sql = """select * from members"""
            cursor.execute(sql)
            members = cursor.fetchall()
            
        return members

    #讀出單筆資料
    def single(self, id):
        with connection.cursor() as cursor:
            sql = """select * from members where id=%s"""
            #tuple
            cursor.execute(sql,(id,))
            member = cursor.fetchone()
        return member

    #新增資料    
    def create(self, member):
        with connection.cursor() as cursor:
            sql = """insert into members(name,email,password,job,birthday,gender)
                     values(%s,%s,%s,%s,%s,%s)"""
            cursor.execute(sql, member)

            
    def update(self, member):
        with connection.cursor() as cursor:
            sql = """update members set name=%s,email=%s,password=%s,job=%s,birthday=%s,gender=%s
                     where id=%s"""
            #tuple member = (name,email,password,age,id)
            cursor.execute(sql, member)

    def delete(self, id):
        with connection.cursor() as cursor:
            sql = """delete from members where id=%s"""
            #tuple
            cursor.execute(sql,(id,))