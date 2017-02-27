#!/usr/bin/python
import smtplib
from email.MIMEMultipart import MIMEMultipart
from email.MIMEText import MIMEText

#Put these here datas in a configuramacation file

class EmailAgent():

    def __init__(self, logger, config):
        self.from_addr = "mithoren"
        self.to_addr = "-"
        self.subject = "Are You Experienced?"
        self.config = config
        #"""From: From Mithoren <mithoren@nullbrook.org>
        #                To: To Michael Wolf <wolfmi13@gmail.com>
        #                MIME-Version: 1.0
        #                Content-type: text/html
        #                Subject: SMTP HTML e-mail test
        #                """
        self.header = "No header"
        self.message = "Report failed"
        self.logger = logger

    def get_config(self):
        return self.config

    def set_message(self, message):
        self.message = "Here: %s" % message

    def set_header(self, email_name, email_address):
        self.header = """From: From %s <%s>
                        To: To %s <%s>
                        MIME-Version: 1.0
                        Content-type: text/html
                        Subject: %s
                        """ % (self.config['mithren-name'],
                               self.config['mithren-email'],
                               email_name,
                               email_address,
                               self.config['subject'])

    def send_email(self):
        try:
           smtpObj = smtplib.SMTP('localhost')
           for recipient in self.config['receiver-emails']:
               self.set_header(recipient['email-name'], recipient['email-address'])
               body = "%s%s" % (self.header, self.message)
               print body
               smtpObj.sendmail(self.from_addr, self.to_addr, body)
           print "Successfully sent email"
       except smtplib.SMTPException as e:
           print e
           print "Error: unable to send email"
