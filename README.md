

# Configurando as imagens

Para facilitar o nosso desenvolvimento do __PayFlow__ iremos precisar criar uma classe para gerenciar nossas imagens existentes na pasta assets do nosso projeto. Isso é uma tarefa bem tranquila de ser realizada.

O primeiro passo é baixar as imagens nesse link do GoogleDrive
[Baixar Imagens](https://drive.google.com/file/d/1o6eK1SbiF2d317GMheFLjLxIXkldw4OL/view?usp=sharing)

Com as imagens já baixadas, faça a descompactação da pasta.

Com isso, vamos colocar a pasta que veio dentro chamada __images__ no nosso projeto.

A pasta __images__ precisa ir dentro da pasta __assets__. Se ela não existe crie uma na raíz do projeto

```
/assets
	/images
```

Com isso feito precisamos modificar nosso arquivo no pubspec.yaml para ele entender que existe essa pasta.

```yaml
...
flutter:
  uses-material-design: true
  assets:
    - assets/images/
```
Pronto! Agora temos tudo no jeito para continuar nosso projeto. Agora precisamos criar uma arquivo __app_images.dart__ dentro de /lib/shared/themes para deixarmos tudo centralizado.

Esse arquivo vai ser responsável por armazenar as urls das imagens.

O arquivo fica dessa forma

```dart
class  AppImages {
static  const logoFull = "assets/images/logofull.png";
static  const logomini = "assets/images/logomini.png";
static  const union = "assets/images/union.png";
static  const person = "assets/images/person.png";
static  const google = "assets/images/google.png";
}
```

Como utilizar essa imagem?

```dart
Image.asset(AppImages.logoFull)
```
