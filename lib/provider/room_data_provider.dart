import 'package:flutter/material.dart';
import 'package:project_coding_game/models/Player.dart';

class RoomDataProvider extends ChangeNotifier {
  Map<String, dynamic> _roomData = {};
  Player _player1 = Player(
    name: '',
    socketID: '',
    points: 0,
    playerType: 'DEFENSE',
  );
  Player _player2 = Player(
    name: '',
    socketID: '',
    points: 0,
    playerType: 'ATTACK',
  );
  Map<String, dynamic> get roomData => _roomData;
  Player get player1 => _player1;
  Player get player2 => _player2;

  void updateRoomData(Map<String, dynamic> data) {
    _roomData = data;
    notifyListeners();
  }

  void updatePlayer1(Map<String, dynamic> player1Data) {
    _player1 = Player.fromMap(player1Data);
    notifyListeners();
  }

  void updatePlayer2(Map<String, dynamic> player2Data) {
    _player2 = Player.fromMap(player2Data);
    notifyListeners();
  }
}
