<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="zh-CN">
  <head>
    <!-- 必須的 meta 標籤 -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="stylesheet" href="/iSpanCar/script/css/reset.css" />
    <link href="/iSpanCar/script/css/basic.css" rel="stylesheet" type="text/css" />
    <link
      href="https://i2.bahamut.com.tw/css/search.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://i2.bahamut.com.tw/css/index_top.css?v=1663318940"
      rel="stylesheet"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Teko:300,400"
    />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://i2.bahamut.com.tw/css/dailybonus.css?v=1648105932"
      rel="stylesheet"
      type="text/css"
    />
    <link href="/iSpanCar/script/css/forum.css" rel="stylesheet" type="text/css" />
    <link
      href="https://i2.bahamut.com.tw/css/forum_wallpaper_C.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://i2.bahamut.com.tw/css/plugins/tippy-1.4.0.css?v=1635411701"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://i2.bahamut.com.tw/css/plugins/slick.css?v=1610514513"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://i2.bahamut.com.tw/css/plugins/gamercard.css?v=1628734305"
      rel="stylesheet"
      type="text/css"
    />
    <link href="/iSpanCar/script/css/forum_wide.css" rel="stylesheet" type="text/css" />
    <link
      href="https://i2.bahamut.com.tw/css/forum-beta.css?v=1610514513"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://i2.bahamut.com.tw/css/plugins/shepherd-theme-arrows.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://i2.bahamut.com.tw/css/guild_create_dialogify.css?v=1611893974"
      rel="stylesheet"
      type="text/css"
    />

    <link
      href="https://i2.bahamut.com.tw/css/forum-post.css?v=1668483120"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://i2.bahamut.com.tw/css/forum-fontfix.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://i2.bahamut.com.tw/css/c-editor.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://i2.bahamut.com.tw/css/plugins/dialogify_insertpic.css?v=1656640995"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://i2.bahamut.com.tw/css/plugins/croppie-2.5.0.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://i2.bahamut.com.tw/css/plugins/toastr.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://i2.bahamut.com.tw/css/im_all-site-message.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://i2.bahamut.com.tw/css/im_all-site-message-utils.css"
    />

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
      crossorigin="anonymous"
    />

    <link
      href="https://unpkg.com/@wangeditor/editor@latest/dist/css/style.css"
      rel="stylesheet"
    />

    <link href="/iSpanCar/script/css/styles.css" rel="stylesheet" />
    <script src="https://cdn.bootcdn.net/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
    <script src="https://unpkg.com/@wangeditor/editor@latest/dist/index.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/iSpanCar/script/js/pageMe.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/axios/1.2.3/axios.js"></script>
    <script src="/iSpanCar/script/js/request.js"></script>
<!--     <script src="/iSpanCar/script/js/scripts.js"></script> -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@900&display=swap" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <title>貼文</title>
  </head>
  <body>
 <c:set value="${LoginOK}" var="login" />
 <c:set value="${login.memberPosition.permissionsofposition}" var="memberPosition" />
 <input type="hidden" value="${login.accountnumber}" id="logincheck">
<input type="hidden" value="${login.memberName}" id="loginName">


 <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav"></nav>
 
			<header class="masthead2">
                <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
                    <div class="d-flex justify-content-center">
                        <div class="text-center">
                            <h2 class="mx-auto my-0 text-uppercase"
                                style="color:white;font-size:6em;font-family: 'Noto Sans TC', sans-serif;">論壇</h2>
                            <!--                     <h2 class=" mx-auto mt-2 mb-5" style="color:white;font-size:2em;font-family:DFKai-SB;font-family: 'Noto Sans TC', sans-serif;">資車國際</h2> -->
                        </div>
                    </div>
                </div>
            </header>

