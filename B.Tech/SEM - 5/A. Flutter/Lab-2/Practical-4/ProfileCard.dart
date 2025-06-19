import 'package:flutter/material.dart';

class ProfileCardScreen extends StatelessWidget {
  const ProfileCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Card"),),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Card(
            elevation: 8,
            shadowColor: Colors.black.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF667eea),
                    Color(0xFF764ba2),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: 4,),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/profile.jpg"),
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text("Ida Gaurav",style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white,),textAlign: TextAlign.center,),
                    const SizedBox(height: 8),
                    Text("Flutter Developer",style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.9),),textAlign: TextAlign.center,),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on,size: 16,color: Colors.white.withOpacity(0.8),),
                        const SizedBox(width: 4),
                        Text("Rajkot, Gujarat, India",style: TextStyle(fontSize: 14,color: Colors.white.withOpacity(0.8),),),
                      ],
                    ),
                    const SizedBox(height: 24),
                    
                    // Stats Row
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.white.withOpacity(0.3),),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("Posts", style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                              const SizedBox(height: 4),
                              Text("94",style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.8),),),
                            ],
                          ),
                          Container(height: 40,width: 1,color: Colors.white.withOpacity(0.3),),
                          Column(
                            children: [
                              Text("Followers", style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                              const SizedBox(height: 4),
                              Text("2.5K",style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.8),),),
                            ],
                          ),
                          Container(height: 40,width: 1,color: Colors.white.withOpacity(0.3),),
                          Column(
                            children: [
                              Text("Following", style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                              const SizedBox(height: 4),
                              Text("230",style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.8),),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: const Color(0xFF667eea),
                              elevation: 2,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                            child: const Text('Follow',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => null,
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              side: const BorderSide(color: Colors.white,width: 2,),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                            child: const Text('Message',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}