import 'package:chat_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;
  final String totalUnread;
  final bool online;
  final bool typing;

  Message(
      {required this.sender,
      required this.time,
      required this.text,
      required this.unread,
      required this.totalUnread,
      required this.online,
      required this.typing});
}

final User khristina =
    User(id: 0, name: 'Khristina Shtromberger', imgUrl: 'assets/user1.jpg');

final User marta = User(id: 1, name: 'Marta Niko', imgUrl: 'assets/user2.jpg');

final User julia =
    User(id: 2, name: 'Julia Schetko', imgUrl: 'assets/user3.jpg');
final User sandra =
    User(id: 3, name: 'Sandra Sokolovskaya', imgUrl: 'assets/user4.jpg');
final User alex = User(id: 4, name: 'Alex Nata', imgUrl: 'assets/user5.jpg');
final User nize =
    User(id: 5, name: 'Nize Emirshah', imgUrl: 'assets/user6.jpg');
final User natasha =
    User(id: 6, name: 'Natasha Romonokviz', imgUrl: 'assets/user7.jpg');

List<User> online = [khristina, nize, julia, alex, natasha, marta, sandra];

List<Message> chats = [
  Message(
      sender: khristina,
      time: '15:43',
      text: 'Typing....',
      unread: true,
      totalUnread: '3',
      online: true,
      typing: true),
  Message(
      sender: marta,
      time: '12:07',
      text: 'What to do?',
      unread: true,
      totalUnread: '1',
      online: true,
      typing: false),
  Message(
      sender: julia,
      time: '00:16',
      text: 'What' 's New? How are you...',
      unread: false,
      totalUnread: '',
      online: false,
      typing: false),
  Message(
      sender: sandra,
      time: '1 day ago',
      text: 'See you tomorow...',
      unread: false,
      totalUnread: '',
      online: false,
      typing: false),
  Message(
      sender: alex,
      time: '1 day ago',
      text: 'Karma has no menu',
      unread: true,
      totalUnread: '1',
      online: false,
      typing: false),
  Message(
      sender: nize,
      time: '2 day ago',
      text: 'Hey! When we go to...',
      unread: false,
      totalUnread: '',
      online: true,
      typing: false),
  Message(
      sender: natasha,
      time: '2 day ago',
      text: 'Hey',
      unread: false,
      totalUnread: '',
      online: false,
      typing: false)
];
