import 'package:flutter_instagram_clone/models/post.dart';
import 'package:flutter_instagram_clone/models/user.dart';

class Sample {
  static User zaksheuskaya = User(
      username: 'zaksheuskaya',
      profilePic: 'zaksheuskaya.jpg',
      isHasStory: true);
  static User bward = User(
    username: 'bward',
    profilePic: 'bob_ward.jpg',
  );
  static User khoa = User(username: 'khoa', profilePic: 'khoa.jpg');
  static User angle = User(
    username: 'angle',
    profilePic: 'angle.jpg',
  );
  static User bruno =
      User(username: 'brunosvd', profilePic: 'bruno_salvadori.jpg');
  static User selena = User(
    name: 'Selena Origin',
    username: 'selenaorigin',
    bioDesc:
        'Irure eiusmod elit exercitation aute. Culpa incididunt incididunt eu ullamco sint non duis mollit. Aliquip mollit cillum laborum fugiat cupidatat sunt fugiat incididunt veniam ullamco occaecat.',
    isHasStory: true,
    profilePic: 'selena.jpg',
  );
  static Post post1 = Post(
      caption:
          'Consectetur laborum eu mollit pariatur est consectetur eiusmod incididunt non commodo deserunt eiusmod nulla.',
      comments: [
        {bward: 'great post!🔥', bruno: 'OMG!🤯'}
      ],
      user: angle,
      image: 'post1.jpg');
  static Post post2 = Post(
      caption:
          'Do eu occaecat sit est nulla incididunt ipsum sunt sit aute esse in.',
      comments: [
        {bward: 'great post!🔥', bruno: 'OMG!🤯'}
      ],
      user: angle,
      image: 'post2.jpg');
}
