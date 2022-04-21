# Deploy odoo

Este repositorio tiene como fin nuclear insumos para una implementación limpia desde cero del sistema de gestión ERP odoo en la versión 13 y con la localización argentina.
Se proporcionan los archivos necesarios para ejecutar en formato sh


## Requisitos 
Sistema Operativo ubuntu 20.04
acceso a usurio root

## Lista de módulos
Aquí la Lista completa de los 1757 módulos que se agregan disponibles para instalar en la implmentación y amplian funcionalidades.
https://github.com/ganarganar/deployodoo/blob/master/ir.module.module.csv

## Importante
Solo se ejecutan los requirements.txt de odoo y la implementación de odoo-argentina y odoo-argentina-ce. 
Antes de implementar cualquiera de los módulos en la carpeta debe revisar ejecutar el requirements.txt correspondiente. 

## Pasos

1- Clone el repositorio en la carpeta raiz <br/>
2- Dé permisos al archivo deployodoo.sh # chmod +x deployodoo.sh <br/>
3- Ejecutar el archivo deployodoo.sh # sh deployodoo.sh <br/>
4- Prestar atención al proceso y aceptar con Y a las consultas dse instalación <br/>
5- agregar la siguiente linea al inicio del archivo /etc/ssl/openssl.cnf <br/>
    openssl_conf = default_conf <br/>
6- habilitar puerto TCP 8069.

## Addons
dejo la lista de los addons para declarar en el archivo odoo.conf<br/>
addons_path =  /opt/odoo/odoo/addons,/opt/odoo/odoo/custom/src/ganarganar-pos,/opt/odoo/odoo/custom/src/ganarganar-theme-clarico-vega,/opt/odoo/odoo/custom/src/ingadhoc-aeroo_reports,/opt/odoo/odoo/custom/src/ingadhoc-account-financial-tools,/opt/odoo/odoo/custom/src/ingadhoc-account-payment,/opt/odoo/odoo/custom/src/ingadhoc-account-invoicing,/opt/odoo/odoo/custom/src/ingadhoc-argentina-reporting,/opt/odoo/odoo/custom/src/ingadhoc-argentina-sale,/opt/odoo/odoo/custom/src/ingadhoc-miscellaneous,/opt/odoo/odoo/custom/src/ingadhoc-multi-company,/opt/odoo/odoo/custom/src/ingadhoc-odoo-argentina,/opt/odoo/odoo/custom/src/ingadhoc-odoo-argentina-ce,/opt/odoo/odoo/custom/src/ingadhoc-partner,/opt/odoo/odoo/custom/src/ingadhoc-product,/opt/odoo/odoo/custom/src/ingadhoc-purchase,/opt/odoo/odoo/custom/src/ingadhoc-reporting-engine,/opt/odoo/odoo/custom/src/ingadhoc-sale,/opt/odoo/odoo/custom/src/ingadhoc-stock,/opt/odoo/odoo/custom/src/ingadhoc-website,/opt/odoo/odoo/custom/src/itpp-labs-misc-addons,/opt/odoo/odoo/custom/src/itpp-labs-pos-addons,/opt/odoo/odoo/custom/src/oca-account-analytic,/opt/odoo/odoo/custom/src/oca-account-closing,/opt/odoo/odoo/custom/src/oca-account-financial-tools,/opt/odoo/odoo/custom/src/oca-account-financial-reporting,/opt/odoo/odoo/custom/src/oca-account-invoice-reporting,/opt/odoo/odoo/custom/src/oca-account-invoicing,/opt/odoo/odoo/custom/src/oca-bank-payment,/opt/odoo/odoo/custom/src/oca-brand,/opt/odoo/odoo/custom/src/oca-commission,/opt/odoo/odoo/custom/src/oca-connector,/opt/odoo/odoo/custom/src/oca-contract,/opt/odoo/odoo/custom/src/oca-crm,/opt/odoo/odoo/custom/src/oca-currency,/opt/odoo/odoo/custom/src/oca-event,/opt/odoo/odoo/custom/src/oca-e-commerce,/opt/odoo/odoo/custom/src/oca-fleet,/opt/odoo/odoo/custom/src/oca-geospatial,/opt/odoo/odoo/custom/src/oca-helpdesk,/opt/odoo/odoo/custom/src/oca-hr,/opt/odoo/odoo/custom/src/oca-hr-attendance,/opt/odoo/odoo/custom/src/oca-hr-expense,/opt/odoo/odoo/custom/src/oca-hr-holidays,/opt/odoo/odoo/custom/src/oca-maintenance,/opt/odoo/odoo/custom/src/oca-mis-builder,/opt/odoo/odoo/custom/src/oca-multi-company,/opt/odoo/odoo/custom/src/oca-partner-contact,/opt/odoo/odoo/custom/src/oca-product-attribute,/opt/odoo/odoo/custom/src/oca-product-pack,/opt/odoo/odoo/custom/src/oca-product-variant,/opt/odoo/odoo/custom/src/oca-project,/opt/odoo/odoo/custom/src/oca-project-reporting,/opt/odoo/odoo/custom/src/oca-purchase-workflow,/opt/odoo/odoo/custom/src/oca-queue,/opt/odoo/odoo/custom/src/oca-report-print-send,/opt/odoo/odoo/custom/src/oca-reporting-engine,/opt/odoo/odoo/custom/src/oca-rest-framework,/opt/odoo/odoo/custom/src/oca-rma,/opt/odoo/odoo/custom/src/oca-sale-reporting,/opt/odoo/odoo/custom/src/oca-sale-workflow,/opt/odoo/odoo/custom/src/oca-server-auth,/opt/odoo/odoo/custom/src/oca-server-backend,/opt/odoo/odoo/custom/src/oca-server-brand,/opt/odoo/odoo/custom/src/oca-server-env,/opt/odoo/odoo/custom/src/oca-server-tools,/opt/odoo/odoo/custom/src/oca-server-ux,/opt/odoo/odoo/custom/src/oca-social,/opt/odoo/odoo/custom/src/oca-stock-logistics-warehouse,/opt/odoo/odoo/custom/src/oca-stock-logistics-workflow,/opt/odoo/odoo/custom/src/oca-timesheet,/opt/odoo/odoo/custom/src/oca-web,/opt/odoo/odoo/custom/src/oca-website,/opt/odoo/odoo/custom/src/oca-wms
