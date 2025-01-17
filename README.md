# 1. 原理
- 第一次先运行start-create-vpn.bat脚本，测试cf优选ip，并生成vpn配置文件
- 上一步完成后，运行start-proxy.bat，会自动配置代理
- 如果要停止，运行stop-proxy.bat，就会自动清除代理
- 如果发现网速慢或者无法连网了，可以重新测试优选ip和生成配置，运行start-create-vpn.bat

*本项目仅限在windows系统运行

备注：本项目仅用于学习和娱乐
