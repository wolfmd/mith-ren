#!/usr/bin/python
import smtplib
from email.MIMEMultipart import MIMEMultipart
from email.MIMEText import MIMEText

#Put these here datas in a configuramacation file

class EmailAgent():

    def __init__(self, logger, config):
        self.from_addr = "mithoren@nullbrook.org"
        self.to_addr = "wolfmi13@gmail.com"
        self.subject = "Are You Experienced?"
        self.confg = config
        #"""From: From Mithoren <mithoren@nullbrook.org>
        #                To: To Michael Wolf <wolfmi13@gmail.com>
        #                MIME-Version: 1.0
        #                Content-type: text/html
        #                Subject: SMTP HTML e-mail test
        #                """
        self.header = "No header"
        self.message = "Report failed"
        self.logger = logger


    def set_message(self, message):
        self.message = "Here: %s" % message

    def set_header(self, email_name, email_address):
        """From: From %s <%s>
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
        body = "%s%s" % (self.header, self.message)
        try:
           smtpObj = smtplib.SMTP('localhost')
           smtpObj.sendmail(self.from_addr, self.to_addr, body)
           print "Successfully sent email"
        except SMTPException:
           print "Error: unable to send email"
