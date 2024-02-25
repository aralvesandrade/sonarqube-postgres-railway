FROM sonarqube:9.9.4-community

# Exemplos de variaveis pra testar local
# ENV SONAR_JDBC_USERNAME=sonar
# ENV SONAR_JDBC_PASSWORD=sonar
# ENV SONAR_JDBC_URL=jdbc:postgresql://postgres:5432/sonar
# ou
# Exemplo de uso do arquivo sonar.properties
# COPY sonar.properties /opt/sonarqube/conf/

# A variavel PORT precisa ser setada no railway
# PORT=9000
# SONAR_SEARCH_JAVAADDITIONALOPTS=-Dnode.store.allow_mmap=false,-Ddiscovery.type=single-node
# Caso queria utilizar o Sonarqube com Postgres, precisa subir um serviço Database Postgres no railway
# SONAR_JDBC_USERNAME=${{Postgres.PGUSER}}
# SONAR_JDBC_PASSWORD=${{Postgres.PGPASSWORD}}
# SONAR_JDBC_URL=jdbc:postgresql://${{Postgres.PGHOST}}:${{Postgres.PGPORT}}/${{Postgres.PGDATABASE}}