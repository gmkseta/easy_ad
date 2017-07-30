
var text = "으엏엉르ㅓㅇ렁";
var cnt = 0;
var speed = 500;	//글자가 찍히는 속도
var timer1 = null;

function gogogo(){
	document.getElementById('texts').innerHTML = text.substring(0, cnt) + "_";
	cnt++;
	timer1 = setTimeout('gogogo()', speed);

	if(text.length < cnt){
		// 아래 주석으로 처리된 부분을 지우면 한번만 실행됩니다.
		//clearTimeout(timer1)
		cnt = 0;
	}
}