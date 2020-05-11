#!/bin/sh

docker exec -i stardog sh << END_SCRIPT > /d4docker_archive/ontoMedirad/$(date +%Y-%m-%d).tar.gz
#!/bin/sh
rm -rf /tmp/ontoMedirad
/opt/stardog/bin/stardog-admin db backup --to /tmp/ ontoMedirad 1>&2
tar -zcOC /tmp ontoMedirad
rm -rf /tmp/ontoMedirad
END_SCRIPT

