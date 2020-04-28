FROM anatoliis01/archlinux-makepkg

COPY entrypoint.sh .

RUN mkdir -p /home/user/pkg

VOLUME /home/user/pkg

ENTRYPOINT ["./entrypoint.sh"]
