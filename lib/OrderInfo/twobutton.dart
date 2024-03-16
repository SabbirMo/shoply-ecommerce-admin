import 'package:flutter/material.dart';

class CancelTrackButton extends StatelessWidget {
  final String cancelButton;
  final String trackButton;

  const CancelTrackButton({
    super.key,
    required this.cancelButton,
    required this.trackButton,
    });

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 170,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          side: const BorderSide(),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                        onPressed: (){},
                        child: Text(
                          cancelButton,
                        style: const TextStyle(
                          fontSize: 19,
                          color: Colors.black
                        ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          side: const BorderSide(),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                        onPressed: (){},
                        child: Text(
                           trackButton,
                        style: const TextStyle(
                          fontSize: 19,
                          color: Colors.black
                        ),
                        ),
                      ),
                    ),
                  ],
                );
  }
}