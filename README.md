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

Pasos

1- Clone el repositorio en la carpeta raiz <br/>
2- Dé permisos al archivo deployodoo.sh # chmod +x deployodoo.sh <br/>
3- Ejecutar el archivo deployodoo.sh # sh deployodoo.sh <br/>
4- Prestar atención al proceso y aceptar con Y a las consultas dse instalación <br/>
5- agregar la siguiente linea al inicio del archivo /etc/ssl/openssl.cnf <br/>
    openssl_conf = default_conf <br/>
6- habilitar puerto TCP 8069.
