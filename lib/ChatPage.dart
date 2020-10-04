import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elchackathon_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:translator/translator.dart';

String email;
File _imageFile;
Future<void> currentUserEmail() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  email = prefs.getString('email');
}

// ignore: deprecated_member_use
final _firestore = Firestore.instance;

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  String messageText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffeebe7),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
          ),
        ),
        title: Center(child: Text('Chat')),
        leading: null,
        backgroundColor: Color(0xfff1a3a1),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MessagesStream(),
            Container(
              decoration: kMessageContainerDecoration,
              child: Padding(
                padding: EdgeInsets.only(bottom: 60.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: messageTextController,
                        onChanged: (value) {
                          messageText = value;
                        },
                        decoration: kMessageTextFieldDecoration,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        if (messageText != '') {
                          messageTextController.clear();
                          _firestore.collection('messages').add({
                            'text': messageText,
                            'sender': email,
                            'time': DateTime.now(),
                          });
                          messageText = '';
                        }
                      },
                      child: Text(
                        'Send',
                        style: kSendButtonTextStyle,
                      ),
                    ),
                    IconButton(
                        icon:
                            Icon(Icons.photo_camera, color: Color(0xfff1a3a1)),
                        onPressed: () async {
                          // ignore: deprecated_member_use
                          File selected = await ImagePicker.pickImage(
                              source: ImageSource.camera);
                          setState(() {
                            _imageFile = selected;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ImageCapture(file: _imageFile)));
                        }),
                    IconButton(
                        icon:
                            Icon(Icons.photo_library, color: Color(0xfff1a3a1)),
                        onPressed: () async {
                          // ignore: deprecated_member_use
                          File selected = await ImagePicker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            _imageFile = selected;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ImageCapture(file: _imageFile)));
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessagesStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore
          .collection('messages')
          .orderBy('time', descending: false)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Color(0xfff1a3a1),
            ),
          );
        }
        // ignore: deprecated_member_use
        final messages = snapshot.data.documents.reversed;
        List<MessageBubble> messageBubbles = [];
        for (var message in messages) {
          final messageText = message.data()['text'];
          final messageSender = message.data()['sender'];

          String currentUser = email;
          currentUserEmail();
          final messageBubble = MessageBubble(
            sender: messageSender,
            text: messageText,
            isMe: email.toString() == messageSender,
          );

          messageBubbles.add(messageBubble);
        }
        return Expanded(
          child: ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: messageBubbles,
          ),
        );
      },
    );
  }
}

class MessageBubble extends StatefulWidget {
  MessageBubble({this.sender, this.text, this.isMe});

  final String sender;
  String text;
  final bool isMe;

  @override
  _MessageBubbleState createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  String out;
  int a = 1;
  GoogleTranslator translator = new GoogleTranslator();

  void trans() {
    translator.translate(widget.text, to: 'hi').then((output) {
      setState(() {
        widget.text = output.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    a == 1 ? trans() : null;
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            widget.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.sender,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
            ),
          ),
          Material(
            borderRadius: widget.isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0))
                : BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
            elevation: 5.0,
            color: widget.isMe ? Color(0xfff1a3a1) : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: widget.text.substring(
                              widget.text.length - 4, widget.text.length) ==
                          '.jpg' ||
                      widget.text.substring(
                              widget.text.length - 4, widget.text.length) ==
                          '.png' ||
                      widget.text.substring(
                              widget.text.length - 5, widget.text.length) ==
                          '.jpeg'
                  ? widget.isMe
                      ? ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          child: Image.network(
                            widget.text,
                          ),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          child: Image.network(
                            widget.text,
                          ),
                        )
                  : Text(
                      widget.text,
                      style: TextStyle(
                        color: widget.isMe ? Colors.white : Color(0xfff1a3a1),
                        fontSize: 15.0,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageUpload extends StatelessWidget {
  @override
  File imagefile;
  ImageUpload({this.imagefile});
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      home: ImageCapture(file: imagefile),
    );
  }
}

class ImageCapture extends StatefulWidget {
  final File file;

  ImageCapture({Key key, this.file}) : super(key: key);
  createState() => _ImageCaptureState(file);
}

class _ImageCaptureState extends State<ImageCapture> {
  File _imageFile;
  _ImageCaptureState(this._imageFile);

  Future<Null> _cropImage() async {
    File croppedFile = await ImageCropper.cropImage(
        sourcePath: _imageFile.path,
        aspectRatioPresets: Platform.isAndroid
            ? [
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio16x9
              ]
            : [
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio5x3,
                CropAspectRatioPreset.ratio5x4,
                CropAspectRatioPreset.ratio7x5,
                CropAspectRatioPreset.ratio16x9
              ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          title: 'Cropper',
        ));
    if (croppedFile != null) {
      _imageFile = croppedFile;
      setState(() {
        _imageFile = croppedFile ?? _imageFile;
      });
    }
  }

  /// Remove image
  void _clear() {
    setState(() => _imageFile = null);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffeebe7),
      appBar: AppBar(
        title: Center(child: Text('Selected Image')),
        backgroundColor: Color(0xfff1a3a1),
        leading: IconButton(icon: Icon(Icons.close), onPressed: _clear),
        actions: [IconButton(icon: Icon(Icons.crop), onPressed: _cropImage)],
      ),
      body: ListView(
        children: <Widget>[
          if (_imageFile != null) ...[
            Container(
                padding: EdgeInsets.all(32), child: Image.file(_imageFile)),
            Center(
              child: Uploader(
                file: _imageFile,
              ),
            )
          ]
        ],
      ),
    );
  }
}

