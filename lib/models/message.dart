import 'package:chat_project_tolue/models/user.dart';
enum MessageType{text, voice, photo, video, gif, sticker}
class Message {
  Message(this.from, this.to, this.sent, this.seen, this.isSeen, this.isReceived, this.messageType);
  final User from;
  final User to;
  final DateTime sent;
  final DateTime seen;
  final bool isSeen;
  final bool isReceived;
  final MessageType messageType;
}