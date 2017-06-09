<%@ page language="java"  import="java.util.*" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>百度音乐系统</title>
    <meta name="keywords" content="关键词，关键词">
    <meta name="description" content="">

    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        body {
            font-size: 12px;
            font-family: "微软雅黑";
            color: #666;
        }

        img {
            border: none;
        }

        /*top start*/
        .top {
            width: 100%;
            height: 56px;
            background: #333
        }

        .top .t_header {
            width: 95%;
            height: 56px;
            margin: 0 auto;
        }

        .top .t_header .t_logo {
            margin-top: 12px;
            float: left;
        }

        .top .t_header .t_desc {
            float: right;
            line-height: 56px;
            font-size: 18px;
        }

        /*top end*/

        /*content start*/
        .content {
            width: 100%;
            margin-top: 15px;
        }

        .content .c_box {
            padding: 10px
        }

        .content .c_box .c_select {
            width: 190px;
            float: left;
        }

        .content .c_box .c_select .c_menu {
            border-bottom: solid #ddd;
        }

        .content .c_box .c_select .c_menu ul li {
            list-style: none;
            line-height: 36px;
            color: #333;
            padding-left: 10px;
            border-radius: 4px;
            cursor: pointer;
        }

        .content .c_box .c_select .c_menu ul li:hover {
            background: #f0f0f0
        }

        .content .c_box .c_select .c_menu ul .c_sel {
            background: #f0f0f0;
        }

        .content .c_box .c_select .c_add .c_mymusic {
            float: left;
            color: #aaa;
            line-height: 40px;
        }

        .content .c_box .c_select .c_add .c_create {
            width: 18px;
            height: 18px;
            display: block;
            float: right;
            background: url(images/icon.png) 1px 318px;
            margin-top: 11px;
        }

        /*c_list start*/

        .content .c_box .c_list {
            width: 58%;
            float: left;
            margin-left: 30px
        }

        .content .c_box .c_list .c_music .m_title {
            width: 100%;
            height: 36px;
            border-bottom: 1px solid #ebebeb;
        }

        .content .c_box .c_list .c_music .m_title .m_check {
            float: left;
            padding: 12px 5px 0px 10px;
        }

        .content .c_box .c_list .c_music .m_title .m_info {
            width: 57%;
            float: left;
            margin-left: 70px;
            color: #aaa;
        }

        .content .c_box .c_list .c_music .m_title .m_info .m_t {
            width: 33%;
            float: left;
            padding-top: 8px;
        }

        .content .c_box .c_list .c_music .m_song .s_list {
            width: 100%;
            height: 44px;
            border-bottom: 1px solid #ebebeb;
        }

        .content .c_box .c_list .c_music .m_song .s_list:hover {
            background: #f5f5f5
        }

        .content .c_box .c_list .c_music .m_song .s_list .l_choose {
            float: left;
            padding: 17px 5px 0px 10px;
        }

        .content .c_box .c_list .c_music .m_song .s_list .l_number {
            float: left;
            width: 36px;
            height: 44px;
            text-align: center;
            line-height: 44px;
        }

        .content .c_box .c_list .c_music .m_song .s_list .l_number .n_num {
            width: 18px;
            height: 18px;
            display: inline-block;
            background: url("images/play.gif") no-repeat;
            font-size: 0;
            margin: 15px 0 0 10px;
        }

        .content .c_box .c_list .c_music .m_song .s_list .l_info {
            float: left;
            width: 57%;
            margin-left: 32px;
        }

        .content .c_box .c_list .c_music .m_song .s_list .l_info .l_t {
            float: left;
            width: 33%;
            line-height: 44px;
        }

        .content .c_box .c_list .c_music .m_song .s_list .l_love {
            width: 110px;
            height: 44px;
            float: right;
        }

        .content .c_box .c_list .c_music .m_song .s_list .l_love .l_icon {
            width: 18px;
            height: 18px;
            display: block;
            float: left;
            margin: 12px 18px 0 0;
            background: url("images/icon.png") no-repeat;
        }

        .content .c_box .c_list .c_music .m_song .s_list .l_love .l_like {
            background-position: 0 -155px;
        }

        .content .c_box .c_list .c_music .m_song .s_list .l_love .l_more {
            background-position: 0 -473px;
        }

        .content .c_box .c_list .c_music .m_song .s_list .l_love .l_del {
            background-position: 0 -491px;
        }

        /*end c_list*/
        .content .c_box .c_lrc {
            width: 250px;
            height: 500px;
            float: right;
        }

        .content .c_box .c_lrc .l_img {
            text-align: center;
            padding-top: 15px;
        }

        .content .c_box .c_lrc .l_img img {
            border-radius: 10px;
            box-shadow: 1px 2px 10px -1px #000;
        }

        .content .c_box .c_lrc .l_btn {
            width: 120px;
            height: 40px;
            background: #ff9707;
            display: block;
            text-align: center;
            line-height: 36px;
            margin: 10px auto;
            border-radius: 3px;
            color: #fff;
            text-decoration-line: none;
            font-size: 16px;
        }

        .content .c_box .c_lrc .l_btn:hover {
            background: #ff3f10;
        }

        .content .c_box .c_lrc .l_con {
            width: 250px;
            height: 350px;
            overflow: auto;

        }

        .content .c_box .c_lrc .l_con ul li {
            list-style: none;
            line-height: 30px;
            padding-left: 33px;
            transition: font-size 0.6s ease;
            height: 30px;
            font-size: 14px;
            position:relative;
        }

        .content .c_box .c_lrc .l_con ul li>div{
            position:absolute;left:40px; top:0;overflow: hidden;
            bottom: 0;
        }

        .content .c_box .c_lrc .l_con ul li .l_cover{
            color:red;
            width:0;
        }

        .content .c_box .c_lrc .l_con ul li.sel {
            font-size: 16px;
            color: #69f;
        }



        /*content end*/

        /*player start*/
        .player {
            width: 100%;
            height: 80px;
            background: #333;
            position: fixed;
            bottom: 0;
            left: 0;
        }

        .player .p_left {
            width: 230px;
            height: 80px;
            float: left;
        }

        .player .p_left .p_icon {
            margin: 25px 0 0 25px;
            width: 30px;
            height: 30px;
            display: block;
            background: url("images/icon.png") no-repeat;
            float: left;
        }

        .player .p_left .p_pre {
            background-position: 0 -90px;
        }

        .player .p_left .p_pre:hover {
            background-position: -30px -90px;
        }

        .player .p_left .p_play {
            background-position: 0 0;
        }

        .player .p_left .p_play:hover {
            background-position: -30px 0;
        }

        .player .p_left .p_stop {
            background-position: 0 -30px;
            display: none;
        }

        .player .p_left .p_next {
            background-position: 0 -60px;
        }

        .player .p_left .p_next:hover {
            background-position: -30px -60px;
        }

        .player .p_left .p_tool .t_t {
            float: left;
            margin: 30px 0 0 42px;
            width: 20px;
            height: 18px;
            display: block;
            background: url("images/icon.png") no-repeat;
        }

        .player .p_left .p_tool .t_list {
            background-position: 0 -180px;
        }

        .player .p_left .p_tool .t_list:hover {
            background-position: -30px -180px;
        }

        .player .p_left .p_tool .t_single {
            background-position: 0 -200px;
            display: none;
        }

        .player .p_left .p_tool .t_single:hover {
            background-position: -30px -200px;
            display: none;
        }

        .player .p_left .p_tool .t_random {
            background-position: 0 -220px;
            display: none;
        }

        .player .p_left .p_tool .t_random:hover {
            background-position: -30px -220px;
            display: none;
        }

        .player .p_content {
            width: 48%;
            height: 60px;
            float: left;
            padding: 20px 0 0 50px;
        }

        .player .p_content .c_name {
            width: 100%;
            height: 25px;
        }

        .player .p_content .c_name .n_title {
            font-size: 14px;
            text-decoration: none;
            color: #fff;
            float: left;
        }

        .player .p_content .c_name .n_group {
            float: right;
        }

        .player .p_content .c_name .n_group .g_g {
            margin-left: 20px;
            background: url("images/icon.png") no-repeat;
            width: 18px;
            height: 18px;
            display: block;
            float: left;
        }

        .player .p_content .c_name .n_group .g_fav {
            background-position: 0 -240px;
        }

        .player .p_content .c_name .n_group .g_fav:hover {
            background-position: -28px -240px;
        }

        .player .p_content .c_name .n_group .g_share {
            background-position: 0 -259px;
        }

        .player .p_content .c_name .n_group .g_share:hover {
            background-position: -28px -259px;
        }

        .player .p_content .c_name .n_group .g_more {
            background-position: 0 -278px;
        }

        .player .p_content .c_name .n_group .g_more:hover {
            background-position: -28px -278px;
        }

        .player .p_content .c_time {
            width: 100%;
            height: 25px;
        }

        .player .p_content .c_time .t_left {
            float: left;
        }

        .player .p_content .c_time .t_center {
            width: 83%;
            height: 4px;
            background: #9b9b9b;
            float: left;
            margin: 7px 0 0 10px;
            position: relative;
        }

        .player .p_content .c_time .t_center .c_played {
            width: 0;
            height: 4px;
            background: #fff;
        }

        .player .p_content .c_time .t_center .c_current {
            background: #fff;
            width: 9px;
            height: 9px;
            border-radius: 5px;
            position: absolute;
            top: -3px;
            left: 0;
            cursor: pointer;
            z-index: 1;
        }

        .player .p_content .c_time .t_center .c_future {
            width: 100%;
            height: 10px;
            position: absolute;
            top: -5px;
            left: 0;
        }

        .player .p_content .c_time .t_right {
            float: right;
        }

        .player .p_right {
            width: 310px;
            height: 80px;
            float: right;
        }

        .player .p_right .r_qua {
            width: 80px;
            height: 30px;
            display: block;
            background: #E1e1e1;
            text-decoration: none;
            text-align: center;
            line-height: 30px;
            color: #505050;
            border-radius: 15px;
            float: left;
            margin: 25px 0 0 50px;
        }

        .player .p_right .r_qua:hover {
            background: #fff;
        }

        .player .p_right .r_voice {
            margin: 32px 0 0 26px;
            float: left;
            width: 110px;
            height: 18px;
        }

        .player .p_right .r_voice .v_trumpet {
            width: 18px;
            height: 18px;
            background: url("images/icon.png") no-repeat 0 -296px;
            display: block;
            float: left;
        }

        .player .p_right .r_voice .v_sel {
            background-position: 0 -314px;
        }

        .player .p_right .r_voice .t_box {
            width: 80px;
            height: 18px;
            float: right;
        }

        .player .p_right .r_voice .t_box .b_all {
            position: relative;
            width: 80px;
            height: 3px;
            background: #9b9b9b;
            margin-top: 8px;
        }

        .player .p_right .r_voice .t_box .b_all .a_small {
            width: 40%;
            height: 3px;
            background: #fff;
        }

        .player .p_right .r_voice .t_box .b_all .a_current {
            width: 9px;
            height: 9px;
            border-radius: 5px;
            background: #fff;
            position: absolute;
            top: -3px;
            left: 40%;
            cursor: pointer;
            z-index: 1;
        }

        .player .p_right .r_voice .t_box .b_all .a_big {
            width: 100%;
            height: 10px;
            position: absolute;
            top: -5px;
            left: 0;
        }

        /*end player*/

        #lrc {
            display: none
        }

        .selected {
            background: #f5f5f5
        }

        ::-webkit-scrollbar {
            width: 5px;
            height: 6px;
            background: #ccc;
        }

        ::-webkit-scrollbar-button {
            background-color: #e5e5e5;
        }

        ::-webkit-scrollbar-track {
            background: #999;
        }

        ::-webkit-scrollbar-track-piece {
            background: #ccc
        }

        ::-webkit-scrollbar-thumb {
            background: #666;
        }

        ::-webkit-scrollbar-corner {
            background: #82AFFF;
        }

        ::-webkit-scrollbar-resizer {
            background: #FF0BEE;
        }

        scrollbar {
            -moz-appearance: none !important;
            background: rgb(0, 255, 0) !important;
        }

        scrollbarbutton {
            -moz-appearance: none !important;
            background-color: rgb(0, 0, 255) !important;
        }

        scrollbarbutton:hover {
            -moz-appearance: none !important;
            background-color: rgb(255, 0, 0) !important;
        }

        /*响应式布局*/
        @media screen and (max-width: 1160px){
            .content .c_box .c_list{width:50%;}
            .player .p_content{width:43%;}
        }

        @media screen and (max-width: 1050px){
            .content .c_box .c_list .c_music .m_song .s_list .l_info .l_t{
                float: left;
                width:25%;
                text-overflow: ellipsis;
                white-space: nowrap;
                overflow: hidden;
            }
            .player .p_content{
                width:33%;
            }
        }

        @media screen and (max-width: 985px){
            .content .c_box .c_list .c_music .m_song .s_list .l_info{
                width:33%;
            }
            .content .c_box .c_list{width: 40%;}
            .player .p_content{
                width:28%;
            }

        }

        @media screen and (max-width: 886px){
            .content .c_box .c_music .m_song .s_list .l_love .l_more{
                display: none;width:0;
            }
            .content .c_box .c_music .m_song .s_list .l_love .l_del{
                width: 0;
                display: none;
            }
            .content .c_box .c_music .m_song .s_list{
                width:35%;
            }
            .player .p_content .c_name .n_group{display: none;}
            .player .p_content .c_time .t_center{width:40%;}
            .player .p_content{width:15%;}
        }

        @media screen and (max-width: 886px){
            .player .p_content{display: none;}
        }
        @media screen and (max-width: 756px){
            .content .c_box .c_list{display: none;}
        }
        @media screen and (max-width: 546px){
            .player .p_right{display: none;}
        }
        @media screen and (max-width: 465px){
            .content .c_box .c_select{
                display: none;
            }
        }
        @media screen and (max-width: 315px){
            .top .t_header .t_desc{display: none;}
        }




    </style>