/// Widget used to handle the management of
class Uploader extends StatefulWidget {
  final File file;

  Uploader({Key key, this.file}) : super(key: key);

  createState() => _UploaderState();
}

class _UploaderState extends State<Uploader> {
  final FirebaseStorage _storage =
      FirebaseStorage(storageBucket: 'gs://ctrl-alt-elite-bd79d.appspot.com');

  StorageUploadTask _uploadTask;

  _startUpload() {
    String filePath = 'images/${DateTime.now()}.jpeg';
    setState(() {
      _uploadTask = _storage.ref().child(filePath).putFile(widget.file);
      final StorageReference ref =
          FirebaseStorage.instance.ref().child(filePath);
    });
  }

  Future addurlinfirebase() async {
    StorageTaskSnapshot taskSnapshot = await _uploadTask.onComplete;
    final String url = (await taskSnapshot.ref.getDownloadURL());
    _firestore.collection('messages').add({
      'text': '$url.jpeg',
      'sender': email,
      'time': DateTime.now(),
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    if (_uploadTask != null) {
      return StreamBuilder<StorageTaskEvent>(
          stream: _uploadTask.events,
          builder: (context, snapshot) {
            var event = snapshot?.data?.snapshot;

            double progressPercent = event != null
                ? event.bytesTransferred / event.totalByteCount
                : 0;
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (_uploadTask.isComplete)
                    Text('Uploaded',
                        style: TextStyle(
                            color: Color(0xfff1a3a1), height: 2, fontSize: 30)),
                  if (_uploadTask.isPaused)
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: FlatButton(
                        child: Icon(Icons.play_arrow,
                            size: 50, color: Color(0xfff1a3a1)),
                        onPressed: _uploadTask.resume,
                      ),
                    ),
                  if (_uploadTask.isInProgress)
                    FlatButton(
                      child:
                          Icon(Icons.pause, size: 50, color: Color(0xfff1a3a1)),
                      onPressed: _uploadTask.pause,
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${(progressPercent * 100).toStringAsFixed(2)} % ',
                        style:
                            TextStyle(fontSize: 24, color: Color(0xfff1a3a1)),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 40.0, right: 40.0, bottom: 80.0),
                    child: LinearProgressIndicator(
                        value: progressPercent,
                        minHeight: 30.0,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xfff1a3a1)),
                        backgroundColor: Color(0xfffce2e1)),
                  ),
                ]);
          });
    } else {
      return Padding(
        padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 40.0),
        child: FlatButton(
            child: Container(
              width: 300.0,
              decoration: BoxDecoration(
                color: Color(0xfff1a3a1),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Column(
                  children: [
                    Icon(Icons.cloud_upload, color: Color(0xffe8edf3)),
                    Text('Upload to Firebase',
                        style: TextStyle(color: Color(0xffe8edf3))),
                  ],
                ),
              ),
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 150,
                    color: Color(0xfff1a3a1),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('Are You Sure Want To Proceed ?',
                              style: TextStyle(
                                  color: Color(0xffe8edf3),
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlatButton(
                                  color: Color(0xffe8edf3),
                                  child: const Text('Upload',
                                      style: TextStyle(
                                          color: Color(0xfff1a3a1),
                                          fontWeight: FontWeight.bold)),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _startUpload();
                                    addurlinfirebase();
                                  }),
                              SizedBox(width: 50.0),
                              FlatButton(
                                color: Color(0xffe8edf3),
                                child: const Text('Cancel',
                                    style: TextStyle(
                                        color: Color(0xfff1a3a1),
                                        fontWeight: FontWeight.bold)),
                                onPressed: () => Navigator.pop(context),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
      );
    }
  }
}
