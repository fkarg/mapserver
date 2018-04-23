#!/usr/bin/env bash

set -e
set -u

BAG_DB_HOST=${BAG_DB_HOST:-bag-read.service.consul}
BAG_DB_PORT=${BAG_DB_PORT:-5432}
BAG_DB_NAME=${BAG_DB_NAME:-bag}
BAG_DB_USER=${BAG_DB_USER:-${BAG_DB_NAME}}
BAG_DB_PASSWORD=${BAG_DB_PASSWORD:-insecure}

NAP_DB_HOST=${NAP_DB_HOST:-nap-read.service.consul}
NAP_DB_PORT=${NAP_DB_PORT:-5432}
NAP_DB_NAME=${NAP_DB_NAME:-nap}
NAP_DB_USER=${NAP_DB_USER:-${NAP_DB_NAME}}
NAP_DB_PASSWORD=${NAP_DB_PASSWORD:-insecure}

MILIEUTHEMAS_DB_HOST=${MILIEUTHEMAS_DB_HOST:-milieuthemas-read.service.consul}
MILIEUTHEMAS_DB_PORT=${MILIEUTHEMAS_DB_PORT:-5432}
MILIEUTHEMAS_DB_NAME=${MILIEUTHEMAS_DB_NAME:-milieuthemas}
MILIEUTHEMAS_DB_USER=${MILIEUTHEMAS_DB_USER:-${MILIEUTHEMAS_DB_NAME}}
MILIEUTHEMAS_DB_PASSWORD=${MILIEUTHEMAS_DB_PASSWORD:-insecure}

PANORAMA_DB_HOST=${PANORAMA_DB_HOST:-panorama-read.service.consul}
PANORAMA_DB_PORT=${PANORAMA_DB_PORT:-5432}
PANORAMA_DB_NAME=${PANORAMA_DB_NAME:-panorama}
PANORAMA_DB_USER=${PANORAMA_DB_USER:-${PANORAMA_DB_NAME}}
PANORAMA_DB_PASSWORD=${PANORAMA_DB_PASSWORD:-insecure}

PARKEERVAKKEN_DB_HOST=${PARKEERVAKKEN_DB_HOST:-parkeervakken-read.service.consul}
PARKEERVAKKEN_DB_PORT=${PARKEERVAKKEN_DB_PORT:-5432}
PARKEERVAKKEN_DB_NAME=${PARKEERVAKKEN_DB_NAME:-parkeervakken}
PARKEERVAKKEN_DB_USER=${PARKEERVAKKEN_DB_USER:-${PARKEERVAKKEN_DB_NAME}}
PARKEERVAKKEN_DB_PASSWORD=${PARKEERVAKKEN_DB_PASSWORD:-insecure}

PREDICTIVEPARKING_DB_HOST=${PREDICTIVEPARKING_DB_HOST:-predictiveparking-read.service.consul}
PREDICTIVEPARKING_DB_PORT=${PREDICTIVEPARKING_DB_PORT:-5432}
PREDICTIVEPARKING_DB_NAME=${PREDICTIVEPARKING_DB_NAME:-predictiveparking}
PREDICTIVEPARKING_DB_USER=${PREDICTIVEPARKING_DB_USER:-${PREDICTIVEPARKING_DB_NAME}}
PREDICTIVEPARKING_DB_PASSWORD=${PREDICTIVEPARKING_DB_PASSWORD:-insecure}

BASISKAART_DB_HOST=${BASISKAART_DB_HOST:-basiskaart-read.service.consul}
BASISKAART_DB_PORT=${BASISKAART_DB_PORT:-5432}
BASISKAART_DB_NAME=${BASISKAART_DB_NAME:-basiskaart}
BASISKAART_DB_USER=${BASISKAART_DB_USER:-${BASISKAART_DB_NAME}}
BASISKAART_DB_PASSWORD=${BASISKAART_DB_PASSWORD:-insecure}

