
var player;
// var songUrl = '';
var songId = 0;
var youtubeId ='';
var buttons = document.querySelectorAll('button');
var flag = true;
var timeOut;            //讓按鈕被按下五秒鐘後有另外一套樣式
var countPlayTime;      //計算歌曲被播放的長度
var countFlag = false;
var playTime = 0;        //歌曲被播放的長度
var btnFlag = true;
var videoFlag = true;
var btnStyle1='mood';
var btnStyle2='moodTxt';
var id = "";
var tasteNum = 0;
// 為增加說明文字變化，做一個0~2的亂數產生器
var randomNum = Math.floor(Math.random()*3);

// 為每種心情做出三種變化的說明文字
var angerTxt = [
    '怒了嗎？聽這首歌好好抒發一下！',
    '別氣別氣！音樂安慰你激動的心！',
    '還在氣啊？聽這首歌解放自己吧:)',
];
var sadTxt = [
    '為下次快樂做準備，我們陪你療傷！',
    '今天就是不想笑，傷心旋律中找共鳴',
    '又失去了什麼…眼淚擦擦，有音樂陪你',
];
var lonelyTxt = [
    '一個人也很好，何況在音樂裡總不孤單',
    '生活總戴張面具？也許…是面對真實之時',
    '享受獨處的時刻，樂聲聽來也別有風味',
];
var happyTxt = [
    '好一個小確幸！有啥好事快說給我們聽！',
    '淡淡的開心更是細水長流，聽首好歌吧！',
    'Wish You Happy！有音樂怎能不開心！',
];
var revelTxt = [    
    '加薪！脫單！中頭彩！有夢最美嗨起來！',
    '周末夜狂歡！除了跑趴還有我們陪你嗨！',
    '現在心在狂歡？這歌給你「火上加油」！',
];
var allTxt = [revelTxt,happyTxt,lonelyTxt,sadTxt,angerTxt];
var originTxt = ['狂歡','愉悅','孤寂','悲傷','憤怒']

// 游標移到心情選擇按鈕時，會替換說明文字
// 憤怒5、難過4、寂寞3、開心2、狂歡1



