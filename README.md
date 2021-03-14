# fluttercomponentsapp

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Correção de Erros

**Erro no arquivo build.gradle:** cannot resolve symbol “Properties”

 Em File > Project Structure... > Project altere de 
 
 ```<No SDK>```
 
  para
  
  ```Android API XX Platform```

---

**Erro no arquivo build.gradle:** cannot resolve symbol “GradleException”

No arquivo android > app > build.gradle altere de

 ```throw new GradleException("Flutter SDK not found. Define location with flutter.sdk in the local.properties file.")```

para

```throw new RuntimeException("Flutter SDK not found. Define location with flutter.sdk in the local.properties file.")```


