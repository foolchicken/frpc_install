#! /bin/bash
FRP_VERSION="0.38.0"
#默认下载类型为linux64位系统
cd /usr/local
echo "frpc安装路径：/usr/local"
FRP_ENVIR="_linux_amd64"
echo "--------------------------------------"
echo "请输入对应数字来选择下载版本："
echo "1------linux_32"
echo "2------linux_64"
echo "3------linux_arm_32"
echo "4------linux_arm_64"
echo "--------------------------------------"
read -a choice

if [ ${choice} = 1 ] ; then     #按照输入选择下载类型
FRP_ENVIR="_linux_386"
echo "下载linux32位版本"
elif [ ${choice} = 2 ] ; then  
FRP_ENVIR="_linux_amd64"
echo "下载linux64位版本"
elif [ ${choice} = 3 ] ; then  
FRP_ENVIR="_linux_arm"
echo "下载linux_arm32位版本"
elif [ ${choice} = 4 ] ; then  
FRP_ENVIR="_linux_arm64"
echo "下载linux_arm64位版本"
else
FRP_ENVIR="_linux_amd64"
echo "下载linux64位版本"
fi                               #ifend

echo "开始下载"
echo "--------------------------------------"
wget https://github.com.cnpmjs.org/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}${FRP_ENVIR}.tar.gz#记得加


#加一个判断条件
echo "--------------------------------------"
echo "下载成功！"   
tar -xzvf frp_${FRP_VERSION}${FRP_ENVIR}.tar.gz
mv frp_${FRP_VERSION}${FRP_ENVIR} frp       #重命名文件
rm -f frp_${FRP_VERSION}${FRP_ENVIR}.tar.gz #删除下载包
cd frp
vi frpc.ini


