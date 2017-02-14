#!/usr/bin/python

# This class is used to interface with the local database (assuming it's set up......)
#
#
import base64
import conninfo
from pymongo import MongoClient
import pymongo

class DatabaseConnection():

    def __init__(self, conn):
        self.u = base64.b64decode(conn.MU)
        self.p = base64.b64decode(conn.MP)
        self.db_host = "localhost"
        self.db_name = "mithren-db"
        self.database_instance = None

    def connect(self):
        uri = "mongodb://%s:%s@%s" % (self.u, self.p, self.db_host)
        client = MongoClient(uri)
        self.database_instance = client[self.db_name]

    def getDatabase(self):
        return self.database_instance

# conninfo = conninfo.ConnInfo()
# database = DatabaseConnection(conninfo)
# client = database.connect()
