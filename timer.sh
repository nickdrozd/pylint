export PYTHONPATH=$PYTHONPATH:~/pylint:~/astroid

PROJECT=~/pycodestyle/pycodestyle.py
# PROJECT=~/pylint/pylint/
# PROJECT=~/zulip/zerver/

for i in `seq 3`; do
    rm -r ~/pylint/pylint/__pycache__/
    rm -r ~/astroid/astroid/__pycache__/
    time ./bin/pylint -s n -r n $PROJECT
done
