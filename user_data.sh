#!/bin/bash
set -e
cat >/home/ubuntu/go.sh <<LIFE
#!/bin/bash
set -e
export PATH=$PATH:/home/ubuntu/miniconda3/bin

# Switch to the ubuntu User and do everything.
wget -q https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
conda create -n vala python=3 jupyter pandas numpy xlrd -y
source activate vala
pip install imdbpie
jupyter notebook --generate-config

# Setting auth details so we can log in!
cat >/home/ubuntu/.jupyter/jupyter_notebook_config.py <<EOF
c.NotebookApp.token    = 'vala'
c.NotebookApp.password = ''
EOF

sudo apt install -y unzip

# Launch!
cd /home/ubuntu/                                                            && \
  mkdir notebooks                                                           && \
  cd notebooks                                                              && \
  wget -q http://files.grouplens.org/datasets/movielens/ml-latest-small.zip && \
  unzip -j ml-latest-small.zip -d data && \
  jupyter notebook --ip 0.0.0.0 --port 8888
LIFE

cd /home/ubuntu && sudo su ubuntu -c "bash go.sh"
