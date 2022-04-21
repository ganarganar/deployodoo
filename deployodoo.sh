##// https://ganargan.ar INSTALACIÓN ODOO 13
##// Renombramos el actual source.list y descargamos una copia de source.list por default.
mv /etc/apt/sources.list /etc/apt/sources.list.old
wget -P /etc/apt/ https://github.com/ganarganar/deployodoo/blob/master/sources.list
##// Se realiza update/upgrade.
apt-get update
apt-get upgrade
##// Se agrega usuario, grupo y carpeta odoo.
adduser --system --quiet --shell=/bin/bash --home=/opt/odoo --gecos 'odoo' --group odoo
#// Se crea los directorios para odoo tanto directorio de instalación como el log.
mkdir /etc/odoo && mkdir /var/log/odoo
#// Se instala el motor de base de datos PostgreSQL.
apt-get install postgresql postgresql-server-dev-12
#// Instalación de Libreria pip3.
sudo apt-get install -y python3 python3-pip git wget
#// Instalación de librerías de python.
apt-get install build-essential python3-pil python3-lxml python3-ldap3 python3-dev python3-setuptools npm nodejs gdebi libldap2-dev libsasl2-dev libxml2-dev libxslt1-dev libjpeg-dev python3-venv python3-wheel libxslt-dev libzip-dev swig node-less gcc libpq-dev python-dev libffi-dev libssl-dev libcups2-dev -y
#// Instalación Dependencias PIP.
pip3 install PyPDF2 Werkzeug==0.11.15 python-dateutil reportlab psycopg2-binary pyOpenSSL
#// Clonación el repositorio de instalación desde odoo oficial.
git clone --depth 1 --branch 13.0 https://github.com/odoo/odoo /opt/odoo/odoo
#// damos permiso a la carpeta donde va a estar la aplicación.
chown odoo:odoo /opt/odoo/ -R
chown odoo:odoo /var/log/odoo/ -R
#// Se instalan los requerimientos de odoo.
pip3 install -r /opt/odoo/odoo/requirements.txt
#// Se clonan los paquetes de la localización argentina y se instalan sus requerimientos.
mkdir /opt/odoo/odoo/custom/
mkdir /opt/odoo/odoo/custom/src
git clone --depth 1 --branch 13.0 https://github.com/ganarganar/pos /opt/odoo/odoo/custom/src/ganarganar-pos
git clone --depth 1 --branch 13.0 https://github.com/ganarganar/theme-clarico-vega /opt/odoo/odoo/custom/src/ganarganar-theme-clarico-vega
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/aeroo_reports /opt/odoo/odoo/custom/src/ingadhoc-aeroo_reports
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/account-financial-tools /opt/odoo/odoo/custom/src/ingadhoc-account-financial-tools
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/account-payment /opt/odoo/odoo/custom/src/ingadhoc-account-payment
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/account-invoicing /opt/odoo/odoo/custom/src/ingadhoc-account-invoicing
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/argentina-reporting /opt/odoo/odoo/custom/src/ingadhoc-argentina-reporting
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/argentina-sale /opt/odoo/odoo/custom/src/ingadhoc-argentina-sale
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/miscellaneous /opt/odoo/odoo/custom/src/ingadhoc-miscellaneous
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/multi-company /opt/odoo/odoo/custom/src/ingadhoc-multi-company
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/odoo-argentina /opt/odoo/odoo/custom/src/ingadhoc-odoo-argentina
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/odoo-argentina-ce /opt/odoo/odoo/custom/src/ingadhoc-odoo-argentina-ce
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/partner /opt/odoo/odoo/custom/src/ingadhoc-partner
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/product /opt/odoo/odoo/custom/src/ingadhoc-product
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/purchase /opt/odoo/odoo/custom/src/ingadhoc-purchase
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/reporting-engine /opt/odoo/odoo/custom/src/ingadhoc-reporting-engine
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/sale /opt/odoo/odoo/custom/src/ingadhoc-sale
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/stock /opt/odoo/odoo/custom/src/ingadhoc-stock
git clone --depth 1 --branch 13.0 https://github.com/ingadhoc/website /opt/odoo/odoo/custom/src/ingadhoc-website
git clone --depth 1 --branch 13.0 https://github.com/itpp-labs/misc-addons /opt/odoo/odoo/custom/src/itpp-labs-misc-addons
git clone --depth 1 --branch 13.0 https://github.com/itpp-labs/pos-addons /opt/odoo/odoo/custom/src/itpp-labs-pos-addons
git clone --depth 1 --branch 13.0 https://github.com/OCA/account-analytic /opt/odoo/odoo/custom/src/oca-account-analytic
git clone --depth 1 --branch 13.0 https://github.com/OCA/account-closing /opt/odoo/odoo/custom/src/oca-account-closing
git clone --depth 1 --branch 13.0 https://github.com/OCA/account-financial-tools /opt/odoo/odoo/custom/src/oca-account-financial-tools
git clone --depth 1 --branch 13.0 https://github.com/OCA/account-financial-reporting /opt/odoo/odoo/custom/src/oca-account-financial-reporting
git clone --depth 1 --branch 13.0 https://github.com/OCA/account-invoice-reporting /opt/odoo/odoo/custom/src/oca-account-invoice-reporting
git clone --depth 1 --branch 13.0 https://github.com/OCA/account-invoicing /opt/odoo/odoo/custom/src/oca-account-invoicing
git clone --depth 1 --branch 13.0 https://github.com/OCA/bank-payment /opt/odoo/odoo/custom/src/oca-bank-payment
git clone --depth 1 --branch 13.0 https://github.com/OCA/brand /opt/odoo/odoo/custom/src/oca-brand
git clone --depth 1 --branch 13.0 https://github.com/OCA/commission /opt/odoo/odoo/custom/src/oca-commission
git clone --depth 1 --branch 13.0 https://github.com/OCA/connector /opt/odoo/odoo/custom/src/oca-connector
git clone --depth 1 --branch 13.0 https://github.com/OCA/contract /opt/odoo/odoo/custom/src/oca-contract
git clone --depth 1 --branch 13.0 https://github.com/OCA/crm /opt/odoo/odoo/custom/src/oca-crm
git clone --depth 1 --branch 13.0 https://github.com/OCA/currency /opt/odoo/odoo/custom/src/oca-currency
git clone --depth 1 --branch 13.0 https://github.com/OCA/event /opt/odoo/odoo/custom/src/oca-event
git clone --depth 1 --branch 13.0 https://github.com/OCA/e-commerce /opt/odoo/odoo/custom/src/oca-e-commerce
git clone --depth 1 --branch 13.0 https://github.com/OCA/fleet /opt/odoo/odoo/custom/src/oca-fleet
git clone --depth 1 --branch 13.0 https://github.com/OCA/geospatial /opt/odoo/odoo/custom/src/oca-geospatial
git clone --depth 1 --branch 13.0 https://github.com/OCA/helpdesk /opt/odoo/odoo/custom/src/oca-helpdesk
git clone --depth 1 --branch 13.0 https://github.com/OCA/hr /opt/odoo/odoo/custom/src/oca-hr
git clone --depth 1 --branch 13.0 https://github.com/OCA/hr-attendance /opt/odoo/odoo/custom/src/oca-hr-attendance
git clone --depth 1 --branch 13.0 https://github.com/OCA/hr-expense /opt/odoo/odoo/custom/src/oca-hr-expense
git clone --depth 1 --branch 13.0 https://github.com/OCA/hr-holidays /opt/odoo/odoo/custom/src/oca-hr-holidays
git clone --depth 1 --branch 13.0 https://github.com/OCA/maintenance /opt/odoo/odoo/custom/src/oca-maintenance
git clone --depth 1 --branch 13.0 https://github.com/OCA/mis-builder /opt/odoo/odoo/custom/src/oca-mis-builder
git clone --depth 1 --branch 13.0 https://github.com/OCA/multi-company /opt/odoo/odoo/custom/src/oca-multi-company
git clone --depth 1 --branch 13.0 https://github.com/OCA/partner-contact /opt/odoo/odoo/custom/src/oca-partner-contact
git clone --depth 1 --branch 13.0 https://github.com/OCA/product-attribute /opt/odoo/odoo/custom/src/oca-product-attribute
git clone --depth 1 --branch 13.0 https://github.com/OCA/product-pack /opt/odoo/odoo/custom/src/oca-product-pack
git clone --depth 1 --branch 13.0 https://github.com/OCA/product-variant /opt/odoo/odoo/custom/src/oca-product-variant
git clone --depth 1 --branch 13.0 https://github.com/OCA/project /opt/odoo/odoo/custom/src/oca-project
git clone --depth 1 --branch 13.0 https://github.com/OCA/project-reporting /opt/odoo/odoo/custom/src/oca-project-reporting
git clone --depth 1 --branch 13.0 https://github.com/OCA/purchase-workflow /opt/odoo/odoo/custom/src/oca-purchase-workflow
git clone --depth 1 --branch 13.0 https://github.com/OCA/queue /opt/odoo/odoo/custom/src/oca-queue
git clone --depth 1 --branch 13.0 https://github.com/OCA/report-print-send /opt/odoo/odoo/custom/src/oca-report-print-send
git clone --depth 1 --branch 13.0 https://github.com/OCA/reporting-engine /opt/odoo/odoo/custom/src/oca-reporting-engine
git clone --depth 1 --branch 13.0 https://github.com/OCA/rest-framework /opt/odoo/odoo/custom/src/oca-rest-framework
git clone --depth 1 --branch 13.0 https://github.com/OCA/rma /opt/odoo/odoo/custom/src/oca-rma
git clone --depth 1 --branch 13.0 https://github.com/OCA/sale-reporting /opt/odoo/odoo/custom/src/oca-sale-reporting
git clone --depth 1 --branch 13.0 https://github.com/OCA/sale-workflow /opt/odoo/odoo/custom/src/oca-sale-workflow
git clone --depth 1 --branch 13.0 https://github.com/OCA/server-auth /opt/odoo/odoo/custom/src/oca-server-auth
git clone --depth 1 --branch 13.0 https://github.com/OCA/server-backend /opt/odoo/odoo/custom/src/oca-server-backend
git clone --depth 1 --branch 13.0 https://github.com/OCA/server-brand /opt/odoo/odoo/custom/src/oca-server-brand
git clone --depth 1 --branch 13.0 https://github.com/OCA/server-env /opt/odoo/odoo/custom/src/oca-server-env
git clone --depth 1 --branch 13.0 https://github.com/OCA/server-tools /opt/odoo/odoo/custom/src/oca-server-tools
git clone --depth 1 --branch 13.0 https://github.com/OCA/server-ux /opt/odoo/odoo/custom/src/oca-server-ux
git clone --depth 1 --branch 13.0 https://github.com/OCA/social /opt/odoo/odoo/custom/src/oca-social
git clone --depth 1 --branch 13.0 https://github.com/OCA/stock-logistics-warehouse /opt/odoo/odoo/custom/src/oca-stock-logistics-warehouse
git clone --depth 1 --branch 13.0 https://github.com/OCA/stock-logistics-workflow /opt/odoo/odoo/custom/src/oca-stock-logistics-workflow
git clone --depth 1 --branch 13.0 https://github.com/OCA/timesheet /opt/odoo/odoo/custom/src/oca-timesheet
git clone --depth 1 --branch 13.0 https://github.com/OCA/web /opt/odoo/odoo/custom/src/oca-web
git clone --depth 1 --branch 13.0 https://github.com/OCA/website /opt/odoo/odoo/custom/src/oca-website
git clone --depth 1 --branch 13.0 https://github.com/OCA/wms /opt/odoo/odoo/custom/src/oca-wms
#// Se instalan los requerimientos de módulos de la localización argetnina.
pip3 install -r /opt/odoo/odoo/custom/src/ingadhoc-odoo-argentina/requirements.txt
pip3 install -r /opt/odoo/odoo/custom/src/ingadhoc-odoo-argentina-ce/requirements.txt
#// Se instala el gestor de paquetes less y plugins.
npm install -g rtlcss
npm install -g less less-plugin-clean-css -y
#// Se crea un link simbólico (puede dar error si ya ya se creó el link).
ln -s /usr/bin/nodejs /usr/bin/node
#//Se instala WkHTML2PDF.
wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb
dpkg -i wkhtmltox_0.12.5-1.bionic_amd64.deb
apt-get install -f
#// Se instala fuentes xfonts.
cd /usr/bin
apt-get install xfonts-base xfonts-75dpi -y
#// Se agrega repositorio y se instala desde la carpeta /tmp la librería libpng.
cd /tmp
add-apt-repository ppa:linuxuprising/libpng12
"/n"
#//hacemos un update de la lista e instalamos la librería
apt-get update && apt-get install libpng12-0
#// Se crea el usuario para la base de datos
cd
su - postgres -c "createuser -s odoo"
#// Se crea configuración de odoo
su - odoo -c "/opt/odoo/odoo/odoo-bin --addons-path=/opt/odoo/odoo/addons -s --stop-after-init"
#// Se crea el archivo de configuración de odoo
mv /opt/odoo/.odoorc /etc/odoo/odoo.conf
#// Modfificar proxy_mode logfile de forma manual el archivo /etc/odoo/odoo.conf y agregar la línea de logratate = True con los siguientes parámetros
#// Proxy_mode = True
#// logrotate = True
#// logfile = /var/log/odoo/odoo-server.log
#// Modificar el addons_path de forma manual el archivo /etc/odoo/odoo.conf y agregar la línea de repositorios custom que dejo en la descripción de
cp /opt/odoo/odoo/debian/init /etc/init.d/odoo
chmod +x /etc/init.d/odoo
#// Se crea un link simbolico al inicio de odoo
ln -s /opt/odoo/odoo/odoo-bin /usr/bin/odoo
#// Le decimos que levante odoo en los siguientes niveles
update-rc.d -f odoo start 20 2 3 4 5 .
service odoo start
service odoo status
#// verificar que se encuentre activo el puerto 8069 en el firewall de webserver
#// Dirigirse a la siguiente dirección
#// http:#//direccion_de_ip:8069/web/database/selector

#// Agregar la carpecha cache a pyafipws y darle permisos
mkdir /usr/local/lib/python3.8/dist-packages/pyafipws/cache
chmod 777 -R /usr/local/lib/python3.8/dist-packages/pyafipws/cache

#// Agregar configuración a OpenSSL
echo [ default_conf ] >> /etc/ssl/openssl.cnf
echo ssl_conf = ssl_sect >> /etc/ssl/openssl.cnf
echo [ssl_sect] >> /etc/ssl/openssl.cnf
echo system_default = system_default_sect >> /etc/ssl/openssl.cnf
echo [system_default_sect] >> /etc/ssl/openssl.cnf
echo MinProtocol = TLSv1.2
echo CipherString = DEFAULT:@SECLEVEL=1 >> /etc/ssl/openssl.cnf
