#```
## yum install nginx -y
## systemctl enable nginx
## systemctl start nginx
#
#```
#
#Let's download the HTDOCS content and deploy under the Nginx path.
#
#```
## curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
#
#```
#
#Deploy in Nginx Default Location.
#
#```
## cd /usr/share/nginx/html
## rm -rf *
## unzip /tmp/frontend.zip
## mv frontend-main/* .
## mv static/* .
## rm -rf frontend-master README.md
## mv localhost.conf /etc/nginx/default.d/roboshop.conf
#
#```
#
#Finally restart the service once to effect the changes.
#
#```
## systemctl restart nginx
#
#```


LOG_FILE=/tmp/roboshop.log
rm -f $LOG_FILE
echo installing nginx
yum install nginx -y &>>$LOG_FILE

echo "Download frontend contents"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip" &>>$LOG_FILE
echo "clean old content"
rm -rf cd /usr/share/nginx/html/* &>>$LOG_FILE

echo "extract frontend content"
cd /tmp
unzip -o frontend.zip &>>$LOG_FILE

echo "copy extracted content to nginx path"
copy -r frontend-mainstatic/* /usr/share/nginx/html/* &>>$LOG_FILE

echo "copy Nginx roboshop config"
cp frontend-main/localhost.conf /etc/nginx/default.d/roboshop.conf &>>$LOG_FILE

echo "start service"
systemctl enable nginx &>>$LOG_FILE
systemctl start nginx &>>$LOG_FILE

