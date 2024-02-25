Exemplo de `containers` de `Postgres` e `Sonarqube` configurados no arquivo `docker-compose.yaml`

```
docker-compose up -d
```

Outro exemplo seria executando manualmente os dois `containers` seguindo as etapas abaixo:

1. Criar uma rede

```
docker network create minha-rede
```

2. Execute o `docker run` para o `Postgres`:

```
docker run -d --name postgres --network minha-rede -e POSTGRES_DB=sonar -e POSTGRES_USER=sonar -e POSTGRES_PASSWORD=sonar -p 5432:5432 postgres:16.0
```

Exemplo de como conectar no `Postgres` usando o comando abaixo:

```
docker exec -it postgres bash
psql -h localhost -p 5432 -U sonar
select version();
#verificar se existe database com nome sonar
\l
```

3. Execute o comando `docker build`:

```
docker build -t aralvesandrade/sonarqube .
```

4. Execute o `docker run` para o `Sonarqube`:

```
docker run -d --name sonarqube --network minha-rede -p 9000:9000 -e SONAR_JDBC_USERNAME=sonar -e SONAR_JDBC_PASSWORD=sonar -e SONAR_JDBC_URL=jdbc:postgresql://postgres:5432/sonar aralvesandrade/sonarqube
```

Acessar o `Sonarqube` pela url `http://localhost:9000/`(http://localhost:9000/), com usuário `admin` e senha `admin`

Para publicar seu `Dockerfile` no `railway`(https://railway.app/), executar os comandos abaixo:

```
railway login
railway init
railway up
```