<!--   <div class="container px-4 px-lg-5"> -->
<!--     <a class="navbar-brand" href="#page-top">首頁</a> -->
<!--     <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" -->
<!--             data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" -->
<!--             aria-label="Toggle navigation"> -->
<!--       Menu -->
<!--       <i class="fas fa-bars"></i> -->
<!--     </button> -->
<!--     <div class="collapse navbar-collapse" id="navbarResponsive"> -->
<!--       <ul class="navbar-nav ms-auto"> -->
<!--         <li class="nav-item"><b><a class="nav-link" href="#about">車廠</a></b></li> -->
<!--         <li class="nav-item"><b><a class="nav-link" href="#projects">車輛</a></b></li> -->
<!--         <li class="nav-item"><b><a class="nav-link" href="#projects">保養廠</a></b></li> -->
<!--         <li class="nav-item"><b><a class="nav-link" href="/dforum/home">論壇</a></b></li> -->
<!--         <li class="nav-item"><b><a class="nav-link" href="#about">商城</a></b></li> -->
<!--         <li class="nav-item"> -->
<!--           <b> -->
<%--             <a id="login-info" class="nav-link" href="${loginUser == null?'/login':'javascripe:void(0)'}"> --%>
<%--             ${loginUser == null ? '登入' : '歡迎：'.concat(loginUser.memberName).concat('(').concat(loginUser.accountnumber).concat(')')} --%>
<!--             </a> -->
<!--         </b></li> -->
<!--       </ul> -->
<!--     </div> -->
<!--   </div> -->

<div class="bg-black" id="content">
                <div class="row rounded">
                    <div class="col-1"></div>
                    <div class="col-10 bg-white justify-content-center rounded mb-2">
<div class="modal-custom" tabindex="-1" id="editor">
  <div id="editor—wrapper">
    <div id="toolbar-container2"></div>

    <div class="c-post__header c-post__header_custom">
      <h3>發表新文章</h3>
    </div>

    <div class="c-select-data">
      <select class="dropdown-group dropdown-group-primary is-error" id="SelectData">
        <option selected="selected" value="問題">問題</option>
        <option value="情報">情報</option>
        <option value="心得">心得</option>
        <option value="討論">討論</option>
        <option value="攻略">攻略</option>
        <option value="密技">密技</option>
        <option value="閒聊">閒聊</option>
        <option value="其他">其他</option>
        <option value="空白">空白</option>
      </select>

      <select class="dropdown-group dropdown-group-primary" id="SelectData2">
        <div id="SelectData3"></div>
      </select>
    </div>

    <input type="text" id="select-input" class="form-control is-error" name="title" value="" placeholder="請輸入文章標題⋯">
    <div class="c-section__main">
      <div class="c-post main_editor_section box-shadow__fromabove">
        <div id="editor-container2"></div>
      </div>
    </div>

    <div class="menu__post__btn">
      <div class="menu_cancel" onclick="onBackDetail()">
        <img src="https://i2.bahamut.com.tw/forum/icons/post_del.svg" />
        <span>取消</span>
      </div>

      <div class="menu_confirm" onclick="onpublishWZ2()">
        <img src="https://i2.bahamut.com.tw/forum/icons/post.svg" />
        <span>發佈文章</span>
      </div>
    </div>
  </div>
</div>

<script>
  function showFW() {
	  if($('#logincheck').val() == ""){
		  location.href='/login';
	  }
    document.getElementById("editor").style.display = "block";
    let str = '';
    for(let i = 0; i< categoryList.length; i++) {
      const item = categoryList[i];
      str += '<option value ="' + item.id+'">'+item.name+'</option>';

    }
    $('#SelectData2').append(str)
  }

  const editorConfig2 = {
    MENU_CONF: {
      uploadImage: {
        // 小於該值就插入 base64 格式（而不上傳），默認為 0
        server: '/api/upload-image',
        base64LimitSize: 50000 * 1024 // 50000kb
      }
    },
    placeholder:"請輸入内容...",
    onChange(editor) {
    },
  };

  const editor2 = window.wangEditor.createEditor({
    selector: "#editor-container2",
    html: "<p><br></p>",
    config: editorConfig2,
    mode: "default", // or 'simple'
  });

  const toolbarConfig2 = {
    excludeKeys: ["fullScreen"],
  };


  const toolbar2 = window.wangEditor.createToolbar({
    editor: editor2,
    selector: "#toolbar-container2",
    config: toolbarConfig2,
    mode: "default", // or 'simple'
  });

  function onpublishWZ2() {
    console.log("发布文章", editor2.getHtml(), $('#select-input').val(), $('#SelectData').val(), $('#SelectData2').val());

    sendtext({
      title: $('#select-input').val(),
      body: editor2.getHtml(),
      category: $('#SelectData2').val(),
      question: $('#SelectData').val(),
      best: false,
    }).then(res => {
      if (res.code == 200) {
        showMessage('success', 1);
        onBackDetail();
        changePage({ pageNum: 0, pageSize: 10});
      } else if (res.code == 401) {
        onBackDetail()
        Swal.fire("未登錄！請先登錄!", "", "error").then(r=>window.location.href = "/login?redirectUrl=/dforum/home");
      }

    })
  }
