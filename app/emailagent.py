#!/usr/bin/python
import smtplib
from email.MIMEMultipart import MIMEMultipart
from email.MIMEText import MIMEText

#Put these here datas in a configuramacation file

class EmailAgent():
    def __init__(self):
        self.from_addr = "mithoren@nullbrook.org"
        self.to_addr = "wolfmi13@gmail.com"
        self.subject = "Are You Experienced?"
        # This is the daemon which runs each module
        self.message = """From: From Mithoren <mithoren@nullbrook.org>
                        To: To Michael Wolf <wolfmi13@gmail.com>
                        MIME-Version: 1.0
                        Content-type: text/html
                        Subject: SMTP HTML e-mail test

                        This is an e-mail message to be sent in HTML format

                        <b>This is HTML message.</b>
                        <h1>This is headline.</h1>
                        """

    def send_email(self):

        try:
           smtpObj = smtplib.SMTP('localhost')
           smtpObj.sendmail(self.from_addr, self.to_addr, self.message)
           print "Successfully sent email"
        except SMTPException:
           print "Error: unable to send email"