HANDELSREGISTER_DB_HOST=${HANDELSREGISTER_DB_HOST:-handelsregister-read.service.consul}
HANDELSREGISTER_DB_PORT=${HANDELSREGISTER_DB_PORT:-5432}
HANDELSREGISTER_DB_NAME=${HANDELSREGISTER_DB_NAME:-handelsregister}
HANDELSREGISTER_DB_USER=${HANDELSREGISTER_DB_USER:-${HANDELSREGISTER_DB_NAME}}
HANDELSREGISTER_DB_PASSWORD=${HANDELSREGISTER_DB_PASSWORD:-insecure}

TELLUS_DB_HOST=${TELLUS_DB_HOST:-tellus-read.service.consul}
TELLUS_DB_PORT=${TELLUS_DB_PORT:-5432}
TELLUS_DB_NAME=${TELLUS_DB_NAME:-tellus}
TELLUS_DB_USER=${TELLUS_DB_USER:-${TELLUS_DB_NAME}}
TELLUS_DB_PASSWORD=${TELLUS_DB_PASSWORD:-insecure}

MONUMENTEN_DB_HOST=${MONUMENTEN_DB_HOST:-monumenten-read.service.consul}
MONUMENTEN_DB_PORT=${MONUMENTEN_DB_PORT:-5432}
MONUMENTEN_DB_NAME=${MONUMENTEN_DB_NAME:-monumenten}
MONUMENTEN_DB_USER=${MONUMENTEN_DB_USER:-${MONUMENTEN_DB_NAME}}
MONUMENTEN_DB_PASSWORD=${MONUMENTEN_DB_PASSWORD:-insecure}

OVERLASTGEBIEDEN_DB_HOST=${OVERLASTGEBIEDEN_DB_HOST:-overlastgebieden-read.service.consul}
OVERLASTGEBIEDEN_DB_PORT=${OVERLASTGEBIEDEN_DB_PORT:-5432}
OVERLASTGEBIEDEN_DB_NAME=${OVERLASTGEBIEDEN_DB_NAME:-overlastgebieden}
OVERLASTGEBIEDEN_DB_USER=${OVERLASTGEBIEDEN_DB_USER:-${OVERLASTGEBIEDEN_DB_NAME}}
OVERLASTGEBIEDEN_DB_PASSWORD=${OVERLASTGEBIEDEN_DB_PASSWORD:-insecure}

REISTIJDENAUTO_DB_HOST=${REISTIJDENAUTO_DB_HOST:-reistijdenauto-read.service.consul}
REISTIJDENAUTO_DB_PORT=${REISTIJDENAUTO_DB_PORT:-5432}
REISTIJDENAUTO_DB_NAME=${REISTIJDENAUTO_DB_NAME:-reistijdenauto}
REISTIJDENAUTO_DB_USER=${REISTIJDENAUTO_DB_USER:-${REISTIJDENAUTO_DB_NAME}}
REISTIJDENAUTO_DB_PASSWORD=${REISTIJDENAUTO_DB_PASSWORD:-insecure}

GRONDEXPLOITATIE_DB_HOST=${GRONDEXPLOITATIE_DB_HOST:-grondexploitatie-read.service.consul}
GRONDEXPLOITATIE_DB_PORT=${GRONDEXPLOITATIE_DB_PORT:-5432}
GRONDEXPLOITATIE_DB_NAME=${GRONDEXPLOITATIE_DB_NAME:-grondexploitatie}
GRONDEXPLOITATIE_DB_USER=${GRONDEXPLOITATIE_DB_USER:-${GRONDEXPLOITATIE_DB_NAME}}
GRONDEXPLOITATIE_DB_PASSWORD=${GRONDEXPLOITATIE_DB_PASSWORD:-insecure}

