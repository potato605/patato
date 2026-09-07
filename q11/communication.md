## Issue
### 环境
操作系统：Windows，Python版本：待确认

### 复现命令
```bash
sdt-greet --name "   "
期望结果
输入仅空白字符的 name 参数，程序终止，以退出码 2 结束，不输出问候语。
实际结果
程序输出 Hello, !，进程以退出码 0 正常退出。
Git 提交信息
校验name空白输入，空白名称抛出SystemExit(2)
问题：--name传入仅含空格字符串，程序仍然输出问候，缺少校验。
方案：判断name.strip()为空时，raise SystemExit(2)退出。
评审意见
Blocking：缺少空白 name 参数校验逻辑
风险：空白名字会错误输出问候，不符合需求
建议动作：增加空白字符判断，空白输入触发 SystemExit (2)，补充测试用例
