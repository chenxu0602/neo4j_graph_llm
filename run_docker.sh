
docker run \
    --name neo4j-apoc \
    -p 7474:7474 -p 7687:7687 \
    -d \
    -v /Users/chenxu/Work/neo4j/data:/data \
    -v /Users/chenxu/Work/neo4j/logs:/logs \
    -v /Users/chenxu/Work/neo4j/import:/import \
    -v /Users/chenxu/Work/neo4j/conf:/conf \
    -v /Users/chenxu/Work/neo4j/plugins:/plugins \
    --env NEO4J_AUTH=neo4j/LimeStardom6J\
    --env NEO4J_dbms_memory_pagecache_size=16G \
    -e NEO4J_apoc_export_file_enabled=true \
    -e NEO4J_apoc_import_file_enabled=true \
    -e NEO4J_apoc_import_file_use__neo4j__config=true \
    -e NEO4J_PLUGINS='["apoc", "graph-data-science"]' \
    neo4j:5.16.0


docker exec -it neo4j-apoc bash
