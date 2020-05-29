$(document).ready(function () {
    console.log("test");

    chef_list_raking();
    // 소식받는 쉐프
    follow_chef();

    $(".chef_nav").click(function(){
        $(".chef_nav").each(function(index, item){
            $(this).removeClass("active");
        });
        $(".chef_div").hide();

        var nav_type = $(this).attr("id");
        $("#"+nav_type).addClass("active");

        if(nav_type == "chef_list"){
            console.log("chef_list before");
            $("#chef_list_div").show();
        }else if(nav_type == "chef_list_follower"){
            console.log("chef_list_follower before");
            $("#chef_list_follower_div").show();
        }
    });

    $(".chef_list_nav").click(function(){
        $(".chef_list_nav").each(function(index, item){
            $(this).removeClass("active");
        });
        $(".my_nav2_sub").hide();

        var nav_type = $(this).attr("id");
        console.log("nav type="+nav_type);
        $("#"+nav_type).addClass("active");

        if(nav_type == "chef_list_raking"){
            console.log("chef_list_raking before");
            chef_list_raking();
        }else{
            chef_list(nav_type);
        }
    });

    //-- 드롭다운 메뉴
    dropDownMenuTxtSet('1');
    dropDownMenuTxtSet('2');


    //-- 쉐프 검색 창
    $("#user_search_input").keypress(function (e) {
        if (e.which == 13) {
            searchUser();
        }
    });
});

//-- 소식 받기 순위
function chef_list_raking() {
    var array = [
        { img: "/images/chef.jpg", id: "1", name: "쉐프1", count_recip: 1, count_clip: 2, count_view: 3, count_follower: 4 }
        , { img: "/images/chef.jpg", id: "2", name: "쉐프2", count_recip: 1, count_clip: 2, count_view: 3, count_follower: 4 }
    ];
    var html_str = "";
    for (var i = 0; i < array.length; ++i) {
        html_str += '<div class="list_lump">' +
            '<div class="list_ranking2">' +
            '    <p class="list_ranking2_num ">' + i + '</p>' +
            '    <p class="list_ranking2_num2"><span style="color:#fff;" class="glyphicon "></span></p>' +
            '</div>' +
            '<div class="list_mem3">' +
            '    <a href="/profile/index.html?uid=20618485" class="mem_pic"><img src="' + array[i]["img"] + '"></a>' +
            '</div>' +
            '<div class="list_cont4"><b>' +
            '    <a href="/profile/index.html?uid=20618485" id="folFriend_' + array[i]["id"] + '" class="info_name_f">' + array[i]["name"] + '</a>' +
            '    <button type="button" class="btn btn-default btn-sm" id="btnActFriend_' + array[i]["id"] + '"' +
            '            fact="insert" onclick="doActFriend()">' +
            '        <span class="glyphicon glyphicon-plus"></span>소식받기</button>' +
            '</b>' +
            '    <span class="mem_cont1">' + array[i]["count_recip"] + '</span>' +
            '   <span class="mem_cont3">' + array[i]["count_clip"] + '</span>' +
            '   <span class="mem_cont7">' + array[i]["count_view"] + '</span>' +
            '   <span class="mem_cont2">' + array[i]["count_follower"] + '</span>' +
            '</div>' +
            '</div>';
    }
    $(".my_nav2_sub").show();
    $(".chef_list4_in").html(html_str);
}

// 새로운 쉐프 리스트
function chef_list(type) {
    var html_str = '<div class="list_lump">'+
            '<div class="list_mem3" >'+
                '<a href="/profile/index.html?uid=toll608" class="mem_pic">'+
                '<img src="/images/chef.jpg">'+
                '</a>'+
            '</div>'+
            '<div class="list_cont4">'+
                '<b>'+
                '<a href="/profile/index.html?uid=toll608" id="folFriend_toll608" class="info_name_f">혜미네</a>'+
                '<button type="button" class="btn btn-default btn-sm" id="btnActFriend_toll608" fact="insert" onclick="doActFriend()">'+
                '<span class="glyphicon glyphicon-plus"></span>소식받기</button>'+
                '</b>'+
                '<span class="mem_cont1">2</span>'+
                '<span class="mem_cont3">26</span>'+
                '<span class="mem_cont7">577</span>'+
                '<span class="mem_cont2">9</span>'+
            '</div>'+
            '</div >';

        $(".chef_list4_in").html(html_str);
}

