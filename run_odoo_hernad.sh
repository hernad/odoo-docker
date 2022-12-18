docker run -p 8069:8069 --rm --name odoo --link db:db  \
	-v /root/odoo/odoo/odoo:/usr/lib/python3/dist-packages/odoo \
	-v /root/var_odoo:/var/lib/odoo \
	-v /root/odoo/odoo/addons:/mnt/extra-addons \
	-t odoo-hernad

