import 'package:flutter/material.dart';
import 'package:flutter_chat_app/views/widgets/chat_dialog.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ChatDialog(
                  senderType: DialogType.user,
                  text: "Hello",
                  date: DateTime.now().copyWith(minute: 1),
                ),
                dialogDivider(),
                ChatDialog(
                  senderType: DialogType.other,
                  text: "Hi,\nHow are you?",
                  date: DateTime.now().copyWith(minute: 5),
                ),
                dialogDivider(),
                ChatDialog(
                  senderType: DialogType.user,
                  text: "Bye,\nSee you later\n👋🏼",
                  date: DateTime.now().copyWith(minute: 7),
                ),
                dialogDivider(),
                ChatDialog(
                  senderType: DialogType.user,
                  text: "Bye,\nSee you later\n👋🏼",
                  date: DateTime.now().copyWith(minute: 7),
                ),
                dialogDivider(),
                ChatDialog(
                  senderType: DialogType.user,
                  text: "Bye,\nSee you later\n👋🏼",
                  date: DateTime.now().copyWith(minute: 7),
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            color: Colors.amber,
            alignment: Alignment.center,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                        hintText: "Type a message",
                        filled: true,
                        fillColor: Colors.amber.shade400),
                  ),
                ),
                SizedBox(width: 20),
                IconButton.filled(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // Mesajlar arası boşluğu ayarlamak için bir widget oluşturduk.
  Widget dialogDivider() {
    return const SizedBox(height: 40);
  }
}
