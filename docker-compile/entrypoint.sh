#!/bin/bash

# 创建 /run/sshd 目录
mkdir -p /run/sshd

# 检查用户是否已存在，如果不存在则创建用户并设置密码
if id "$USERNAME" &>/dev/null; then
    echo "User $USERNAME already exists."
else
    useradd -m -s /bin/bash "$USERNAME"
    echo "$USERNAME:$PASSWORD" | chpasswd
    usermod -aG sudo "$USERNAME"
fi

# 如果目录不存在或为空，克隆 OpenWRT 仓库
if [ ! -d "/home/$USERNAME/openwrt/.git" ]; then
    git clone https://github.com/openwrt/openwrt.git /home/$USERNAME/openwrt
fi

# 设置工作目录权限
chown -R $USERNAME:$USERNAME /home/$USERNAME/openwrt

# 启动 SSH 服务
/usr/sbin/sshd -D &

# 启动 bash 作为默认 shell
exec "$@"

