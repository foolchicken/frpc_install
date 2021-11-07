# frpc_install
项目简介：
内网穿透中frp是一个常用的方式，我把frpc客户端常用的命令集合在一个脚本中，可以自己选择需要安装的frpc版本.

基于 fatedier/frp 原版 frp 内网穿透客户端 frpc 的一键安装脚本，支持群晖NAS(适合64位32位linux系统和linux_arm系统).

fatedier/frp项目：https://github.com/fatedier/frp
# 可选版本：
1. linux_386(32位linux)
2. linux_amd64(64位linux)
3. linux_arm(32位linux_arm)
4. linux_arm64(64位linux_arm)

适合64/32位黑群晖、猫盘等nas设备的内网穿透
# 使用方法：(用root权限)
1. 下载脚本文件：

> https://raw.githubusercontent.com/foolchicken/frpc_install/main/frpc_install.sh

2. 给脚本添加权限：

> chmod +x frpc_install.sh

3. 运行脚本：

> sh frpc_install.sh

如果运行成功在弹出的vi编辑器里会显示frpc.ini的默认配置

# 备注：
默认安装目录在 /usr/local，文件名为frp
