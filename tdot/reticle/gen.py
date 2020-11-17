import argparse
import sys

def parse_args():
    parser = argparse.ArgumentParser(description="generate layout")
    parser.add_argument("-c", dest="col", help="number of columns", type=int)
    parser.add_argument("-r", dest="row", help="number of rows", type=int)
    args = parser.parse_args()
    if not isinstance(args.col, int):
        print("Error: missing col")
        parser.print_help(sys.stderr)
        sys.exit(1)
    if not isinstance(args.row, int):
        print("Error: missing row")
        parser.print_help(sys.stderr)
        sys.exit(1)
    assert args.row >= 0 and args.col >= 0
    return args.col, args.row

if __name__ == "__main__":
    col, row = parse_args()
    for i in range(col*row):
        if i % row == 0:
            print("{},dsp".format(i))
        else:
            print("{},dsp,{}".format(i, i-1))
