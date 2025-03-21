import 'package:bizfuel/model/messagemodel.dart';
import 'package:bizfuel/utils/string.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CommunicationController {
  sendmessage(reciveid, String message) async {
    final senderEmailid = auth.currentUser!.email;
    final String curentuserid = auth.currentUser!.uid;

    final Timestamp timestamp = Timestamp.now();

    MessageModel messageModel = MessageModel(
      senderID: curentuserid,
      senderEmail: senderEmailid.toString(),
      reciverID: reciveid,
      message: message,
      timestamp: timestamp,
    );

    List<String> ids = [curentuserid, reciveid];

    ids.sort();

    String chatroomid = ids.join('_');

    await db
        .collection('chat_room')
        .doc(chatroomid)
        .collection('message')
        .add(messageModel.tojsone());
  }

  Stream getMessage(userID, otherUserID) {
    List<String> ids = [userID, otherUserID];
    ids.sort();
    String chatroomid = ids.join('_');

    return db
        .collection('chat_room')
        .doc(chatroomid)
        .collection('message')
        .orderBy('timestamp', descending: false)
        .snapshots();
  }
}
