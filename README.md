# PayFlow


# Paleta de cores

**Obs:** o dart não interpreta diretamente com #, para utilizar é preciso trocar o # para 0xFF

Para utilizar uma cor no dart basta chamar Color(_inserir_hexadecimal_sem_#)
```dart
Color(0xFFFF941A); //Exemplo de uso
``` 

| Nome da Cor | Hexadecimal | Dart | Tipo |
|--|--|--|--|
| primary |![#f03c15](https://via.placeholder.com/20/FF941A/000000?text=+) #FF941A |0xFFFF941A |Comuns |
| grey | ![#f03c15](https://via.placeholder.com/20/585666/000000?text=+) #585666| 0xFF585666|Comuns |
| delete |![#f03c15](https://via.placeholder.com/20/E83F5B/000000?text=+) #E83F5B|0xFFE83F5B |Comuns |
| heading |![#f03c15](https://via.placeholder.com/20/585666/000000?text=+)#585666| 0xFF585666|Textos |
| body |![#f03c15](https://via.placeholder.com/20/706E7A/000000?text=+) #706E7A|0xFF706E7A |Textos |
| stroke |![#f03c15](https://via.placeholder.com/20/E3E3E6/000000?text=+) #E3E3E6|0xFFE3E3E6 |Items |
| shape |![#f03c15](https://via.placeholder.com/20/FAFAFC/000000?text=+) #FAFAFC|0xFFFAFAFC |Items |
| background |![#f03c15](https://via.placeholder.com/20/FFFFFF/000000?text=+) #FFFFFF| 0xFFFFFFFF|Items |

Agora com a paleta de cores no jeito, você precisar criar o arquivo __appcolors.dart__  no seu projeto seguindo o esquema de diretório abaixo:

```
/lib
	/shared
		/themes
			appcolors.dart
````

Com o arquivo criado, agora precisamos construir a classe __AppColors__. Para facilitar o processo já deixei a classe implementado abaixo para você copiar e colar no projeto

**Obs:** 
- Esse arquivo precisa ser criado dentro de /lib/shared/themes/appcolors.dart
-  Importante lembrar de colocar o import abaixo no início do arquivo para encontrar a classe __Color__

```dart
import'package:flutter/material.dart'
```
Arquivo completo

```dart 
import  'package:flutter/material.dart';

class AppColors{
static final primary = Color(0xFFFF941A);
static final grey = Color(0xFF585666);
static final delete = Color(0xFF585666);
static final heading = Color(0xFF585666);
static final body = Color(0xFF706E7A);
static final stroke = Color(0xFFE3E3E6);
static final shape = Color(0xFFFAFAFC);
static final background = Color(0xFFFFFFFF);
}
```

## Utilizando o AppColors

```dart
final color = AppColors.primary;
```