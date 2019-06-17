import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.mime.image import MIMEImage
from email.mime.base import MIMEBase
from email import encoders

email_user = 'fernando.brito@inmetrics.com.br'
email_password = '$Change01'
email_send = 'fernando.brito@inmetrics.com.br'

subject = 'Reporte diário - Safra Mobile'

msg = MIMEMultipart()
msg['From'] = email_user
msg['To'] = email_send
msg['Subject'] = subject

body = 'Bom dia, anexo o report de execução do SAFRA MOBILE. Dúvidas, ficamos a disposição. Obrigado.' 
msg.attach(MIMEText(body,'plain'))

filename= 'C:/Projetos/safra_mobile_pj2/report.html'
attachment = open(filename,'rb')

part = MIMEBase('application','octet-stream')
part.set_payload((attachment).read())
encoders.encode_base64(part)
part.add_header('Content-Disposition',"attachment; filename = report.html")

msg.attach(part)
text = msg.as_string()
server = smtplib.SMTP('SMTP.office365.com',587)
server.starttls()
server.login(email_user,email_password)


server.sendmail(email_user,email_send,text)
server.quit()
