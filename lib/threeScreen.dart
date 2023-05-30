import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mong_ui/twoScreen.dart';
import 'fourScreen.dart';
import 'twoScreen.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
//<<<<<<< Updated upstream
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:get/get.dart';
//=======
//import 'package:firebase_storage/firebase_storage.dart'; 찬혁이꺼 pull했는데 나한테 오류나서 주석
//import 'package:get/get.dart';
//>>>>>>> Stashed changes



class threeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffFAF9E9),
      ),
      home: PhotoInfoScreen(),
    );
  }
}

class PhotoInfoScreen extends StatefulWidget {
  @override
  _PhotoInfoScreenState createState() => _PhotoInfoScreenState();
}

class _PhotoInfoScreenState extends State<PhotoInfoScreen> {
  String photoName = '';
  String birthday = '';
  XFile? _pickedFile;
  String imageUrl = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


              Container(       //다시 two screen 으로 돌아갔을 때 two screen의 기능이 먹히지 않는 문제가 생김  왜?
                margin: EdgeInsets.fromLTRB(0, 50, 300, 0),
                child: TextButton(
                  onPressed: () {
                    // print(widget.argument);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => twoScreen()));
                  },
                  child: Image.asset(
                    "imageFile/back.png",
                    width: 55,
                    height: 60,
                  ),
                ),
              ),

              SizedBox(height: 40),
              if (_pickedFile == null)
                Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xffE7E3D1),
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: IconButton(
                  icon: Icon(Icons.add_a_photo),
                  onPressed: () {
                    _showBottomSheet();
                  },
                ),
              )
              else
                new GestureDetector(
                  onTap: (){
                    _showBottomSheet();
                  },
                child: new Container(
                  width: 200, height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    image: DecorationImage(
                        image: FileImage(File(_pickedFile!.path)),
                        fit: BoxFit.cover),
                  ),
                ),
                ),

              SizedBox(height: 35),
              Text(
                "name",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: '나눔손글씨',
                  color: Color(0xff666666),
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 253,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0x7fe7e3d1),
                ),
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    //hintText: '텍스트를 입력하세요',
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "birthday",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: '나눔손글씨',
                  color: Color(0xff666666),
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 253,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0x7fe7e3d1),
                ),
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    //hintText: '텍스트를 입력하세요',
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),

              SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => fourScreen()));
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size(150, 60)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFCF5B6)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black), // 텍스트 색상
                ),
                child: Text(
                  '몽 저장하기',
                  style: TextStyle(
                    fontFamily: '나눔손글씨',
                    fontSize: 25,
                    fontWeight: FontWeight.bold, // 원하는 폰트 설정
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showBottomSheet() {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => _getCameraImage(),
              child: const Text('사진찍기'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => _getPhotoLibraryImage(),
              child: const Text('라이브러리에서 불러오기'),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }

  _getCameraImage() async {
    final pickedFile =
    await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _pickedFile = pickedFile;
        String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();

        Reference referenceRoot = FirebaseStorage.instance.ref();
        Reference referenceDirImages = referenceRoot.child('images');

        Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);

        try {
          referenceImageToUpload.putFile(File(pickedFile!.path));
          imageUrl =referenceImageToUpload.getDownloadURL() as String;
        } catch(error) {
          //error
        }
      });
    } else {
      if (kDebugMode) {
        print('이미지 선택안함');
      }
    }
  }

  _getPhotoLibraryImage() async {
    final pickedFile =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _pickedFile = pickedFile;
        String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();

        Reference referenceRoot = FirebaseStorage.instance.ref();
        Reference referenceDirImages = referenceRoot.child('images');

        Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);

        try {
          referenceImageToUpload.putFile(File(pickedFile!.path));
          imageUrl = referenceImageToUpload.getDownloadURL() as String;
        } catch(error) {
          //error
        }
      });
    } else {
      if (kDebugMode) {
        print('이미지 선택안함');
      }
    }
  }

}
