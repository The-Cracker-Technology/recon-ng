rm -rf /opt/ANDRAX/recon-ng

cp -Rf andraxbin/* /opt/ANDRAX/bin
chmod 755 /opt/ANDRAX/bin

WORKDIR=$(pwd)

cp -Rf $(pwd) /opt/ANDRAX/recon-ng

cd /opt/ANDRAX/recon-ng

python3 -m venv reconngenv

source reconngenv/bin/activate

pip3 install -r REQUIREMENTS

deactivate

cd $WORKDIR

