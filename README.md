# Jotelulu configuration files for S3.

## Configuração CLI:

1. Instalação CLI:
    
    `sudo apt-get install awscli`
    
2. Verifique a instalação:
    
    `aws --version`
    
3. Configure o perfil com as informações obtidas do Portal Jotelulu:
    
    `aws configure --profile=3D"nome do perfil"`
    
    ```
    AWS Access Key ID [None]: [Ver Portal Jotelulu]
    AWS Secret Access Key ID [None]: [Ver Portal Jotelulu]
    Default region name [None]: [Deixar em branco]
    Default output format [None]: [JSON]
    ```
    

## Configuração backup.sh

1. Clone esse repositório para a máquina local:
    
    `git clone [git@github.com](mailto:git@github.com):lbordonal/Jotelulu.git`
    
2. Execute o arquivo create.sh e preencha os parametros solicitados:
    
    `sh create.sh`
    
    ```
    URL: [Ver Portal Jotelulu]
    Bucket: [Ver Portal Jotelulu]
    Nome do Perfil: [Definido na configuração da CLI]
    Caminho da Pasta Local: [Pasta que deseja fazer o backup]
    Caminho da Pasta Remota: [Pasta no Repositório S3 da Jotelulu]
    ```
    

## Agendador de tarefas

1. Abra o crontab 
    
    `crontab -e`
    
2. Defina a programação dos backups de acordo com a tabela abaixo:

```
[minute hour] [day_of_the_month] [month] [day_of_the_week] [command]

0 23 * * * sh /path/backup.sh → Exemplo para ter o script executado todos os dias as 23h.
```
