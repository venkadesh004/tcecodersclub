import 'package:flutter/material.dart';
import 'package:tcecodersclub/pages/commentBox.dart';

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const CommentPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(-0.75, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class ChatBox extends StatefulWidget {
  ChatBox({Key? key,
    var profileID,
    var userName,
    var bio,
    var chatData,
    var likeCount,
    var thumbsUpCount,
    var thumbsDownCount,
    var comment
  }) {
    this.profileID = profileID;
    this.userName = userName;
    this.bio = bio;
    this.chatData = chatData;
    this.likeCount = likeCount;
    this.thumbsUpCount = thumbsUpCount;
    this.thumbsDownCount = thumbsDownCount;
    this.comment = comment;
  }

  var comment = 1;
  var profileID = 0;
  var userName = '';
  var bio = '';
  var chatData = '';
  var likeCount = 0;
  var thumbsUpCount = 0;
  var thumbsDownCount = 0;

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {

  var iconsLikeSelected = Icons.favorite_outline;
  var iconsLikeSelectedColor = Colors.black;
  var iconsThumbUpSelected = Icons.thumb_up_outlined;
  var iconsThumbUpSelectedColor = Colors.black;
  var iconsThumbDownSelected = Icons.thumb_down_outlined;
  var iconsThumbDownSelectedColor = Colors.black;
  var liked = false;
  var thumbsUp = false;
  var thumbsDown = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.black12
                ),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage('https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg'),
                  radius: 100,
                )
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Text>[
                    Text(
                      widget.userName
                    ),
                    Text(
                      widget.bio
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    widget.chatData,
                    style: const TextStyle(
                      fontSize: 12
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 1),
                            child: IconButton(
                              splashRadius: 1,
                              icon: Icon(
                                iconsLikeSelected,
                                color: iconsLikeSelectedColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (!liked) {
                                    iconsLikeSelected = Icons.favorite;
                                    iconsLikeSelectedColor = Colors.red;
                                    liked = true;
                                    widget.likeCount += 1;
                                  } else {
                                    iconsLikeSelected = Icons.favorite_outline;
                                    iconsLikeSelectedColor = Colors.black;
                                    liked = false;
                                    widget.likeCount -= 1;
                                  }
                                });
                              },
                            ),
                          ),
                          Text(
                            widget.likeCount.toString(),
                            style: const TextStyle(
                              fontSize: 10
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 1),
                            child: IconButton(
                              splashRadius: 1,
                              icon: Icon(
                                iconsThumbUpSelected,
                                color: iconsThumbUpSelectedColor,
                              ),
                              onPressed: () {
                                setState(() {
                                    if (!thumbsUp) {
                                      thumbsUp = true;
                                      iconsThumbUpSelected = Icons.thumb_up;
                                      iconsThumbUpSelectedColor = Colors.black;
                                      widget.thumbsUpCount += 1;
                                      if (thumbsDown) {
                                        thumbsDown = false;
                                        iconsThumbDownSelected = Icons.thumb_down_outlined;
                                        iconsThumbUpSelectedColor = Colors.black;
                                        widget.thumbsDownCount -= 1;
                                      }
                                    } else {
                                      thumbsUp = false;
                                      iconsThumbUpSelectedColor = Colors.black;
                                      iconsThumbUpSelected = Icons.thumb_up_outlined;
                                      widget.thumbsUpCount -= 1;
                                    }
                                });
                              },
                            ),
                          ),
                          Text(
                            widget.thumbsUpCount.toString(),
                            style: const TextStyle(
                                fontSize: 10
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 1),
                            child: IconButton(
                              splashRadius: 1,
                              icon: Icon(
                                iconsThumbDownSelected,
                                color: iconsThumbDownSelectedColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (!thumbsDown) {
                                    thumbsDown = true;
                                    iconsThumbDownSelected = Icons.thumb_down;
                                    iconsThumbDownSelectedColor = Colors.black;
                                    widget.thumbsDownCount += 1;
                                    if (thumbsUp) {
                                      thumbsUp = false;
                                      iconsThumbUpSelected = Icons.thumb_up_outlined;
                                      iconsThumbUpSelectedColor = Colors.black;
                                      widget.thumbsUpCount -= 1;
                                    }
                                  } else {
                                    thumbsDown = false;
                                    iconsThumbDownSelectedColor = Colors.black;
                                    iconsThumbDownSelected = Icons.thumb_down_outlined;
                                    widget.thumbsDownCount -= 1;
                                  }
                                });
                              },
                            ),
                          ),
                          Text(
                            widget.thumbsDownCount.toString(),
                            style: const TextStyle(
                                fontSize: 10
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 1),
                            child: IconButton(
                              splashRadius: 1,
                              icon: const Icon(
                                Icons.comment_outlined,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                if (widget.comment > 0) {
                                  Navigator.of(context).push(_createRoute());
                                }
                              },
                            ),
                          ),
                          Text(
                            widget.comment.toString(),
                            style: const TextStyle(
                                fontSize: 10
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
