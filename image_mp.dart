import 'package:flutter/material.dart';

class ImageAssets extends StatelessWidget {
  final String imgName;
  const ImageAssets({super.key, required this.imgName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:100,
      height: 100,
      child: Image.asset(
        imgName,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.question_mark)
      ),
    );
  }
}

class ImageNetwork extends StatelessWidget {
  final String urlName;
  const ImageNetwork({super.key, required this.urlName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 250,
      child: Image.network(
        urlName,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.question_mark)
      ),
    );
  }
}

class ImageMP extends StatelessWidget{
  const ImageMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image"),
        //centerTitle: true,
      ),

      body: Column (children: const [
        ImageAssets(imgName:"images/others/moon.PNG"),
        ImageAssets(imgName:"images/others/sun.PNG"),
        ImageAssets(imgName:"images/others/star.PNG"),
        ImageNetwork(urlName: "https://picsum.photos/1200/700",),
        ],
      ),

    );
  }
}




//localden veya URL'den görüntüyü uygulama içinde kullanmaya yarayan widget'tır.
//ana dizinde bir klasör tanımlamak gerekiyor. ismi ne istersen o olur.
//içine istediğim görüntüyü koyuyorum (.jpg, .png, ,,, gibi)

//flutterda image'ları doğrudan kullanamayız. "pubspec.yaml" dosyasında tanımlamamız gerekir.

//asset: uygulama içinde genel olarak kullanılacak dosyalara resimlere denir.
//parametre olarak da pubspec.yaml'da asset içinde kaydedildiği halidir.

//görüntüye boyut verdiğimizde boyutla orantılı olarak bazı boşluklar default olarak geliyor. 
//bu konuda değişiklik yapmak için fit parametresi kullanıyoruz.
//fit: BoxFit.cover/fill --> ölçeklendirme tarzı farklı ama amaç resim boyutu ve boşluğu
//fit: BoxFit.fitWidth/fitHeight

//SizedBox() ile image'ı sarmalamak boyutlandırma için en kesin sonuçtur.
//unutmamak gerekir: SizedBox fix parametresi almaz Image alır.

//errorBuilder parametresi görüntü yüklenmezse ekranda görünecek şeyi döndürür. bir icon mesela.
//errorBuilder: (context, error, stackTrace) => const Icon(Icons.question_mark),

//internette URL'si belli olan bir görüntüyü kullanmak için 