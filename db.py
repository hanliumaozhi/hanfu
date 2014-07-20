#coding=utf-8
 
import psycopg2
import settings

#class pgDatabase:
#    def __init__(self, dbname, dbuser):
#        self.conn = psycopg2.connect("dbname=%s user=%s",(dbname, dbuser))
#    def execute

pg = psycopg2.connect("dbname=%s user=%s", (settings.DBNAME, settings.DBUSER))
