#!/bin/bash
MY_URL="http://kelvin.mbioq.com/"
RESULT=`curl -I $MY_URL|grep "HTTP/1.1 502"`
if [ -n "$RESULT" ]; then
        /etc/init.d/php-fpm restart
fi
## 给予可执行权限：

chmod +x /root/php.sh

## 通过 crontab 设置自动运行：

crontab -e