</head>
<body>
<!--top-start-->
<div class="top">
    <div class="t_header">
        <div class="t_logo">
            <a href="#">
                <img src="images/logo.png" alt="Jarvis音乐系统" width="134" height="32"/>
            </a>
        </div>
        <div class="t_desc">Jarvis音乐系统</div>
    </div>
</div>
<!--end top-->

<!--content start-->
<div class="content">
    <div class="c_box">
        <!--c_select start-->
        <div class="c_select">
            <div class="c_menu">
                <ul>
                    <li class="c_sel">正在播放</li>
                    <li>播放历史</li>
                    <li>收藏列表</li>
                </ul>
            </div>
            <div class="c_add">
                <span class="c_mymusic">我创建的精选集</span>
                <a href="#" class="c_create"></a>
                <div class="c_title"><img src="images/01.png" alt="创建选集" width="185" height="89"></div>
            </div>
        </div>
        <!--c_select end-->

        <!--c_list start-->
        <div class="c_list">
            <div class="c_music">
                <div class="m_title">
                    <a href="#" class="m_check"><input type="checkbox"/></a>
                    <div class="m_info">
                        <div class="m_t">歌曲(30)</div>
                        <div class="m_t">演唱者</div>
                        <div class="m_t">专辑</div>
                    </div>

                </div>
                <div class="m_song">
                    <div class="s_list" data-link="mp3/西海情歌 - 刀郎.mp3">
                        <p class="l_choose"><input type="checkbox"></p>
                        <p class="l_number">
                            <span class="">1</span>
                        </p>
                        <div class="l_info">
                            <div class="l_t">西海情歌</div>
                            <div class="l_t">刀郎</div>
                            <div class="l_t">《西海情歌》</div>
                        </div>
                        <div class="l_love">
                            <a href="#" class="l_icon l_like"></a>
                            <a href="#" class="l_icon l_more"></a>
                            <a href="#" class="l_icon l_del"></a>
                        </div>
                    </div>
                    <div class="s_list" data-link="mp3/电台情歌 - 莫文蔚.mp3">
                        <p class="l_choose"><input type="checkbox"></p>
                        <p class="l_number">
                            <span class="">1</span>
                        </p>
                        <div class="l_info">
                            <div class="l_t">电台情歌</div>
                            <div class="l_t">莫文蔚</div>
                            <div class="l_t">我的青葱岁月</div>
                        </div>
                        <div class="l_love">
                            <a href="#" class="l_icon l_like"></a>
                            <a href="#" class="l_icon l_more"></a>
                            <a href="#" class="l_icon l_del"></a>
                        </div>
                    </div>
                    <div class="s_list" data-link="mp3/独角戏 - 许茹芸.mp3">
                        <p class="l_choose"><input type="checkbox"></p>
                        <p class="l_number"><span class="">1</span></p>
                        <div class="l_info">
                            <div class="l_t">独角戏</div>
                            <div class="l_t">许茹芸</div>
                            <div class="l_t">我的青葱岁月</div>
                        </div>
                        <div class="l_love">
                            <a href="#" class="l_icon l_like"></a>
                            <a href="#" class="l_icon l_more"></a>
                            <a href="#" class="l_icon l_del"></a>
                        </div>
                    </div>
                    <div class="s_list" data-link="mp3/红日 - 李克勤.mp3">
                        <p class="l_choose"><input type="checkbox"></p>
                        <p class="l_number"><span class="">1</span></p>
                        <div class="l_info">
                            <div class="l_t">红日</div>
                            <div class="l_t">李克勤</div>
                            <div class="l_t">我的青葱岁月</div>
                        </div>
                        <div class="l_love">
                            <a href="#" class="l_icon l_like"></a>
                            <a href="#" class="l_icon l_more"></a>
                            <a href="#" class="l_icon l_del"></a>
                        </div>
                    </div>
                    <div class="s_list" data-link="mp3/男儿当自强 - 林子祥.mp3">
                        <p class="l_choose"><input type="checkbox"></p>
                        <p class="l_number"><span class="">1</span></p>
                        <div class="l_info">
                            <div class="l_t">男儿当自强</div>
                            <div class="l_t">林子祥</div>
                            <div class="l_t">我的青葱岁月</div>
                        </div>
                        <div class="l_love">
                            <a href="#" class="l_icon l_like"></a>
                            <a href="#" class="l_icon l_more"></a>
                            <a href="#" class="l_icon l_del"></a>
                        </div>
                    </div>
                    <div class="s_list" data-link="mp3/今夜你会不会来 - 黎明.mp3">
                        <p class="l_choose"><input type="checkbox"></p>
                        <p class="l_number"><span class="">1</span></p>
                        <div class="l_info">
                            <div class="l_t">今夜你会不会来</div>
                            <div class="l_t">黎明</div>
                            <div class="l_t">我的青葱岁月</div>
                        </div>
                        <div class="l_love">
                            <a href="#" class="l_icon l_like"></a>
                            <a href="#" class="l_icon l_more"></a>
                            <a href="#" class="l_icon l_del"></a>
                        </div>
                    </div>
                    <div class="s_list" data-link="mp3/你的眼神 - 蔡琴.mp3">
                        <p class="l_choose"><input type="checkbox"></p>
                        <p class="l_number"><span class="">1</span></p>
                        <div class="l_info">
                            <div class="l_t">你的眼神</div>
                            <div class="l_t">蔡琴</div>
                            <div class="l_t">我的青葱岁月</div>
                        </div>
                        <div class="l_love">
                            <a href="#" class="l_icon l_like"></a>
                            <a href="#" class="l_icon l_more"></a>
                            <a href="#" class="l_icon l_del"></a>
                        </div>
                    </div>
                    <div class="s_list" data-link="mp3/回到拉萨 - 郑钧.mp3">
                        <p class="l_choose"><input type="checkbox"></p>
                        <p class="l_number"><span class="">1</span></p>
                        <div class="l_info">
                            <div class="l_t">回到拉萨</div>
                            <div class="l_t">郑钧</div>
                            <div class="l_t">我的青葱岁月</div>
                        </div>
                        <div class="l_love">
                            <a href="#" class="l_icon l_like"></a>
                            <a href="#" class="l_icon l_more"></a>
                            <a href="#" class="l_icon l_del"></a>
                        </div>
                    </div>
                    <div class="s_list" data-link="mp3/Yesterday Once More - Carpenters.mp3">
                        <p class="l_choose"><input type="checkbox"></p>
                        <p class="l_number"><span class="">1</span></p>
                        <div class="l_info">
                            <div class="l_t">Yesterday Once More</div>
                            <div class="l_t">Carpenters</div>
                            <div class="l_t">我的青葱岁月</div>
                        </div>
                        <div class="l_love">
                            <a href="#" class="l_icon l_like"></a>
                            <a href="#" class="l_icon l_more"></a>
                            <a href="#" class="l_icon l_del"></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--end c_list-->

        <!--c_lrc start-->
        <div class="c_lrc">
            <div class="l_img">
                <img src="images/mv.jpg" alt="Jarvis" width="185" height="185">
            </div>
            <a href="#" class="l_btn">亲亲我^_^</a>
            <div class="l_con">
                <ul id="lyrics">
                    <li class="sel"></li>
                </ul>

            </div>
        </div>
        <!--end c_lrc-->


    </div>
