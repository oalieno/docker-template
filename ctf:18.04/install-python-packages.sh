export PATH="/root/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pyenv global 3.7.0

pip install --upgrade pip
pip install git+https://github.com/arthaud/python3-pwntools.git
pip install virtualenv
pip install pycrypto
pip install gmpy2
pip install mersenne-twister-predictor
pip install hashpumpy
pip install git+https://github.com/elliptic-shiho/primefac-fork@master
pip install git+https://github.com/p4-team/crypto-commons.git
pip install git+https://github.com/ReFirmLabs/binwalk.git
pip install git+https://github.com/OAlienO/crytools.git

pyenv global 2.7.15

pip install --upgrade pip
pip install pwntools
pip install angr

pyenv global system

pip install --upgrade pip
pip install git+https://github.com/OAlienO/remote.git
pip3 install --upgrade pip
