# Install python
choco install -y python --version=3.5.4

# Refresh path
refreshenv

# Update pip
python -m pip install --upgrade pip

# Install ML related python packages through pip
# pip install numpy
# pip install scipy
# pip install pandas
# pip install matplotlib
# pip install tensorflow
# pip install keras

# Get Visual Studio C++ Redistributables
# choco install -y vcredist2015


refreshenv
choco install -y python2 # Node.js requires Python 2 to build native modules