</div>
<!--end content-->

<!--player start-->
<div class="player">
    <div class="p_left">
        <a href="#" class="p_icon p_pre" title="上一曲"></a>
        <a href="#" class="p_icon p_play" title="播放"></a>
        <a href="#" class="p_icon p_stop" title="暂停"></a>
        <a href="#" class="p_icon p_next" title="下一曲"></a>
        <div class="p_tool">
            <a href="#" class="t_t t_list" title="列表循环"></a>
            <a href="#" class="t_t t_single" title="单曲循环"></a>
            <a href="#" class="t_t t_random" title="随机播放"></a>
        </div>
    </div>
    <div class="p_content">
        <div class="c_name">
            <a href="#" class="n_title"></a>
            <div class="n_group">
                <a href="#" title="收藏" class="g_g g_fav"></a>
                <a href="#" title="分享" class="g_g g_share"></a>
                <a href="#" title="更多" class="g_g g_more"></a>
            </div>
        </div>
        <div class="c_time">
            <div class="t_left">00:00</div>
            <div class="t_center">
                <div class="c_played"></div>
                <div class="c_current"></div>
                <div class="c_future"></div>
            </div>
            <div class="t_right">00:00</div>
        </div>
    </div>
    <div class="p_right">
        <a href="#" class="r_qua">高品质</a>
        <div class="r_voice">
            <a href="#" class="v_trumpet"></a>
            <div class="t_box">
                <div class="b_all">
                    <div class="a_small"></div>
                    <div class="a_current"></div>
                    <div class="a_big"></div>
                </div>
            </div>
        </div>
    </div>