$(document).ready(function(){
   
    function playCount()        //函式：計算播放時間                      
{
    playTime += 1;
    if (playTime >= 600) clearTimeout(countPlayTime);  // 避免背景不斷計時
};

    function stopPlayCount()    //函式：停止計算播放時間
{
        if (playTime >= 10) var tasteNum = 1;
        else tasteNum = 0;
        console.log(tasteNum);
        console.log(songId);
        $.getJSON("taste/", { "taste": tasteNum, "songId" : songId }, function(data){
            $("#songdata > ul").append('<li class="nav-item"><span style="display:none">'+ data.songId +'</span>'+'<span style="display:none">'+ data.youtubeId +'</span>'+'<div class="xxx"><i class="fas fa-circle"></i>'+ data.songname + " " + data.singer + '</div></li>');
            $("li.nav-item:last").click(playOldYt)
        });
        playTime = 0;
        clearTimeout(countPlayTime);
};
    function playOldYt(){
        if (playTime>0){
            if (playTime >= 10) tasteNum = 1;
            else tasteNum = 0;
            $.get("taste/", { "taste": tasteNum, "songId" : songId })            
        };
        var songid = $(this).children("span:first").text();
        id = $(this).children("span:last").text();
        console.log(songid)
        console.log(id);            
        // 也寫入資料庫，到這裡已確定聽者喜歡這首歌
        $.get("taste/", { "taste": 1, "songId":songid });
        $('#player').attr('src','https://www.youtube.com/embed/'+id+'?rel=0&amp;showinfo=0&autoplay=1')   
        id = "";
        playTime = 0;
        clearTimeout(countPlayTime);
    }
    //為按鈕加上行為
    for(var i=1; i<=buttons.length; i++){
        buttons[i-1].number = i;
        var index = i-1;
        $('button:eq('+index+')').on({
            'mouseenter': chgText,
            'mouseleave': rtnText,
            'click': playYt        
        });
        
        // $('button:eq('+index+')').click(playYt);       
    }

    function chgText(){
        // 滑鼠移上，改變文字
        var index = this.number - 1;
        $(this).text(allTxt[index][randomNum]);
        $(this).switchClass('mood','moodTxt',0);
    }

    function newchgText(){
        // 滑鼠移上，改變文字
        var index = this.number - 1;
        $(this).text(allTxt[index][randomNum]);
        $(this).removeClass('moodTxt mood');
        $(this).addClass('smMoodTxt');
    }

    function rtnText(){
        $(this).text(originTxt[this.number-1]);
        $(this).switchClass('moodTxt','mood',0);
    }

    function newrtnText(){
        $(this).text(originTxt[this.number-1]);
        $(this).removeClass('moodTxt smMoodTxt');
        $(this).addClass('mood')
    }
    
    function newBtnAct(){
        // alert('5 sec');
        for(var i=1; i<=buttons.length; i++){
            var index = i-1;
            $('button:eq('+index+')').on({
                'mouseenter': newchgText,
                'mouseleave': newrtnText,                
            });
        }clearInterval(timeOut); 
    }
    
    function playYt(){
        if (countFlag) stopPlayCount();
        if (btnFlag){
            $(this).addClass('smMoodTxt');
            $('.btn').each(function(){
                $(this).off('mouseenter mouseleave');
            })
                        
            $('#revel').addClass( "musicOnRevel", 5000 );
            $('#happy').addClass( "musicOnHappy", 5000 );
            $('#anger').addClass( "musicOnAnger", 5000 );
            $('#sad').addClass( "musicOnSad", 5000 );
            $('#lonely').addClass( "musicOnLonely", 5000 );
            // 空五秒鐘才乾淨
            timeOut = setInterval(newBtnAct, 5000);
            btnFlag = false
        }
                              
        var moodNum = this.number;
    
        // 顯示影片div
        // 利用ajax載入歌曲網址
        if (id == ""){
            $.getJSON('findsong/', {"moodNum": moodNum}, function(data){
                songId = data.songId;
                youtubeId = data.youtubeId;
                console.log(youtubeId);
                $('#player').attr('src','https://www.youtube.com/embed/'+youtubeId+'?rel=0&amp;showinfo=0&autoplay=1');
            })
        }else{
            $('#player').attr('src','https://www.youtube.com/embed/'+id+'?rel=0&amp;showinfo=0&autoplay=1');                     
        }
        // 2. This code loads the IFrame Player API code asynchronously.
        if(flag){    
            var tag = document.createElement('script');
            tag.src = "https://www.youtube.com/iframe_api";
            var firstScriptTag = document.getElementsByTagName('script')[0];
            firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);            
        }
        flag = false
        
        //計算影片播放時間
        
        countPlayTime = setInterval(playCount, 1000);
        countFlag = true;      
        }

})


        
    // 3. This function creates an <iframe> (and YouTube player)
    //    after the API code downloads.
    
    function onYouTubeIframeAPIReady() {
        player = new YT.Player('player', {
        height: '390',
        width: '640',
        videoId: youtubeId,
        rel: '0',
        events: {
        'onReady': onPlayerReady,
        'onStateChange': onPlayerStateChange,
            }
        });
    }    
    // 4. The API will call this function when the video player is ready.
    function onPlayerReady(){
        player.playVideo(); 
    }    
         

    // 5. The API calls this function when the player's state changes.
    //    The function indicates that when playing a video (state=1),
    //    the player should play for six seconds and then stop.

    function onPlayerStateChange(event){               
        if (event.data == YT.PlayerState.ENDED) {
            flag = true;
            alert('video end');
            // $('#player').hide('fade',5000);
            // player.getIframe()
            // player.destroy()
            }
        }                  
    
    
    
     




