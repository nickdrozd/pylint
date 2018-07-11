export PYTHONPATH=$PYTHONPATH:~/pylint:~/astroid

PROJECT=~/pycodestyle/pycodestyle.py
# PROJECT=~/pylint/pylint/
# PROJECT=~/zulip/zerver/

for i in `seq 1`; do
    rm -r ~/pylint/pylint/__pycache__/
    rm -r ~/astroid/astroid/__pycache__/
    time ./bin/pylint -s n -r n $PROJECT
done

gprof2dot yappi.callgrind -f callgrind --colour-nodes-by-selftime | dot -Tpng -o yappi.png
