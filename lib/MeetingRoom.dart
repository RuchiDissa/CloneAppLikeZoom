import 'package:flutter/material.dart';

class MeetingRoom extends StatelessWidget {
  const MeetingRoom({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meeting Room',
          style: TextStyle(color: Colors.blueAccent),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Screen-like display
          Container(
            height: 600,
            width: double.infinity,
            color: Colors.grey[200],
            child: const Center(
              child: Text(
                'Meeting Screen',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Spacer
          Expanded(child: Container()),
          // Add Participant, Camera, Microphone Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCircularIconButton(
                onPressed: () {
                  // Add Participant Action
                },
                icon: Icons.person_add,
              ),
              const SizedBox(width: 20),
              _buildCircularIconButton(
                onPressed: () {
                  // Toggle Camera Action
                },
                icon: Icons.videocam,
              ),
              const SizedBox(width: 20),
              _buildCircularIconButton(
                onPressed: () {
                  // Toggle Microphone Action
                },
                icon: Icons.mic,
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Start, Stop Meeting Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCircularIconButton(
                onPressed: () {
                  // Start Meeting Action
                },
                icon: Icons.play_arrow,
              ),
              const SizedBox(width: 20),
              _buildCircularIconButton(
                onPressed: () {
                  // Stop Meeting Action
                },
                icon: Icons.stop,
              ),
            ],
          ),
          // Spacer
          Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget _buildCircularIconButton({
    required VoidCallback onPressed,
    required IconData icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.blue),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        color: Colors.blue,
      ),
    );
  }
}
