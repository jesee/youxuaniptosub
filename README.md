# 1. 原理
- 运用 `cftest.exe` 脚本跑 cloudflare官方优选IP 延迟测试和网速，之后会生成 `result.txt` 和 `result.csv` ，csv是测速结果文件，txt是优选ip订阅节点文件
- 如果运行auto.bat脚本，完成之后会得到一个订阅链接，可直接导入机场软件使用
- 适用于 v2ray、clash、karing 等软件直接导入。
- **注意**：生成的节点不能用 tun 模式运行，实测在此模式下速度较慢或超时，推荐使用系统代理模式运行。

# 2. 操作步骤
- 下载 zip 压缩包到本地并解压，或使用git clone到本地
- 直接双击运行根目录下的 auto.bat，运行完成后会得到一个订阅链接，然后将其导入到代理软件即可。
- 另外也可以将本地生成的result.txt文件导入机场软件也可以

备注：测速模块用的是XIU2/CloudflareSpeedTest
