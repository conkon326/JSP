<%@ page contentType="text/html; charset=Windows-31J"%>
<%
//▼各ﾍﾟｰｼﾞで表示する文章を配列で用意｡
String texts[] = {
  "誕生日に、ホームパーティを開いた。",
  "その時、家の中で皆の写真を撮っていたら、変なものが映った。",
  "ソファの後ろから見知らぬ青白い顔の女が顔を出し、虚ろな眼差しでこちらを見ている。",
  "「これやばくないか？」と思い、霊能力者に写真を鑑定してもらった。",
  "「この写真からは霊気を感じない。心霊写真でも何でもないよ。」<br>それを聞いた僕らは安心した。"
};

//各ﾍﾟｰｼﾞで表示する画像のﾌｧｲﾙ名を配列で用意｡
String pictures[] = {
  "cheers.jpg",
  "snap1.jpg",
  "snap2.jpg",
  "consult1.jpg",
  "consult2.jpg"
};

//requestは『暗黙ｵﾌﾞｼﾞｪｸﾄ』と呼ばれるﾓﾉの一つで､jspの環境において
//自動的に用意されるｵﾌﾞｼﾞｪｸﾄ(=ｲﾝｽﾀﾝｽ)で､変数requestで管理されている｡

//暗黙ｵﾌﾞｼﾞｪｸﾄrequestのgetParameterﾒｿｯﾄﾞを利用する事で､
//ﾊﾟﾗﾒｰﾀｰの値を『文字列』で取得できる｡
//対象のﾊﾟﾗﾒｰﾀｰが無い場合はnull(空っぽ)を返す｡

int intPage = 1;
if(request.getParameter("page") != null){
//                              -------
//実際にﾊﾟﾗﾒｰﾀｰを取得して作業する前に､一旦取得してみてnull以外かどうか
//(＝ﾊﾟﾗﾒｰﾀｰが存在しているかどうか)を確認する｡
//pageという名前のﾊﾟﾗﾒｰﾀｰが存在しない(null)場合は､変数intPageは1のまま｡
//pageという名前のﾊﾟﾗﾒｰﾀｰが存在する(null以外)場合は､if文の中の処理を行う｡

  intPage = Integer.parseInt(request.getParameter("page"));
  //                         -------.--------------------
  //                   暗黙ｵﾌﾞｼﾞｪｸﾄrequestを利用して､pageという｢名前｣が
  //                   付いたﾊﾟﾗﾒｰﾀｰの｢値｣を文字列で取得する｡
  //        -------.---------                            -
  //        取得した文字列を､IntegerｸﾗｽのparseIntﾒｿｯﾄﾞを利用して､
  //        int型に変換している｡
}
//===========この時点で､何ﾍﾟｰｼﾞ目を表示するのか確定している============
%>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>紙芝居</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="group1">
    <div class="inner">
      <div class="flex">
        <div class="flex-item pc-w100">

          <div class="stage"><img src="img/<%=pictures[intPage-1]%>" alt="画像"></div>
               <%//                           -------------------
                 //  intPageには表示するﾍﾟｰｼﾞの番号が入っている｡
                 //  その値を使って配列の部屋番号の指定を行っているが､
                 //  配列はｾﾞﾛ始まりなので､ﾏｲﾅｽ1の補正をかけている｡
               %>

          <div class="text">
            <p><%=texts[intPage-1]%></p>
            <%//  ----------------
              //  pictures配列の時と同様｡
            %>
          </div>

          <div class="control">

            <%//■1ﾍﾟｰｼﾞ(最初のﾍﾟｰｼﾞ)は｢進む｣のみ■%>
            <%if( intPage==1 ){%>
              <a href="PictureStory.jsp?page=2">
                            <%//        ------
                              //最初のﾍﾟｰｼﾞの｢次のﾍﾟｰｼﾞ｣は必ず2ﾍﾟｰｼﾞ目
                            %>
                進む<img src="img/allow_right.png" alt="進む">
              </a>

            <%//■2～4ﾍﾟｰｼﾞは｢戻る｣と｢進む｣のﾊﾟﾀｰﾝ■%>
            <%}else if( 2<=intPage && intPage<=4 ){%>
              <a href="PictureStory.jsp?page=<%=intPage-1%>">
                           <%//                 ---------
                             //現在表示しているﾍﾟｰｼﾞ数にﾏｲﾅｽ1した値を
                             //｢戻る｣のpageﾊﾟﾗﾒｰﾀｰの値にしている｡
                           %>
                <img src="img/allow_left.png" alt="戻る">戻る
              </a>
              <a href="PictureStory.jsp?page=<%=intPage+1%>">
                           <%//                 ---------
                             //現在表示しているﾍﾟｰｼﾞ数にﾌﾟﾗｽ1した値を
                             //｢進｣のpageﾊﾟﾗﾒｰﾀｰの値にしている｡
                           %>
                進む<img src="img/allow_right.png" alt="進む">
              </a>

            <%//■5ﾍﾟｰｼﾞ(最後のﾍﾟｰｼﾞ)は｢戻る｣と｢TOPへ｣■%>
            <%}else if( intPage==5 ){%>
              <a href="PictureStory.jsp?page=<%=intPage-1%>">
                <img src="img/allow_left.png" alt="戻る">戻る
              </a>
              <a href="PictureStory.jsp?page=1">
                TOPへ<img src="img/allow_right.png" alt="TOPへ">
              </a>

            <%}%>

          </div>
        </div><!-- .flex-item -->
      </div><!-- .flex -->
    </div><!-- .inner -->
  </div><!-- .group1 -->
</body>
</html>