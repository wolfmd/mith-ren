#!/usr/bin/python

# This class is used to interface with the local database (assuming it's set up......)
#
#
import base64
import conninfo

class DatabaseConnection():

    def __init__(self, conn):
        self.u = base64.b64decode(conn.MU)
        self.p = base64.b64decode(conn.MP)
        self.db_host = "localhost"
        self.db_name = "mithren-db"

conninfo = conninfo.ConnInfo()
database = DatabaseConnection(conninfo)
print database.u
print database.p
