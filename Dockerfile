# Tomcat 9.0 기반 이미지를 사용
FROM tomcat:9.0

# 필요한 경우, 추가적인 환경 변수 설정
#ENV MYSQL_HOST=mysql-container
#ENV MYSQL_PORT=3306
#ENV MYSQL_DATABASE=webcampdb
#ENV MYSQL_USER=root
#ENV MYSQL_PASSWORD=admin

# 웹 애플리케이션 WAR 파일을 Tomcat의 webapps 폴더에 복사
# 복사할 WAR 파일 경로는 해당 파일 위치에 맞게 조정
COPY ./target/CoupangSpring.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat을 기본 포트(8080)에서 실행
EXPOSE 8080

# Tomcat 서버 시작 명령
CMD ["catalina.sh", "run"]
