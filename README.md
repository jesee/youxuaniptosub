原理
       运用cftest.exe脚本跑ip延迟测试和网速，之后会生成result.txt和result.csv并自动提交到git仓库，在git仓库中复制result.txt的下载链接
       这个可以直接当订阅链接使用，在v2ray、clash、karing中可以直接导入
       需要注意的点：生成的节点不能用tun模式运行，实测很慢或超时，只能用系统代理跑

使用说明
       1、打上star并fork当前项目
       2、git clone到本地，或者下载zip压缩包到本地
       3、运行根目录下的auto.bat
       4、到git仓库中复制result.txt的下载链接
       5、在飞机软件中导入订阅就ok了
