<%@ page contentType="text/html; charset=Windows-31J"%>
<%
//���e�߰�ނŕ\�����镶�͂�z��ŗp�ӡ
String texts[] = {
  "�a�����ɁA�z�[���p�[�e�B���J�����B",
  "���̎��A�Ƃ̒��ŊF�̎ʐ^���B���Ă�����A�ςȂ��̂��f�����B",
  "�\�t�@�̌�납�猩�m��ʐ�����̏�������o���A����Ȋ፷���ł���������Ă���B",
  "�u�����΂��Ȃ����H�v�Ǝv���A��\�͎҂Ɏʐ^���Ӓ肵�Ă�������B",
  "�u���̎ʐ^����͗�C�������Ȃ��B�S��ʐ^�ł����ł��Ȃ���B�v<br>����𕷂����l��͈��S�����B"
};

//�e�߰�ނŕ\������摜��̧�ٖ���z��ŗp�ӡ
String pictures[] = {
  "cheers.jpg",
  "snap1.jpg",
  "snap2.jpg",
  "consult1.jpg",
  "consult2.jpg"
};

//request�́w�Öٵ�޼ު�āx�ƌĂ΂���ɂ̈�Ťjsp�̊��ɂ�����
//�����I�ɗp�ӂ�����޼ު��(=�ݽ�ݽ)�Ť�ϐ�request�ŊǗ�����Ă���

//�Öٵ�޼ު��request��getParameterҿ��ނ𗘗p���鎖�Ť
//���Ұ���̒l���w������x�Ŏ擾�ł���
//�Ώۂ����Ұ���������ꍇ��null(�����)��Ԃ��

int intPage = 1;
if(request.getParameter("page") != null){
//                              -------
//���ۂ����Ұ�����擾���č�Ƃ���O�ɤ��U�擾���Ă݂�null�ȊO���ǂ���
//(�����Ұ�������݂��Ă��邩�ǂ���)���m�F����
//page�Ƃ������O�����Ұ�������݂��Ȃ�(null)�ꍇ�ͤ�ϐ�intPage��1�̂܂ܡ
//page�Ƃ������O�����Ұ�������݂���(null�ȊO)�ꍇ�ͤif���̒��̏������s���

  intPage = Integer.parseInt(request.getParameter("page"));
  //                         -------.--------------------
  //                   �Öٵ�޼ު��request�𗘗p���Ĥpage�Ƃ�������O���
  //                   �t�������Ұ���̢�l��𕶎���Ŏ擾����
  //        -------.---------                            -
  //        �擾�����������Integer�׽��parseIntҿ��ނ𗘗p���Ĥ
  //        int�^�ɕϊ����Ă���
}
//===========���̎��_�Ť���߰�ޖڂ�\������̂��m�肵�Ă���============
%>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>���ŋ�</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="group1">
    <div class="inner">
      <div class="flex">
        <div class="flex-item pc-w100">

          <div class="stage"><img src="img/<%=pictures[intPage-1]%>" alt="�摜"></div>
               <%//                           -------------------
                 //  intPage�ɂ͕\�������߰�ނ̔ԍ��������Ă���
                 //  ���̒l���g���Ĕz��̕����ԍ��̎w����s���Ă��邪�
                 //  �z��;�ێn�܂�Ȃ̂ŤϲŽ1�̕␳�������Ă���
               %>

          <div class="text">
            <p><%=texts[intPage-1]%></p>
            <%//  ----------------
              //  pictures�z��̎��Ɠ��l�
            %>
          </div>

          <div class="control">

            <%//��1�߰��(�ŏ����߰��)�͢�i�ޣ�̂݁�%>
            <%if( intPage==1 ){%>
              <a href="PictureStory.jsp?page=2">
                            <%//        ------
                              //�ŏ����߰�ނ̢�����߰�ޣ�͕K��2�߰�ޖ�
                            %>
                �i��<img src="img/allow_right.png" alt="�i��">
              </a>

            <%//��2�`4�߰�ނ͢�߂飂Ƣ�i�ޣ������݁�%>
            <%}else if( 2<=intPage && intPage<=4 ){%>
              <a href="PictureStory.jsp?page=<%=intPage-1%>">
                           <%//                 ---------
                             //���ݕ\�����Ă����߰�ސ���ϲŽ1�����l��
                             //��߂飂�page���Ұ���̒l�ɂ��Ă���
                           %>
                <img src="img/allow_left.png" alt="�߂�">�߂�
              </a>
              <a href="PictureStory.jsp?page=<%=intPage+1%>">
                           <%//                 ---------
                             //���ݕ\�����Ă����߰�ސ�����׽1�����l��
                             //��i���page���Ұ���̒l�ɂ��Ă���
                           %>
                �i��<img src="img/allow_right.png" alt="�i��">
              </a>

            <%//��5�߰��(�Ō���߰��)�͢�߂飂ƢTOP�֣��%>
            <%}else if( intPage==5 ){%>
              <a href="PictureStory.jsp?page=<%=intPage-1%>">
                <img src="img/allow_left.png" alt="�߂�">�߂�
              </a>
              <a href="PictureStory.jsp?page=1">
                TOP��<img src="img/allow_right.png" alt="TOP��">
              </a>

            <%}%>

          </div>
        </div><!-- .flex-item -->
      </div><!-- .flex -->
    </div><!-- .inner -->
  </div><!-- .group1 -->
</body>
</html>