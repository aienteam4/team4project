// 游標移到心情選擇按鈕時，會替換說明文字
// 憤怒5、難過4、寂寞3、開心2、狂歡1

var buttons = document.querySelectorAll('.btn')
for(var i=1; i<=buttons.length; i++){
    buttons[i-1].number = i;
    buttons[i-1].addEventListener('mouseenter',chgText);    
    buttons[i-1].addEventListener('mouseleave',rtnText);
    buttons[i-1].addEventListener('click',playYt);
}

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

function chgText(){
    // 滑鼠移上，改變文字
    index = this.number - 1;
    this.innerHTML = '<h4>'+allTxt[index][randomNum]+'</h4>';
}

function rtnText(){
    this.innerHTML = '<h2>'+originTxt[this.number-1]+'</h2>';
 
}

function playYt(){
    // 先把按鈕隱形
    for (var i=0; i<buttons.length; i++) {
        buttons[i].style.display = 'none';
    }
    moodNum = this.number;
    
    // 利用ajax載入歌曲網址
    var findSong = new XMLHttpRequest();
    if(findSong != null){        
        findSong.open('GET','/music/findsong/?q='+moodNum);              
        findSong.addEventListener('load',returnData);
        function returnData(){
            if(findSong.status==200){
                songUrl = findSong.responseText;
                document.querySelector('#player').setAttribute('src',songUrl);
            }        
            else{alert(findSong.status+'ajax has problem');}            
        }
    }
    else{
        alert('您的瀏覽器不支援Ajax功能！');
    }
    findSong.send();
    
    
    // 2. This code loads the IFrame Player API code asynchronously.
    var tag = document.createElement('script');

    tag.src = "https://www.youtube.com/iframe_api";
    var firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

    // 3. This function creates an <iframe> (and YouTube player)
    //    after the API code downloads.
    var player;
    function onYouTubeIframeAPIReady() {
        player = new YT.Player('player', {
        // events: {
        // 'onReady': onPlayerReady,
        'onStateChange': onPlayerStateChange
        // }
    });
    }

    // 4. The API will call this function when the video player is ready.
    // function onPlayerReady(event) {
    // event.target.playVideo();
    // }

    // 5. The API calls this function when the player's state changes.
    //    The function indicates that when playing a video (state=1),
    //    the player should play for six seconds and then stop.
    var done = false;
    function onPlayerStateChange(event) {
    if (event.data == YT.PlayerState.PLAYING && !done) {
        setTimeout(stopVideo, 6000);
        done = true;
        }
    }
    // function stopVideo() {
    // player.stopVideo();
    // }
}