DATASELECTIE_DB_HOST=${DATASELECTIE_DB_HOST:-dataselectie-read.service.consul}
DATASELECTIE_DB_PORT=${DATASELECTIE_DB_PORT:-5432}
DATASELECTIE_DB_NAME=${DATASELECTIE_DB_NAME:-dataselectie}
DATASELECTIE_DB_USER=${DATASELECTIE_DB_USER:-${DATASELECTIE_DB_NAME}}
DATASELECTIE_DB_PASSWORD=${DATASELECTIE_DB_PASSWORD:-insecure}

VARIOUS_SMALL_DATASETS_DB_HOST=${VARIOUS_SMALL_DATASETS_DB_HOST:-various_small_datasets-read.service.consul}
VARIOUS_SMALL_DATASETS_DB_PORT=${VARIOUS_SMALL_DATASETS_DB_PORT:-5432}
VARIOUS_SMALL_DATASETS_DB_NAME=${VARIOUS_SMALL_DATASETS_DB_NAME:-various_small_datasets}
VARIOUS_SMALL_DATASETS_DB_USER=${VARIOUS_SMALL_DATASETS_DB_USER:-${VARIOUS_SMALL_DATASETS_DB_NAME}}
VARIOUS_SMALL_DATASETS_DB_PASSWORD=${VARIOUS_SMALL_DATASETS_DB_PASSWORD:-insecure}

AFVALCONTAINERS_DB_HOST=${AFVALCONTAINERS_DB_HOST:-afvalcontainers-read.service.consul}
AFVALCONTAINERS_DB_PORT=${AFVALCONTAINERS_DB_PORT:-5432}
AFVALCONTAINERS_DB_NAME=${AFVALCONTAINERS_DB_NAME:-afvalcontainers}
AFVALCONTAINERS_DB_USER=${AFVALCONTAINERS_DB_USER:-${AFVALCONTAINERS_DB_NAME}}
AFVALCONTAINERS_DB_PASSWORD=${AFVALCONTAINERS_DB_PASSWORD:-insecure}


echo Creating configuration files

