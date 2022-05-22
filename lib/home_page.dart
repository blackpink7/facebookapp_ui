import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("facebook",style: TextStyle(fontWeight:FontWeight.w900,fontSize: 30,color: Colors.blueAccent),),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),
            ],
            elevation: 0,
          ),
            backgroundColor: Colors.grey.shade800,
          body: ListView(
            children: [
              //image 45x45,Whats on yor mind
              //Live+photo Chek in Icons
              Container(
                color: Colors.black,
                height: 120,
                margin: EdgeInsets.only(top: 0),
                padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                child: Column(
                  children: [
                    //user_image,TextField(what's on yor mind?)
                    Expanded(
                        child: Row(
                        children: [
                          Container(
                          height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/user_1.jpeg"),
                                fit: BoxFit.cover
                              )
                            ),
                        ),
                          SizedBox(width: 15,),
                          Container(
                            child: Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 10,right: 10,bottom: 2),
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22.5),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey
                                    )
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "What's on your mind?",
                                      hintStyle: TextStyle(color: Colors.grey.shade400),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                    )),
                    //iconss
                    Expanded(
                        child:Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.video_call,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text("Live",style: TextStyle(color: Colors.grey),),
                                ],
                              )
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 14,bottom: 14),
                              width: 1,
                              color: Colors.grey,
                            ),
                            Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.image,color: Colors.green,),
                                    SizedBox(width: 5,),
                                    Text("Photo",style: TextStyle(color: Colors.grey),),
                                  ],
                                )
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 14,bottom: 14),
                              width: 1,
                              color: Colors.grey,
                            ),
                            Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.location_on,color: Colors.red,),
                                    SizedBox(width: 5,),
                                    Text("Check in",style: TextStyle(color: Colors.grey),),
                                  ],
                                )
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
              //Stories Listview
              Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.black,
                padding: EdgeInsets.only(top: 10,bottom: 10),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 10,),
                    makeStroy(
                      storyImage: "assets/images/user_1.jpeg",
                      userName: "User one",
                      userImage: "assets/images/user_1.jpeg"
                    ),
                    makeStroy(
                        storyImage: "assets/images/user_1.jpeg",
                        userName: "User one",
                        userImage: "assets/images/user_1.jpeg"
                    ),
                    makeStroy(
                        storyImage: "assets/images/user_1.jpeg",
                        userName: "User one",
                        userImage: "assets/images/user_1.jpeg"
                    ),
                    makeStroy(
                        storyImage: "assets/images/user_1.jpeg",
                        userName: "User one",
                        userImage: "assets/images/user_1.jpeg"
                    ),
                    makeStroy(
                        storyImage: "assets/images/user_1.jpeg",
                        userName: "User one",
                        userImage: "assets/images/user_1.jpeg"
                    ),
                    makeStroy(
                        storyImage: "assets/images/user_1.jpeg",
                        userName: "User one",
                        userImage: "assets/images/user_1.jpeg"
                    ),
                  ],
                ),
              ),
              makeFeed(
                  userName: 'User Two',
                  userImage: 'assets/images/user_1.jpeg',
                  feedTime: '1 hr ago',
                  feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                  feedImage: 'assets/images/user_1.jpeg'
              ),
              makeFeed(
                  userName: 'User Two',
                  userImage: 'assets/images/user_1.jpeg',
                  feedTime: '1 hr ago',
                  feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                  feedImage: 'assets/images/user_1.jpeg'
              ),
              makeFeed(
                  userName: 'User Two',
                  userImage: 'assets/images/user_1.jpeg',
                  feedTime: '1 hr ago',
                  feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                  feedImage: 'assets/images/user_1.jpeg'
              ),
              makeFeed(
                  userName: 'User Two',
                  userImage: 'assets/images/user_1.jpeg',
                  feedTime: '1 hr ago',
                  feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                  feedImage: 'assets/images/user_1.jpeg'
              ),
            ],
          ),
    );

  }
  Widget makeStroy({userImage,userName,storyImage}){
    return AspectRatio(
        aspectRatio: 1.3/2,
          child: Container(
            margin: EdgeInsets.only(right: 10),
            //padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(userImage),
              fit: BoxFit.cover
              )
            ),
              child: Container(
                padding:EdgeInsets.all(10),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                   colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1),
                       ]
              ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 2),
                        image: DecorationImage(
                          image: AssetImage(userImage),
                        )
                      ),
                    ),
                    Text(userName,style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
          ),
          ));
  }
  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(userName, style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                            SizedBox(height: 3,),
                            Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey),),
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey,),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey, height: 1.5, letterSpacing: .7),),
                SizedBox(height: 20,),
              ],
            ),
          ),

          Container(
            height: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(feedImage),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    makeLike(),
                    Transform.translate(
                        offset: Offset(-5, 0),
                        child: makeLove()
                    ),
                    SizedBox(width: 5,),
                    Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey),)
                  ],
                ),
                Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }


  }


