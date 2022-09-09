// ignore_for_file: unnecessary_string_interpolations, avoid_print

import 'dart:math';
import 'dart:ui';

List<String> box = ['', '', '', '', '', '', '', '', ''];
List<String> box2 = ['', '', '', '', '', '', '', '', ''];
Color color = Color.fromRGBO(31, 31, 31, 1);
Color color2 = Color.fromRGBO(31, 31, 31, 1);
int start = 1;
int draw = 0;
int draw2 = 0;
int c = 0;
String turn = "";
String win = "";
String x = "";
int x_score = 0;
int o_score = 0;
int pc = 0;
int Func(int I) {
  //print(win);

  if (box[I] == '') {
    if (start == 1) {
      box2[I] = "X";
      turn = "Player O turn";
      color = Color.fromRGBO(175, 12, 12, 1);
      color2 = Color.fromRGBO(31, 31, 31, 1);

      c = 1;
    }
    if (start == 0) {
      box2[I] = "O";
      turn = "Player X turn";
      color2 = Color.fromRGBO(15, 116, 23, 1);
      color = Color.fromRGBO(31, 31, 31, 1);

      c = 2;
    }
    box[I] = "$start";
    draw++;
    winner_cheker();

    if (start % 2 == 0) {
      //reverce the No.
      start = 1;
    } else {
      start = 0;
    }
  }

  //print(box[I]);

  return 0;
}

int Func2(int I) {
  //print(win);

  if (box[I] == '') {
    if (start == 1) {
      box2[I] = "X";
    }
    if (start == 0) {
      box2[I] = "O";
    }
    box[I] = "$start";
    draw2++;
    winner_cheker();

    //for (int i = 0; i < 9; i++) {
    if (box[I] == "1") {
      pc = 0;
      for (int j = 0; j < 9; j++) {
        Random random = new Random();
        int randomNumber = random.nextInt(9);
        if (box[randomNumber] == '') {
          box2[randomNumber] = 'O';
          box[randomNumber] = '0';
          pc++;
          break;
        }
      }
      if (pc == 0) {
        for (int z = 0; z < 9; z++) {
          if (box2[z] == '') {
            box2[z] = "O";
            box[z] = "0";
            pc++;
            break;
          }
        }
      }
    }

    winner_cheker();

    // if (box[0] == "1") {
    //   box2[4] = "O";
    // }
    // if (box[1] == "1") {
    //   box2[2] = "O";
    // }
    // if (box[2] == "1") {
    //   box2[1] = "O";
    // }
    // if (box[3] == "1") {
    //   box2[0] = "O";
    // }
    // if (box[4] == "1") {
    //   box2[3] = "O";
    // }
    // if (box[0] == "1") {
    //   box2[4] = "O";
    // }
    // if (box[5] == "1") {
    //   box2[7] = "O";
    // }
    // if (box[7] == "1") {
    //   box2[5] = "O";
    // }
    // if (box[6] == "1") {
    //   box2[8] = "O";
    // }
    // if (box[8] == "1") {
    //   box2[6] = "O";
    // }

  }

  //print(box[I]);

  return 0;
}

String winner_cheker() {
  if (box[0] == box[1] && box[1] == box[2] && box[0] != '') {
    win = box2[0];
  }
  if (box[3] == box[4] && box[4] == box[5] && box[3] != '') {
    win = box2[3];
  }
  if (box[6] == box[7] && box[7] == box[8] && box[6] != '') {
    win = box2[6];
  }
  if (box[0] == box[3] && box[3] == box[6] && box[0] != '') {
    win = box2[0];
  }
  if (box[1] == box[4] && box[4] == box[7] && box[1] != '') {
    win = box2[1];
  }
  if (box[2] == box[5] && box[5] == box[8] && box[2] != '') {
    win = box2[2];
  }
  if (box[0] == box[4] && box[4] == box[8] && box[0] != '') {
    win = box2[0];
  }
  if (box[2] == box[4] && box[4] == box[6] && box[2] != '') {
    win = box2[2];
  }
  if (win == "X") {
    x_score++;
    x = "The winner is " + win;
    turn = "";
    color = Color.fromRGBO(31, 31, 31, 1);
    color2 = Color.fromRGBO(31, 31, 31, 1);
    for (int g = 0; g < 9; g++) {
      if (box[g] == '') {
        box[g] = "5";
      }
    }
  }
  if (win == "O") {
    o_score++;
    x = "The winner is " + win;
    turn = "";
    color = Color.fromRGBO(31, 31, 31, 1);
    color2 = Color.fromRGBO(31, 31, 31, 1);
    for (int g = 0; g < 9; g++) {
      if (box[g] == '') {
        box[g] = "5";
      }
    }
  }
  if (draw == 9 && win == "") {
    x = "Draw";
    turn = "";
    color = Color.fromRGBO(31, 31, 31, 1);
    color2 = Color.fromRGBO(31, 31, 31, 1);
    for (int g = 0; g < 9; g++) {
      if (box[g] == '') {
        box[g] = "5";
      }
    }
  }
  if (draw2 > 4 && win == "") {
    x = "Draw game";
    turn = "";
    color = Color.fromRGBO(31, 31, 31, 1);
    color2 = Color.fromRGBO(31, 31, 31, 1);
    for (int g = 0; g < 9; g++) {
      if (box[g] == '') {
        box[g] = "5";
      }
    }
  }
  return win;
}
