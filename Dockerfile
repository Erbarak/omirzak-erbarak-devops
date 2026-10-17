FROM alpine:latest
WORKDIR /app
COPY app/app.sh /app/app.sh
COPY Omirzak_Erbarak_info.txt /app/Omirzak_Erbarak_info.txt
RUN chmod +x /app/app.sh
ENV STUDENT_NAME=Erbarak \
    STUDENT_SURNAME=Omirzak \
    STUDENT_GROUP=IT2-2306 \
    STUDENT_ID=37403
EXPOSE 8080
CMD ["./app.sh"]
