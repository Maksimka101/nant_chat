import 'package:nant_client/models/message/message.dart';

extension SortMessages on List<Message> {
  List<Message> sortMessages() {
    return this
      ..sort((first, second) => -first.createdAt.compareTo(second.createdAt));
  }
}
