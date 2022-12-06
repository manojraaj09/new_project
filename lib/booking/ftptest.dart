import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ftpconnect/ftpConnect.dart';
class ftpconnect extends StatefulWidget {
  const ftpconnect({Key? key}) : super(key: key);

  @override
  State<ftpconnect> createState() => _ftpconnectState();
}

class _ftpconnectState extends State<ftpconnect> {

  Save()async{
    print('ftpConnect');
    FTPConnect ftpConnect = FTPConnect('rssindia.in.net',user:'mithlesh@rssindia.in.net', pass:'f8K#nj2blNS0');
    File fileToUpload = File('http://localhost/living-roots/image/physician.jpg');
    await ftpConnect.connect();
     bool res = await ftpConnect.uploadFileWithRetry(fileToUpload, pRetryCount: 2);
     await ftpConnect.disconnect();
    print(ftpConnect);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Save();
          },
          child: Text('send'),
        ),
      ),
    );
  }
}
