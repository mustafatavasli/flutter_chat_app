import 'package:flutter/material.dart';
import 'package:flutter_chat_app/core/helper/extension/date_time_ext.dart';

enum DialogType {
  other,
  user,
}

class ChatDialog extends StatelessWidget {
  const ChatDialog(
      {required this.senderType,
      required this.text,
      required this.date,
      super.key});

  final DialogType senderType;
  final String text;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    const radius = 55.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (senderType == DialogType.user) ...[
              CircleAvatar(
                radius: 48,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(
                width: 20,
              )
            ] else
              const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ).copyWith(
                    bottomLeft: Radius.circular(
                        senderType == DialogType.other ? radius : 0),
                    bottomRight: Radius.circular(
                        senderType == DialogType.user ? radius : 0),
                  )),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            if (senderType == DialogType.other)
              const SizedBox(width: 48 * 2 + 20)
            else
              const Spacer(),
            Text(
              DateTime.now().toFormattedString(date),
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 32,
              ),
            ),
          ],
        )
      ],
    );
  }
}