</div>
<!--end player-->

<audio id="audio"></audio>


<!--引入jQuery的官方类库-->
<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        //创建一个MP3的播放器
        var audioDom = document.getElementById("audio");

        //        设置初始音量
        audioDom.volume = 0.4;

        /*
        function loadLrc() {
            //        获取textarea中间的歌词内容
            var lrc         = $("#lrc").val();
            //        把时间和歌词分离出来
            var lrcArr      = lrc.split("[");
            var html        = "";
            for (var i = 0; i < lrcArr.length; i++) {
                //            第二次分割
                var arr     = lrcArr[i].split("]");
                //            取到歌词
                var message = arr[1];
                //            取到时间
                var timer   = arr[0].split(".");
                //            取到分钟和秒
                var stime   = timer[0].split(":");
                var ms      = stime[0] * 60 + stime[1] * 1;
                if (message && ms > 0) {
                    html += "<li class='l_" + ms + "'>" +
                        "<div class='l_text'>"+message+"</div>" +
                        "<div class='l_cover'>"+message+"</div> " +
                        "</li>";
                }
            }
            $("#lyrics").html(html);

        }
        */
        
        //从服务器动态加载歌词
        function loadLrc(name){
        	$.ajax({
        		type:"post",
        		url:"data.jsp",
        		data:{"name":name},
        		success:function(data){
        			var lrc = data;
//        	        把时间和歌词分离出来
                    var lrcArr      = lrc.split("[");
                    var html        = "";
                    for (var i = 0; i < lrcArr.length; i++) {
                        //            第二次分割
                        var arr     = lrcArr[i].split("]");
                        //            取到歌词
                        var message = arr[1];
                        //            取到时间
                        var timer   = arr[0].split(".");
                        //            取到分钟和秒
                        var stime   = timer[0].split(":");
                        var ms      = stime[0] * 60 + stime[1] * 1;
                        if (message && ms > 0) {
                            html += "<li class='l_" + ms + "'>" +
                                "<div class='l_text'>"+message+"</div>" +
                                "<div class='l_cover'>"+message+"</div> " +
                                "</li>";
                        }
                    }
                    $("#lyrics").html(html);
                  //联动音乐播放歌词
                    audioDom.addEventListener("timeupdate", function () {
                        //获取当前音乐播放时间
                        var timer = this.currentTime;
                        //            解析音乐对应的时间
                        var m     = parseInt(timer / 60);
                        var s     = parseInt(timer);
                        var ms = $(".l_"+s).find(".l_text").eq(0).text().length-5;
                        //对应的时间选中歌词
                        //$(".l_" + s).addClass("sel").siblings().removeClass("sel");
                        $(".l_"+s).siblings().find(".l_cover").removeAttr("style");
                        $(".l_"+s).addClass("sel").siblings().removeClass("sel")
                        .end().find(".l_cover").css("transition","width "+ms+"s linear")
                        .width("100%");
                        //            联动滚动条自动滚动
                        $(".l_con").scrollTop(($(".sel").index() - 2) * 29.6);

                    });
        		}
        	});
        }


        

        //        点击拖动进度条
        $(".c_future").mousedown(function (e) {
            //           获取点击的位置
            var _this    = $(this);
            //            获取鼠标的位置
            var x        = e.clientX || e.pageX;
            //            获取起点的位置
            var left     = _this.parent().offset().left;
            //            获取终点的位置
            var maxWidth = _this.parent().width();
            //            最大位置
            var w        = x - left;
            //            根据点击位置除以最大的位置得到百分比
            var percent  = (w / maxWidth) * 100;

            //            根据进度条赋值
            $(".c_played").width(percent + "%");
            $(".c_current").css("left", percent + "%");

            //            音乐文件的时间加载同步
            audioDom.currentTime = audioDom.duration * (w / maxWidth);

        });

        //        音乐播放结束
        audioDom.onended = function () {
            $(".p_next").trigger("click");
        };

        //        时间监听
        function timeEvent() {
            //            音频文件加载完毕监听
            audioDom.oncanplaythrough = function () {
                var time = this.duration;
                $(".t_right").text(formatTime(time));
            }
        }

        //        点击音量按钮，设置静音
        $(".v_trumpet").click(function () {
            $(this).toggleClass("v_sel");
            if ($(this).hasClass("v_sel")) {
                $(".a_current").css("left", 0);
                $(".a_small").width(0);
                audioDom.volume = 0;
            } else {
                $(".a_current").css("left", "40%");
                $(".a_small").width("40%");
                audioDom.volume = 0.4;
            }

        });

        //        音量拖动改变
        $(".a_current").mousedown(function (e) {
            //            获取拖动对象
            var _this   = $(this);
            var x       = e.pageX || e.clientX;
            var left    = _this.position().left;
            var maxLeft = _this.parent().width();
            $(document).mousemove(function (e) {
                //                获取鼠标拖动最终位置
                var n = (e.clientX || e.pageX) - x + left;
                //                判断边界
                if (n < 0) n = 0;
                if (n > maxLeft) n = maxLeft;
                //                定位拖动进度最终位置
                _this.css("left", n);
                //                根据拖动的位置除以最大位置 获取百分比
                var percent = n * 100 / maxLeft;
                $(".a_small").width(percent + "%");
                //                同步音乐文件时间加载
                audioDom.volume = (n / maxLeft);
            }).mouseup(function () {
                //                移除事件
                $(document).unbind("mousemove");
                $(document).unbind("mouseup");
            });
        });

        //        点击音量控制
        $(".a_big").mousedown(function (e) {
            //            获取点击位置
            var _this    = $(this);
            var x        = e.clientX || e.pageX;
            var left     = _this.parent().offset().left;
            var maxWidth = _this.parent().width();
            var w        = x - left;
            var percent  = 100 * w / maxWidth;
            $(".a_current").css("left", percent + "%");
            $(".a_small").width(percent + "%");
            audioDom.volume = w / maxWidth
        });

        //        定义格式化日期的函数
        function formatTime(time) {
            var m = Math.floor(time / 60);
            var s = Math.floor(time % 60);
            return (m < 10 ? ("0" + m) : m) + ":" + (s < 10 ? ("0" + s) : s);
        }

        //        播放时间监听
        audioDom.ontimeupdate = function () {
            //            获取总时长
            var time  = this.duration;
            //            获取播放时长
            var stime = this.currentTime;
            //            格式化时间
            var ftime = formatTime(stime);
            $(".t_left").text(ftime);

            $(".c_played").width(stime * 100 / time + "%");
            $(".c_current").css("left", stime * 100 / time + "%");
        };
        //        获取音乐列表
        var children          = $(".m_song").children();
        var len               = children.length;
        var musicArr          = [];
        //        定义数组的下标
        var playIndex         = -1;
        //        点击播放音乐
        children.each(function () {
            musicArr.push($(this).data("link"));
        }).on("click", function () {
            $(this).addClass("selected").siblings().removeClass("selected");
            playIndex    = $(this).index();
            //            通过点击列表中的某一行，取到下标，获取音乐路径
            audioDom.src = musicArr[playIndex];
            //            开始播放
            playMusic(playIndex);
        });

        //播放音乐的方法
        function playMusic(playIndex) {
        	
        	var name = children.eq(playIndex).data("link");
        	var s = name.split("/")[1].split(".")[0];
//            加载歌词
            loadLrc(s);

            audioDom.play();
            //            播放暂停按钮切换
            $(".p_play").hide();
            $(".p_stop").show();
            $(".n_title").text(children.eq(playIndex).find(".l_t").eq(0).text() + " - " + children.eq(playIndex).find(".l_t").eq(1).text());
            children.eq(playIndex).find(".l_number span").addClass("n_num").parents(".s_list").siblings().find(".l_number span").removeClass("n_num");
            children.eq(playIndex).addClass("selected").siblings().removeClass("selected");

            //            时间的监听
            timeEvent();
        }

        //        点击播放按钮
        $(".p_play").on("click", function () {
            //            默认播放第一首
            if (playIndex == -1) {
                playIndex    = 0;
                audioDom.src = musicArr[playIndex];
            }
            playMusic(playIndex);
        });

        //        播放器暂停
        $(".p_stop").on("click", function () {
            stopMusic();
        });

        function stopMusic() {
            audioDom.pause();
            $(".p_play").show();
            $(".p_stop").hide();
            children.removeClass("selected");
            children.eq(playIndex).find(".l_number span").removeClass("n_num");
        }

        //        上一曲
        $(".p_pre").on("click", function () {
            playIndex -= 1;
            if (playIndex == -1) {
                playIndex = 0;
            }
            audioDom.src = musicArr[playIndex];
            playMusic(playIndex);
        });

        //        下一曲
        $(".p_next").on("click", function () {
            playIndex += 1;
            if (playIndex >= len) {
                playIndex = len - 1;
            }
            audioDom.src = musicArr[playIndex];
            playMusic(playIndex);
        });

    });

</script>
</body>
</html>