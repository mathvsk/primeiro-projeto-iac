# Projeto IaC - AWS S3 e CloudFront

## Descrição

Este projeto implementa uma infraestrutura como código (IaC) utilizando Terraform para criar e gerenciar recursos na AWS, especificamente um bucket S3 para hospedagem de site estático e uma distribuição CloudFront.

## Arquitetura

O projeto é composto por dois módulos principais:

### Módulo S3

- Cria um bucket S3 para hospedagem estática
- Configura website hosting com documentos index.html e error.html
- Nome do bucket é dinamicamente gerado com base no workspace do Terraform

### Módulo CloudFront

- Configura uma distribuição CDN apontando para o bucket S3
- Implementa redirecionamento HTTPS
- Suporte a métodos GET e HEAD
- Configuração de cache personalizada

## Variáveis

Pode ser criado um arquivo de variaveis "terraform.tfvars" para definir valores personalizados para as variáveis do projeto.

_variables.tf_

```terraform
variable "s3_bucket_name_terraform_state" {
    type        = string
    description = "Nome do bucket"
}
```

_terraform.tfvars_

```
s3_bucket_name_terraform_state = "seu-nome-do-bucket"
```

## Como utilizar

### Pré-requisitos

- Terraform instalado
- Credenciais AWS configuradas
- Perfil AWS (IAM) com permissões para criar e gerenciar recursos S3 e CloudFront

_Configura um perfil IAM na aws_

```bash
aws configure sso
```

_Faz login na aws com o perfil criado_

```bash
aws sso login --profile nome-do-perfil
```

### Configuração

1. Clone o repositório
2. Inicialize o Terraform:

```sh
terraform init
```

3. Planeje as alterações:

```sh
terraform plan
```

4. Seleciona um workspace (opcional)

```sh
terraform workspace select <ambiente>
```

5. Aplique as alterações:

```sh
terraform apply
```

## Estado do Terraform

O estado é armazenado remotamente em um bucket S3 (**terraform_state**) com:

- Versionamento habilitado
- Criptografia ativada
- Proteção contra deleção
