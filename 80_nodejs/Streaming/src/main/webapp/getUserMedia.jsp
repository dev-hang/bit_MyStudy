<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소켓 서버</title>
 
<style>
#chat_box {
    width: 800px;
    min-width: 800px;
    height: 500px;
    min-height: 500px;
    border: 1px solid black;
}
#msg {
    width: 700px;
}
#msg_process {
    width: 90px;
}
</style>
</head>
<body>
    <button id="msg_process">전송</button>
    <video playsinline id="left_cam" controls preload="metadata" autoplay></video>
 
    <script src="http://localhost:3000/socket.io/socket.io.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.js"></script>
    <script src="js/main.js"></script>
    <script>
    $(function() {
    	  navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia;

    	  /**
    	   * getUserMedia 성공
    	   * @param stream
    	   */
    	  function success(stream) {
    	    console.log('success', arguments);

    	    // For IOS safari (https://github.com/webrtc/samples/issues/929)
    	    if (DetectRTC.browser.isSafari) {
    	      video.setAttribute('playsinline', true);
    	      video.setAttribute('controls', true);

    	      setInterval(function() {
    	        video.removeAttribute('controls');
    	      }, 0);
    	    }

    	    // 비디오 테그에 stream 바인딩
    	    $('video')[0].srcObject = stream;
    	    // document.querySelector('video').srcObject = stream;

    	    // do something...
    	  }

    	  /**
    	   * getUserMedia 실패
    	   * @param error
    	   */
    	  function error(error) {
    	    console.log('error', arguments);

    	    alert('카메라와 마이크를 허용해주세요');
    	  }

    	  /**
    	   * 클릭 처리
    	   */
    	  function onClick() {
    	    // for safari (Can only call MediaDevices.getUserMedia on instances of MediaDevices)
    	    if (DetectRTC.browser.isSafari) {
    	      navigator.mediaDevices.getUserMedia({ audio: true, video: true }, success, error);
    	    } else {
    	      navigator.getUserMedia({ audio: true, video: true }, success, error);
    	    }
    	  }

    	  /**
    	   * 이벤트 바인딩
    	   */
    	  $('button').click(onClick);
    	});
        </script>
</body>
</html>