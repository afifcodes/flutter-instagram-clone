import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/datas/sample.dart';
import 'package:flutter_instagram_clone/models/user.dart';
import 'package:flutter_instagram_clone/models/post.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<User> users = [
    Sample.selena,
    Sample.bruno,
    Sample.khoa,
    Sample.zaksheuskaya,
    Sample.bward,
    Sample.angle,
  ];
  //////////////////////////////
  ///--------------------------
  ///
  /// afifudin
  /// @withflutter
  ///
  ///--------------------------
  //////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Image.asset(
              'assets/images/logo.png',
              height: 36,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/icon-add.png')),
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/icon-heart.png')),
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/icon-messenger.png'))
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 115,
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: users.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            width: 95,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xffF7A34B),
                                      Color(0xffDE0046)
                                    ],
                                    stops: [
                                      0.4,
                                      0.7
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                            child: Container(
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/${users[index].profilePic}'),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 3)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(index == 0 ? 'Your Story' : users[index].username!,
                            style: GoogleFonts.inter())
                      ],
                    );
                  },
                ),
              ),
              makePost(Sample.post1),
              makePost(Sample.post2),
            ],
          ),
        ));
  }
}

Widget makePost(Post post) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Divider(
        color: Colors.grey.shade300,
        thickness: 1,
        height: 1,
      ),
      Container(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/${post.user!.profilePic}'))),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(Sample.selena.username!,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700, fontSize: 16)),
            const Spacer(),
            const Icon(Icons.more_horiz)
          ],
        ),
      ),
      Image.asset('assets/images/posts/${post.image}'),
      Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Image.asset(
                  'assets/icons/icon-heart.png',
                ),
                const SizedBox(
                  width: 12,
                ),
                Image.asset('assets/icons/icon-comment.png'),
                const SizedBox(
                  width: 12,
                ),
                Image.asset('assets/icons/icon-share.png'),
                const Spacer(),
                Image.asset('assets/icons/icon-bookmark.png'),
              ]),
              const SizedBox(
                height: 12,
              ),
              Text('100 Likes',
                  style: GoogleFonts.inter(fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 4,
              ),
              RichText(
                  text: TextSpan(
                      style: GoogleFonts.inter(
                          color: Colors.black, fontWeight: FontWeight.w700),
                      text: Sample.selena.username,
                      children: [
                    TextSpan(
                        style: GoogleFonts.inter(fontWeight: FontWeight.w400),
                        text: '  ${post.caption}')
                  ])),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/${Sample.selena.profilePic}'),
                              fit: BoxFit.cover))),
                  const SizedBox(
                    width: 12,
                  ),
                  Text('Add Comment...',
                      style: GoogleFonts.inter(color: Colors.grey)),
                  const Spacer(),
                  const Text('😍'),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text('😂'),
                  const SizedBox(
                    width: 24,
                  ),
                  Image.asset('assets/icons/add_icon.png')
                ],
              ),
            ],
          )),
    ],
  );
}
