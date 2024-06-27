# Módulos no Terraform

## Definição
Módulos no Terraform são conjuntos de configurações agrupadas em um único lugar, incluindo recursos, datasources e outputs, que podem ser reutilizados em várias partes de uma infraestrutura ou por diferentes equipes.

## Detalhamento

### Estrutura de Módulo
Um módulo é composto por arquivos de configuração do Terraform (.tf) que definem uma coleção de recursos relacionados. Pode incluir submódulos e arquivos adicionais para organizar e reutilizar código.

### Reuso e Consistência
Módulos permitem encapsular configurações complexas em blocos reutilizáveis, promovendo a consistência e a padronização na infraestrutura.

### Parametrização
Módulos podem aceitar variáveis de entrada (inputs) e fornecer valores de saída (outputs), tornando-os flexíveis e configuráveis para diferentes cenários.

### Publicação e Compartilhamento
Módulos podem ser versionados e compartilhados entre equipes através de repositórios de código ou registries como o Terraform Registry, permitindo que diferentes times utilizem módulos validados e testados.

### Abstração e Simplicidade
Módulos simplificam a definição de infraestrutura ao abstrair detalhes complexos e permitir que os usuários se concentrem em parâmetros de alto nível.

## Benefícios

### Manutenção Simplificada
Centraliza a gestão de configurações complexas, facilitando a manutenção e atualização.

### Redução de Erros
Promove o reuso de código confiável e testado, reduzindo a possibilidade de erros.

### Produtividade
Acelera o desenvolvimento e a implantação de infraestrutura ao permitir a reutilização de componentes.

### Colaboração
Facilita a colaboração entre diferentes equipes, permitindo a utilização de módulos padronizados e documentados.

## Exemplo de Uso
Um módulo para provisionar uma VPC na AWS pode incluir a criação de sub-redes, tabelas de roteamento, gateways de internet, etc. Esse módulo pode ser reutilizado em diferentes projetos ou ambientes, garantindo que a configuração da VPC seja consistente e conforme as melhores práticas da organização.

```hcl
module "vpc" {
  source = "git::https://github.com/organization/vpc-module.git?ref=v1.0.0"

  vpc_name   = "my-vpc"
  cidr_block = "10.0.0.0/16"
  subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
}
