import 'package:flutter/material.dart';
import 'package:tcecodersclub/constants.dart';
import 'package:tcecodersclub/pages/loader.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Comments",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const CommentContainer(),
    );
  }
}

class CommentContainer extends StatefulWidget {
  const CommentContainer({Key? key}) : super(key: key);

  @override
  State<CommentContainer> createState() => _CommentContainerState();
}

class _CommentContainerState extends State<CommentContainer> {
  @override
  Widget build(BuildContext context) {
    if (commentLoaded) {
      return SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 170,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CommentBox(
                      profileID: 1,
                      userName: 'Venkadesh',
                      bio: '2nd Year CSE',
                      chatData: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      likeCount: 24,
                      thumbsUpCount: 15,
                      thumbsDownCount: 20,
                    ),
                    CommentBox(
                      profileID: 1,
                      userName: 'Venkadesh',
                      bio: '2nd Year CSE',
                      chatData: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      likeCount: 24,
                      thumbsUpCount: 15,
                      thumbsDownCount: 20,
                    ),
                    CommentBox(
                      profileID: 1,
                      userName: 'Venkadesh',
                      bio: '2nd Year CSE',
                      chatData: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      likeCount: 24,
                      thumbsUpCount: 15,
                      thumbsDownCount: 20,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    width: MediaQuery.of(context).size.width - 60,
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: 'Add Comment'
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    margin: const EdgeInsets.only(left: 5),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                            Icons.send
                        )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
    return const Loader();
  }
}


class CommentBox extends StatefulWidget {
  CommentBox({Key? key,
    var profileID,
    var userName,
    var bio,
    var chatData,
    var likeCount,
    var thumbsUpCount,
    var thumbsDownCount
  }) {
    this.profileID = profileID;
    this.userName = userName;
    this.bio = bio;
    this.chatData = chatData;
    this.likeCount = likeCount;
    this.thumbsUpCount = thumbsUpCount;
    this.thumbsDownCount = thumbsDownCount;
  }

  var profileID = 0;
  var userName = '';
  var bio = '';
  var chatData = '';
  var likeCount = 0;
  var thumbsUpCount = 0;
  var thumbsDownCount = 0;

  @override
  State<CommentBox> createState() => _CommentBoxState();
}

class _CommentBoxState extends State<CommentBox> {

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
      margin: const EdgeInsets.only(top: 15, bottom: 15, left: 20),
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
                            margin: const EdgeInsets.only(right: 6),
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
                            margin: const EdgeInsets.only(right: 6),
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
                            margin: const EdgeInsets.only(right: 6),
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
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