</script>

<%----%>
    <div id="BH-wrapper">


      <div id="BH-master">
        <!-- 分頁器 -->

        <div id="page" class="page_div" style="margin-top: 20px;"></div>
        </div>

        <!-- 分頁器结束 -->

        <!-- 分類 -->
      <div id="catetrys">
      </div>
        <!-- 列表開始 -->
      <div class="topBar">
        <div class="bar-content">
          <div class="bar-search">
            <img src="/static/iSpanCar/script/img/search.png" />
            <input id="searchInput" placeholder="輸入 1 或多字元來找文章…" onchange="searchChange()" />
          </div>

          <div class="fw-btn" onclick="showFW()">發文</div>
        </div>
      </div>
      <script>
        function searchChange(e) {
          changePage({pageNum: 0, pageSize: 10, title:  $('#searchInput').val() })
        }
      </script>
        <form
          name="formm"
          method="post"
          action="https://forum.gamer.com.tw/B.php?page=2&amp;bsn=23805&amp;qt=4&amp;q=5"
        >
          <input type="hidden" name="gparent" value="0" />
          <input type="hidden" name="unlock" value="0" />
          <input type="hidden" value="1979" name="vcode" />

          <div class="b-list-wrap b-imglist-wrap b-imglist-wrap03">
            <table class="b-list">
              <tr class="b-list__head">
                <td colspan="2" class="b-list__filter">
                  <div class="BH_forum_mainop">
                    <span>
                      <a
                      class="now_stop"
                      id="now_stop_1"
                        onclick="changeType(1)"
                      >
                        <i class="fa fa-th-list" aria-hidden="true"></i>縮圖
                      </a>
                      <a
                      id="now_stop_2"
                      onclick="changeType(2)"
                        ><i class="fa fa-align-justify" aria-hidden="true"></i
                        >清單</a
                      >
                    </span>
                  </div>
                  <div class="b-header_filter">
                    <p>
                      <i class="fa fa-filter" aria-hidden="true"></i>篩選 :
                    </p>
                    <select
                      class="b-list__filter__gp is-select"
                      onchange="selectListChange(this.options[this.options.selectedIndex])"
                    >
                      <option value="0">一般顯示</option>
                      <option value="5" selected="">GP &gt; 5</option>
                      <option value="20">GP &gt; 20</option>
                      <option value="50">GP &gt; 50</option>
                      <option value="100">GP &gt; 100</option>
                      <option value="200">GP &gt; 200</option>
                    </select>
                    <div>
                      <button
                        type="button"
                        class="b-list__filter__feature"
                        onclick="extractList();"
                      >
                        精華
                      </button>
                      <button
                        type="button"
                        class="b-list__filter__expert"
                        onclick="darenList(23805, 4);"
                      >
                        達人
                      </button>
                    </div>
                  </div>
                </td>
                <td>互動 / 人氣</td>
                <td style="width: 200px;">最新回覆</td>
              </tr>
            </table>
            <table  id="tab-list" class="b-list">
              <tbody>

              </tbody>
            </table>
          </div>
        </form>
        <!--列表結束-->
        <!-- 分頁器 -->

        <div id="page2" class="page_div" style="margin-top: 20px;"></div>
        <script src="/iSpanCar/script/js/list.js"></script>
        <script>
        </script>
        <!-- 分頁器结束 -->
      </div>
    </div>

    <!-- ------------------------------------詳情---------------------------------------------------------------- -->

    <div id="BH-master" class="detailshow" style="position: relative">

      <div class="menu__post__btn" style="right: -80px;">

        <div class="menu_cancel" onclick="backList()">
          <img src="https://i2.bahamut.com.tw/forum/icons/post_del.svg" />
          <span>返回列表</span>
        </div>
      </div>
      <!--內容左側區塊-->
      <div id="liuyanId">

      <!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

      </div>
      <!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

      <!--------------------------------------------------------------------- 加入樓層 ------------------------------>
      <section class="c-section">
        <div class="c-section__main c-editor c-quick-reply replysection">
          <div class="c-editor__input option floorOption">
            <input id="floorTitle" placeholder="請輸入標題">
            <div class="line"></div>
            <!-- 樓層 -->
