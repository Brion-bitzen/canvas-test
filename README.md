Projeto para testar a build do AppFlow

Passos:
- Criar arquivos .env como de praxe ``environment.prod.ts`` (utilizando _fileReplacements_ do _angular.json_)
- Criar um script no _package.json_ com o nome _"appflow:build"_ para rodar um arquivo sh:``build.sh``
- Nesse caso, utilizaremos a variável ``CI_GIT_REF``[^1] para pegar o nome da branch que está gerando a build

- OBS: Talvez seja necessário rodar os seguintes comandos para corrigir as permissões do arquivo ``build.sh``

```bash
git add .
git update-index --chmod=+x ./build.sh
git commit -m 'adding execute permissions'
git push
```


[^1]: [App Flow -  Environments](https://ionic.io/docs/appflow/automation/environments)
