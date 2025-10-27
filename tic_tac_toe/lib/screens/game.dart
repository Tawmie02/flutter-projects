// ...existing code...
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int oScore = 0;
  int xScore = 0;

  bool oTurn = true; //set the first player
  List<String> displayXO = ['', '', '', '', '', '', '', '', ''];
  String resultDeclaration = '';
  
  static final TextStyle customFontWhite = GoogleFonts.coiny(
    textStyle: const TextStyle(
      color: Colors.white,
      letterSpacing: 3,
      fontSize: 20,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              // Score Board
              child: Container(
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Player O', style: customFontWhite),
                      Text(oScore.toString(), style: customFontWhite),
                    ],
                  ),
                  const SizedBox(width: 20),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Player X', style: customFontWhite),
                      Text(oScore.toString(), style: customFontWhite),
                    ],
                  )
                ],
               ),
              ),
            ),
            Expanded(
              flex: 3,
              // Box Board (Grid)
              child: GridView.builder(
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  //crossAxisSpacing: 8,
                  //mainAxisSpacing: 8,
                ),
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  final value = displayXO[index];
                  return GestureDetector(
                    onTap: () => _tapped(index),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 3, color: Colors.pink),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          displayXO[index],
                          style: GoogleFonts.coiny(
                            textStyle: TextStyle(
                              fontSize: 64,
                              color: Colors.pink,
                              /*
                              color: value == 'O'
                                  ? Colors.pink
                                  : value == 'X'
                                      ? const Color.fromARGB(255, 19, 22, 24)
                                      : Colors.white70,
                                      */
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Text(resultDeclaration, style: customFontWhite),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _tapped(int index) {
    /*
    if (displayXO[index].isNotEmpty) return;
    setState(() {
      displayXO[index] = oTurn ? 'O' : 'X';
      oTurn = !oTurn;
    });
    */
    setState(() {
      if (oTurn && displayXO[index] == '') {
        displayXO[index] = 'O';
      } else if (!oTurn && displayXO[index] == '') {
        displayXO[index] = 'X';
      }
      oTurn = !oTurn;
      //check winner function
      void checkWinnner() {
        //check first row
        if (displayXO[0] == displayXO[1] &&
            displayXO[0] == displayXO[2] &&
            displayXO[0] != '') {
          setState() {
            resultDeclaration = 'Player ${displayXO[0]}Wins';
          }
        }
        //check second row
        if (displayXO[3] == displayXO[4] &&
            displayXO[3] == displayXO[5] &&
            displayXO[3] != '') {
          setState() {
            resultDeclaration = 'Player ${displayXO[3]}Wins';
          }
        }
        //check third row
        if (displayXO[6] == displayXO[7] &&
            displayXO[6] == displayXO[8] &&
            displayXO[6] != '') {
          setState() {
            resultDeclaration = 'Player ${displayXO[6]}Wins';
          }
        }
        //check first column
        if (displayXO[0] == displayXO[3] &&
            displayXO[0] == displayXO[6] &&
            displayXO[0] != '') {
          setState() {
            resultDeclaration = 'Player ${displayXO[0]}Wins';
          }
        } //check second column
        if (displayXO[1] == displayXO[4] &&
            displayXO[1] == displayXO[7] &&
            displayXO[1] != '') {
          setState() {
            resultDeclaration = 'Player ${displayXO[1]}Wins';
          }
        }
        //check third column
        if (displayXO[2] == displayXO[5] &&
            displayXO[2] == displayXO[8] &&
            displayXO[2] != '') {
          setState() {
            resultDeclaration = 'Player ${displayXO[2]}Wins';
          }
        }
        //check first diagonal
        if (displayXO[0] == displayXO[4] &&
            displayXO[0] == displayXO[8] &&
            displayXO[0] != '') {
          setState() {
            resultDeclaration = 'Player ${displayXO[0]}Wins';
            updateScore(displayXO[0]);
          }
        } //check second diagonal
        if (displayXO[6] == displayXO[4] &&
            displayXO[6] == displayXO[2] &&
            displayXO[6] != '') {
          setState() {
            resultDeclaration = 'Player ${displayXO[6]}Wins';
            updateScore(displayXO[6]);
          }
        }
      }
      void updateScore(String winner){
        if(winner == 'O'){
          oScore++;
        } else if (winner == 'X'){
          xScore++;
        }
      }
    });
  }
}
