# Stolen from Brandon Craig Rhodes (THANKS!!!):
# http://rhodesmill.org/brandon/2009/emacs-python-virtualenv/

# Change to the directory containing this script.
cd $(dirname "$0")

# Clean up directories left over from previous run.
DIRS=(Pymacs-0.23 rope-0.9.2 ropemacs-0.6c2 pyflakes-0.4.0)
rm -rf ../usr ${DIRS[@]}

# Create the virtualenv.
python2.6 virtualenv.py --distribute ../usr
source ../usr/bin/activate

# Unpack the four Python packages that Emacs needs.
tar xvfz Pymacs.tar.gz
tar xvfz rope-0.9.2.tar.gz
tar xvfz ropemacs-0.6c2.tar.gz
tar xvfz pyflakes-0.4.0.tar.gz

# Install them in "~/.emacs/usr" (the "python2.6" that
# gets called here is the one in the virtualenv, thanks
# to my having sourced its "activate" script up above).
for D in ${DIRS[@]}
do cd $D; python2.6 setup.py install; cd ..; done

# Make fresh pymacs.el symlink from ~/.emacs
rm -f ../vendor/pymacs.el
ln -s src/Pymacs-0.23/pymacs.el ../vendor/pymacs.el