<%--            <textarea id="floortextarea" placeholder="請輸入內容"></textarea>--%>
            <div id="toolbar-container"></div>
            <div id="floortextarea"></div>
            <div class="floorsend">
              <input
                type="button"
                class="btn--sm btn--send btn--normal"
                value="送出"
                onclick="quickPost()"
              />
            </div>
          </div>
        </div>
      </section>
      <!--------------------------------------------------------------------- 加入樓層完畢 ------------------------------>
    </div>

    <!-- ------------------------------------詳情結束---------------------------------------------------------------- -->

    <!-- 回覆…………………………………………………………………………………………………………………………………………………………………………………………………………………………………… -->

    <div class="modal-custom" tabindex="-1" id="editor">
      <div id="editor—wrapper">
<%--        <div id="toolbar-container"></div>--%>

        <!-- 文章信息 -->
        <div class="c-post__header c-post__header_custom">
          <h3>回覆文章</h3>
          <span>草稿已儲存於 2023-1-25 9:8，共 389 個 byte</span>
        </div>

        <h1 class="re-c-post__header__title header_title2" id="editTitle">
        </h1>
        <!-- 文章信息 -->

        <div class="c-section__main">
          <div class="c-post main_editor_section box-shadow__fromabove">
            <div id="editor-container"></div>
          </div>
        </div>

        <!-- 提交按鈕 -->

        <div class="menu__post__btn">
          <div class="menu_cancel" onclick="onBackDetail()">
            <img src="https://i2.bahamut.com.tw/forum/icons/post_del.svg" />
            <span>取消</span>
          </div>

          <div class="menu_confirm" onclick="onpublishWZ()">
            <img src="https://i2.bahamut.com.tw/forum/icons/post.svg" />
            <span>發佈文章</span>
          </div>
        </div>

        <!-- 提交按鈕後 -->
      </div>
    </div>
    <script>
      const { createEditor, createToolbar, i18nAddResources, i18nChangeLanguage } = window.wangEditor;

      const editorConfig = {
        MENU_CONF: {
          uploadImage: {
            // 小於該值就插入 base64 格式（而不上傳），默認為 0
            server: '/api/upload-image',
            base64LimitSize: 50000 * 1024 // 50000kb
          }
        },
        placeholder:
          "請輸入内容...",
        onChange(editor) {
          const html = editor.getHtml();
          console.log("editor content", html);
          // 也可以同步到 <textarea>
        },
      };

      const editor = createEditor({
        selector: "#floortextarea",
        html: "<p><br></p>",
        config: editorConfig,
        mode: "default", // or 'simple'
      });

      const twLang = {
        "editor": {
          "more": "更多",
          "justify": "對齊",
          "indent": "縮進",
          "image": "圖片",
          "video": "視頻"
        },
        "common": {
          "ok": "確定",
          "delete": "刪除",
          "enter": "回車"
        },
        "blockQuote": {
          "title": "引用"
        },
        "codeBlock": {
          "title": "代碼塊"
        },
        "color": {
          "color": "文字顏色",
          "bgColor": "背景色",
          "default": "默認顏色",
          "clear": "清除背景色"
        },
        "divider": {
          "title": "分割線"
        },
        "emotion": {
          "title": "表情"
        },
        "fontSize": {
          "title": "字號",
          "default": "默認字號"
        },
        "fontFamily": {
          "title": "字體",
          "default": "默認字體"
        },
        "fullScreen": {
          "title": "全屏"
        },
        "header": {
          "title": "標題",
          "text": "正文"
        },
        "image": {
          "netImage": "網絡圖片",
          "delete": "刪除圖片",
          "edit": "編輯圖片",
          "viewLink": "查看鏈接",
          "src": "圖片地址",
          "desc": "圖片描述",
          "link": "圖片鏈接"
        },
        "indent": {
          "decrease": "減少縮進",
          "increase": "增加縮進"
        },
        "justify": {
          "left": "左對齊",
          "right": "右對齊",
          "center": "居中對齊",
          "justify": "兩端對齊"
        },
        "lineHeight": {
          "title": "行高",
          "default": "默認行高"
        },
        "link": {
          "insert": "插入鏈接",
          "text": "鏈接文本",
          "url": "鏈接地址",
          "unLink": "取消鏈接",
          "edit": "修改鏈接",
          "view": "查看鏈接"
        },
        "textStyle": {
          "bold": "粗體",
          "clear": "清除格式",
          "code": "行內代碼",
          "italic": "斜體",
          "sub": "下標",
          "sup": "上標",
          "through": "刪除線",
          "underline": "下劃線"
        },
        "undo": {
          "undo": "撤銷",
          "redo": "重做"
        },
        "todo": {
          "todo": "待辦"
        },
        "listModule": {
          "unOrderedList": "無序列表",
          "orderedList": "有序列表"
        },
        "tableModule": {
          "deleteCol": "刪除列",
          "deleteRow": "刪除行",
          "deleteTable": "刪除表格",
          "widthAuto": "寬度自適應",
          "insertCol": "插入列",
          "insertRow": "插入行",
          "insertTable": "插入表格",
          "header": "表頭"
        },
        "videoModule": {
          "delete": "刪除視頻",
          "uploadVideo": "上傳視頻",
          "insertVideo": "插入視頻",
          "videoSrc": "視頻地址",
          "videoSrcPlaceHolder": "視頻文件 url 或第三方 <iframe>",
          "videoPoster": "視頻封面",
          "videoPosterPlaceHolder": "封面圖片 url",
          "ok": "確定",
          "editSize": "修改尺寸",
          "width": "寬度",
          "height": "高度"
        },
        "uploadImgModule": {
          "uploadImage": "上傳圖片",
          "uploadError": "{{fileName}} 上傳出錯"
        },
        "highLightModule": {
          "selectLang": "選擇語言"
        }
      }

      i18nAddResources('tw', twLang)
      i18nChangeLanguage('tw')

      const toolbarConfig = {
        excludeKeys: ["fullScreen"],
      };

      const toolbar = createToolbar({
        editor,
        selector: "#toolbar-container",
        config: toolbarConfig,
        mode: "default", // or 'simple'
      });

      function onBackDetail() {
        editor.clear();
        document.getElementById("editor").style.display = "none";
      }

    </script>

    <!-- 回覆结束…………………………………………………………………………………………………………………………………………………………………………………………………………………………………… -->

    <script type="text/javascript" src="/iSpanCar/script/js/emoji_jQuery.min.js"></script>
    <script>
      function backList() {
        document.getElementById("BH-wrapper").style.display = "block";
        document.getElementsByClassName("detailshow")[0].style.display =
          "none";
        document.getElementById("mainNav").style.display = "block";
      }

      //   詳情回覆
      function toReply(str) {
        const item = tiezeList.filter(it => it.id == str);
        selectTiziItem = item[0];
        const title = selectTiziItem.title;
        console.log("詳情回覆", title);
        document.getElementById("editor").style.display = "block";
        $('#editTitle').append(`RE:` + title)
      }


      // 讚一個
      // 倒讚一個
      function commentBp(e) {}
      // 插入表情

      function insetEmoji() {
        console.log("插入表情");
      }

      // 回覆
    </script>
    <!-- 選項 1：jQuery 和 Bootstrap 集成包（集成了 Popper） -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
      crossorigin="anonymous"
    ></script>

</div>
</div>

   
            <div id="footertext"></div>
            <script src="http://localhost:8080/iSpanCar/script/js/navhtml.js"></script>
            <script src="http://localhost:8080/iSpanCar/script/js/footerhtml.js"></script>
  <script src="http://localhost:8080/iSpanCar/script/js/scripts.js"></script>
  <script type="text/javascript">
  $(function(){
	  $('#userDropdown').on('click',function(){
		  location.href = '/userinfo';
	  })
  })
  </script>
  </body>
</html>
