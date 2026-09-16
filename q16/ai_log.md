1.提示：name仅空白字符时main抛出SystemExit(2)，执行python test_cli.py验证
2.AI改动：增加if not a.name.strip(): raise SystemExit(2)
3.初测：修改完成后测试通过
4.diff检查：无无关多余修改
5.验证：空白触发SystemExit(2)，正常名字输出正常
