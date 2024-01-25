# PalWorld Server Scripts and Programs

based on ubuntu 22.04

Thanks to https://github.com/gorcon/rcon-cli helps a lot on auto broadcasting !

# use systemctl to control palworld server

remember: if you change the directory of ```/root/paru-shell``` , then you must change it also in ```palworld.service```

使用 systemctl 控制幻兽帕鲁服务端程序，注意： 如果更改目录 ```/root/paru-shell``` 则也需要同步在 ```palworld.service``` 中变更

```shell
mv linux/palworld.service /lib/systemd/system/palworld.service
mv linux/paru-shell /root/
systemctl daemon-reload
systemctl start palworld
systemctl status palworld
```

# init flask server

```shell
pip install -r requirements
```

# PyInstall

```shell
pip install pyinstaller
pyinstaller -F pal.py
# dist/pal is that you want
```

# Trigger

Any Elastic Cloud Server Product could do this . Set a memory alarm which send http request to the flask server , then it will works.

任何云厂商机器都可以触发，设置一个内存告警，给flask程序发送http请求，就会自动执行重启任务。

