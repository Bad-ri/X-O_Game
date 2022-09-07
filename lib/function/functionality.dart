// ignore_for_file: unnecessary_string_interpolations, avoid_print

List<String> box = ['', '', '', '', '', '', '', '', ''];
List<String> box2 = ['', '', '', '', '', '', '', '', ''];

int start = 1;
String win = "";
String x = "";
int x_score = 0;
int o_score = 0;

int Func(int I) {
  //print(win);
  if (start == 1) {
    box2[I] = "X";
  }
  if (start == 0) {
    box2[I] = "O";
  }
  box[I] = "$start";
  //print(box[I]);
  winner_cheker();

  if (start % 2 == 0) {
    //reverce the No.
    start = 1;
  } else {
    start = 0;
  }
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
  }
  if (win == "O") {
    o_score++;
    x = "The winner is " + win;
  }
  return win;
}
