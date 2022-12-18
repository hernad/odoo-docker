
IMAGE=odoo-hernad

HOST=192.168.xx.yy
PORT=5xxxx
USER=admin
PASSWORD=pwdpwdpwd

docker run -p 8069:8069 -p 8072:8072 --rm --name odoo  \
	-e HOST=$HOST \
	-e PORT=$PORT \
	-e USER=$USER \
	-e PASSWORD=$PASSWORD \
        -v /root/odoo/odoo/odoo:/usr/lib/python3/dist-packages/odoo \
        -v /root/var_odoo:/var/lib/odoo \
        -v /root/odoo/odoo/addons:/mnt/extra-addons \
	-v /root/odoo/odoo_docker/customized.odoo.conf:/etc/odoo/odoo.conf \
        -t $IMAGE