// -- 소식 받는 쉐프
function follow_chef(){
    var html_str = '';
    html_str += '<div class="media">'+
                     '<div class="media-left">'+
                         '<a href="/profile/index.html?uid=32061214">'+
                         '<img class="media-object" src="/images/chef.jpg" data-holder-rendered="true"></a>'+
                     '</div>'+
                     '<div class="media-body">'+
                         '<div class="media-heading">'+
                             '<p class="info_cont_name">'+
                                 '<a href="/profile/index.html?uid=32061214" id="folFriend_32061214" class="info_name_f">햇살머금은집 </a>'+
                                 '<button type="button" class="btn btn-default btn-sm" id="btnActFriend_32061214" fact="insert" onclick="doActFriend()">'+
                                     '<span class="glyphicon glyphicon-plus"></span>소식받기 </button>'+
                             '</p>'+
                             '<p class="info_cont_hit">레시피<b>1,049</b>스크랩<b>47,881</b>소식받는 수<b>1,623</b></p>'+
                         '</div>'+
                         '<div class="info_recipe">'+
                             '<a href="/recipe/6933496"><img src="http://recipe1.ezmember.co.kr/cache/recipe/2020/05/29/6755430a3f1990f2064c96aabe1805301_m.jpg"></a>'+
                             '<a href="/recipe/6933446"><img src="http://recipe1.ezmember.co.kr/cache/recipe/2020/05/28/58424f5aaaad9717089eccd782cef2441_m.jpg"></a>'+
                             '<a href="/recipe/6933402"><img src="http://recipe1.ezmember.co.kr/cache/recipe/2020/05/27/13dba70925bca4fab8bece935da6481c1_m.jpg"></a>'+
                             '<a href="/recipe/6933354"><img src="http://recipe1.ezmember.co.kr/cache/recipe/2020/05/26/f95aae8c8aa34dee4b3a49d6553e37fa1_m.jpg"></a>'+
                         '</div>'+
                         '<dl class="info_reply">'+
                             '<dt>'+
                                 '<a href="/recipe/6929762#comment_div">'+
                                     '<b>물금새댁</b>'+
                                 '</a>'+
                             '</dt>'+
                             '<dd><a href="/recipe/6929762#comment_div">근데 t스푼 아니고 T스푼 아닌가요...?</a></dd>'+
                             '<dt>'+
                                 '<a href="/recipe/6907834#comment_div">'+
                                     '<b>김성북</b>'+
                                 '</a>'+
                             '</dt>'+
                             '<dd><a href="/recipe/6907834#comment_div">good</a></dd>'+
                         '</dl>'+
                     '</div>'+
                 '</div>';
     $("#chef_list_follower_div").html(html_str);

}


//-- 아래 내용 원문 복사
function searchUser() {
    var qn = $("#user_search_input").val();
    if (qn == '') {
        location.href = '/chef/chef_list.html?order=chef_no_follower&term=all';
    }
    else {
        location.href = '/chef/chef_list.html?order=chef_no_follower&qn=' + qn + '&term=all';
    }
}

function doActFriend(uid) {
    EZ.ATLogin(); return; var act = $("#btnActFriend_" + uid).attr("fact");
    var mode = (act == "insert") ? "addFriend" : "removeFriend";
    $.ajax({
        type: "GET",
        url: "/profile/ajax.html",
        data: "q_mode=" + mode + "&friend=" + uid,
        success: function (result) {
            if (result == 'SUCCESS') {
                var fact = (act == "insert") ? "delete" : "insert";
                var fval = (act == "insert") ? "삭제" : "추가";
                var msg = (act == 'insert') ? '님을 소식받기에 추가했습니다.' : '님을 소식받기에서 해제했습니다.';
                $("#btnActFriend_" + uid).attr("fact", fact);

                if (act == "insert") $("#btnActFriend_" + uid).html('<span class="glyphicon glyphicon-minus"></span>소식받기해제');
                else $("#btnActFriend_" + uid).html('<span class="glyphicon glyphicon-plus"></span>소식받기');

                var uname = $("#folFriend_" + uid).text().trim();

                ga('send', 'event', '이웃추가', fval, uname);

                alert(uname + msg);
            }
            else {
                alert('처리실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function setTerm(val) {
    location.href = '/chef/chef_list.html?order=chef_no_follower&qn=&term=' + val;
}

function dropDownMenuTxtSet(flag) {
    if (flag == '1') {
        var txt = '누적';
        $("#dropdownMenu" + flag).html('<span class="glyphicon glyphicon-calendar"></span>' + txt);
    }
    else if (flag == '2') {
        var txt = '소식받기순위';
        $("#dropdownMenu" + flag).html('<span class="glyphicon glyphicon-align-justify"></span>' + txt);
    }
}