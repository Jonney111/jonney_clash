FROM ubuntu:24.04

# 安装必需工具和依赖项
COPY packages.txt /tmp/packages.txt
RUN apt-get update && \
    xargs apt-get install -y < /tmp/packages.txt && \
    apt-get clean && rm -rf /var/lib/apt/lists/

# 设置默认环境变量
ENV USERNAME=user
ENV PASSWORD=password

# 启动时动态创建用户并设置权限
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Use entrypoint to dynamically configure the user environment
ENTRYPOINT ["/entrypoint.sh"]

# 暴露 SSH 端口
EXPOSE 22


# 启动 SSH 服务
CMD ["/usr/sbin/sshd", "-D"]

