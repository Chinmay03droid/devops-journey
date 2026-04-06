FROM ubuntu:20.04
COPY file_info.sh /file_info.sh
RUN chmod +x /file_info.sh
ENTRYPOINT ["/file_info.sh"]
