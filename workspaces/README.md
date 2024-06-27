## Workspaces

No Terraform, os Workspaces têm a função de separar ambientes, semelhante a "branches", criando um statefile separado para cada workspace. É relevante notar que os seguintes backends oferecem suporte a workspaces:

- AzureRM
- Consul
- COS
- GCS
- Kubernetes
- Local
- OSS
- Postgres
- Remote
- S3

Outra informação importante é que o workspace opera apenas em nível de state, o que significa que ele não interage com o provedor de nuvem e não cria recursos.

## Comandos

- `terraform workspace help`: Mostra as opções de uso do workspace.
- `terraform workspace list`: Lista os workspaces disponíveis.
- `terraform workspace new production`: Cria um novo workspace chamado "production".
- `terraform workspace select`: Seleciona o workspace desejado.