cat > /srv/mapserver/connection.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${BAG_DB_HOST} dbname=${BAG_DB_NAME} user=${BAG_DB_USER} password=${BAG_DB_PASSWORD} port=${BAG_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF

cat > /srv/mapserver/connection_nap.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${NAP_DB_HOST} dbname=${NAP_DB_NAME} user=${NAP_DB_USER} password=${NAP_DB_PASSWORD} port=${NAP_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF

cat > /srv/mapserver/connection_milieu.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${MILIEUTHEMAS_DB_HOST} dbname=${MILIEUTHEMAS_DB_NAME} user=${MILIEUTHEMAS_DB_USER} password=${MILIEUTHEMAS_DB_PASSWORD} port=${MILIEUTHEMAS_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF

cat > /srv/mapserver/connection_panorama.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${PANORAMA_DB_HOST} dbname=${PANORAMA_DB_NAME} user=${PANORAMA_DB_USER} password=${PANORAMA_DB_PASSWORD} port=${PANORAMA_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF

cat > /srv/mapserver/connection_parkeervakken.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${PARKEERVAKKEN_DB_HOST} dbname=${PARKEERVAKKEN_DB_NAME} user=${PARKEERVAKKEN_DB_USER} password=${PARKEERVAKKEN_DB_PASSWORD} port=${PARKEERVAKKEN_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF

cat > /srv/mapserver/connection_predictiveparking.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${PREDICTIVEPARKING_DB_HOST} dbname=${PREDICTIVEPARKING_DB_NAME} user=${PREDICTIVEPARKING_DB_USER} password=${PREDICTIVEPARKING_DB_PASSWORD} port=${PREDICTIVEPARKING_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF


cat > /srv/mapserver/connection_basiskaart.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${BASISKAART_DB_HOST} dbname=${BASISKAART_DB_NAME} user=${BASISKAART_DB_USER} password=${BASISKAART_DB_PASSWORD} port=${BASISKAART_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF

cat > /srv/mapserver/connection_handelsregister.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${HANDELSREGISTER_DB_HOST} dbname=${HANDELSREGISTER_DB_NAME} user=${HANDELSREGISTER_DB_USER} password=${HANDELSREGISTER_DB_PASSWORD} port=${HANDELSREGISTER_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF

cat > /srv/mapserver/connection_tellus.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${TELLUS_DB_HOST} dbname=${TELLUS_DB_NAME} user=${TELLUS_DB_USER} password=${TELLUS_DB_PASSWORD} port=${TELLUS_DB_PORT}"
EOF

cat > /srv/mapserver/connection_monumenten.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${MONUMENTEN_DB_HOST} dbname=${MONUMENTEN_DB_NAME} user=${MONUMENTEN_DB_USER} password=${MONUMENTEN_DB_PASSWORD} port=${MONUMENTEN_DB_PORT}"
EOF

cat > /srv/mapserver/connection_overlastgebieden.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${OVERLASTGEBIEDEN_DB_HOST} dbname=${OVERLASTGEBIEDEN_DB_NAME} user=${OVERLASTGEBIEDEN_DB_USER} password=${OVERLASTGEBIEDEN_DB_PASSWORD} port=${OVERLASTGEBIEDEN_DB_PORT}"
EOF

cat > /srv/mapserver/connection_reistijdenauto.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${REISTIJDENAUTO_DB_HOST} dbname=${REISTIJDENAUTO_DB_NAME} user=${REISTIJDENAUTO_DB_USER} password=${REISTIJDENAUTO_DB_PASSWORD} port=${REISTIJDENAUTO_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF

cat > /srv/mapserver/connection_grondexploitatie.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${GRONDEXPLOITATIE_DB_HOST} dbname=${GRONDEXPLOITATIE_DB_NAME} user=${GRONDEXPLOITATIE_DB_USER} password=${GRONDEXPLOITATIE_DB_PASSWORD} port=${GRONDEXPLOITATIE_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF

cat > /srv/mapserver/connection_dataselectie.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${DATASELECTIE_DB_HOST} dbname=${DATASELECTIE_DB_NAME} user=${DATASELECTIE_DB_USER} password=${DATASELECTIE_DB_PASSWORD} port=${DATASELECTIE_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF

cat > /srv/mapserver/connection_various_small_datasets.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${VARIOUS_SMALL_DATASETS_DB_HOST} dbname=${VARIOUS_SMALL_DATASETS_DB_NAME} user=${VARIOUS_SMALL_DATASETS_DB_USER} password=${VARIOUS_SMALL_DATASETS_DB_PASSWORD} port=${VARIOUS_SMALL_DATASETS_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF

cat > /srv/mapserver/afvalcontainers.inc <<EOF
CONNECTIONTYPE postgis
CONNECTION "host=${AFVALCONTAINERS_DB_HOST} dbname=${AFVALCONTAINERS_DB_NAME} user=${AFVALCONTAINERS_DB_USER} password=${AFVALCONTAINERS_DB_PASSWORD} port=${AFVALCONTAINERS_DB_PORT}"
PROCESSING "CLOSE_CONNECTION=DEFER"
EOF



# Configure apache to redirect errors to stderr.
# The mapserver will redirect errors to apache errorstream (see header.inc and private/header.inc)
# and apache will then redirect this to stderr, which will then be redirected to syslog/kibana.
# ref: http://mapserver.org/optimization/debugging.html#steps-to-enable-mapserver-debugging
#      https://serverfault.com/questions/711168/writing-apache2-logs-to-stdout-stderr
sed -i 's/ErrorLog .*/ErrorLog \/dev\/stderr/' /etc/apache2/apache2.conf

# Replace actual location of the mapserver depending on the environment
sed -i 's#MAP_URL_REPLACE#'"$MAP_URL"'#g' /srv/mapserver/topografie.map /srv/mapserver/topografie_wm.map

echo Starting server
apachectl -D FOREGROUND

