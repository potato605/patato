import sys
sys.path.insert(0, "./src")
from greetlab.cli import main

def test_blank_name():
    sys.argv = ["cli", "--name", "   "]
    try:
        main()
        assert False, "本该抛出SystemExit，但是没有抛出"
    except SystemExit as e:
        assert e.code == 2, f"期望code=2，实际得到{e.code}"

def test_normal():
    sys.argv = ["cli", "--name", "25020007128"]
    main()

if __name__ == "__main__":
    test_blank_name()
    test_normal()
    print("全部测试通过")
