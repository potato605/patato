import subprocess
import pytest


def test_cli_normal_name():
    # 正常姓名测试
    result = subprocess.run(["sdt-greet", "--name", "Alice"], capture_output=True, text=True)
    assert result.returncode == 0
    assert result.stdout.strip() == "Hello, Alice!"


def test_cli_blank_name():
    # 空白姓名测试（全空格，预期退出码2）
    result = subprocess.run(["sdt-greet", "--name", "   "], capture_output=True, text=True)
    assert result.returncode == 2
