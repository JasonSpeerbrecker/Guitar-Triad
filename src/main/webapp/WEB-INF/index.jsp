<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="wclassth=device-wclassth, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css">
    <link
    rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <script
    src="https://code.jquery.com/jquery-3.6.0.js"
    integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
    crossorigin="anonymous"
    ></script>
    <script src="/js/app.js"></script>
    <script>
/* embedded javascript for dropdown selectors  */
    function chooseKey() {
      document.getElementById("dropdownKey").classList.toggle("show");
    }
    window.onclick = function(event) {
      if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;
        for (i = 0; i < dropdowns.length; i++) {
          var openDropdown = dropdowns[i];
          if (openDropdown.classList.contains('show')) {
            openDropdown.classList.remove('show');
          }
        }
      }
    }
    function chooseScale() {
        document.getElementById("dropdownScale").classList.toggle("show");
      }
      window.onclick = function(event) {
        if (!event.target.matches('.dropbtn')) {
          var dropdowns = document.getElementsByClassName("dropdown-content");
          var i;
          for (i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('show')) {
              openDropdown.classList.remove('show');
            }
          }
        }
      }
    </script>
</head>
<body data-root="<c:out value="${root }"/>" data-second="<c:out value="${second }"/>" data-third="<c:out value="${third }"/>" data-fourth="<c:out value="${fourth }"/>" data-fifth="<c:out value="${fifth }"/>" data-sixth="<c:out value="${sixth }"/>" data-seventh="<c:out value="${seventh }"/>"  >
    <audio src="../practice-project/kick.wav" id='audio-kick'></audio>
    <audio src="../practice-project/hat.wav" id='audio-hat'></audio>
    <div class='container'>
    <div>
        <h3 class="center-text col-md-10">Guitar Triads Practice Tool</h3>
    </div>
    <div class="container-fluid col-md-10 row h-100">
    <div class="col d-flex justify-content-end my-auto">
    
    </div>
    <div class="col">
    <div class="">
        <h4 class='center-text'>Chord Flavor: </h4>
        <h4 class='center-text' id='chord-flavor'>Choose a Chord</h4>
    </div>
    </div>
    <div class="col my-auto">
    	
    </div>
    </div>
<div class="buttons row">
    <button id="i-chord">I Chord</button>
    <button id='ii-chord'>ii chord</button>
    <button id='iii-chord'>iii chord</button>
    <button id="iv-chord">IV Chord</button>
    <button id='v-chord'>V Chord</button>
    <button id='vi-chord'>vi chord</button>
    <button id='vii-chord'>vii* Chord</button>
    <div class="fret-line">
        <p> </p>
    </div>
    <button id='seventh'>Add the 7th</button>
</div>
<div class="guitar-neck">
    <div class='string-line'></div>
    <div class="string row">
        <div class="note"><p class="E">E</p>
        </div><div class="nut"><p> </p></div>
        <div class="note"><p class="F">F</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="FS">F#</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="G">G</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="GS">G#</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="A">A</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="AS">A#</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="B">B</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="C">C</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="CS">C#</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="D">D</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="DS">D#</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="E">E</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="F">F</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="FS">F#</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="G">G</p></div>
        <div class="fret-line"><p> </p></div>
        <div class="note"><p class="GS">G#</p></div>
        <div class="fret-line"><p> </p></div>
    </div>
    <div class='string-line'></div>
    <div class="string row">
        <div class="note"><p class="B">B</p>
        </div>
        <div class="nut"><p> </p>
        </div>
        <div class="note"><p class="C">C</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="CS">C#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="D">D</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="DS">D#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="E">E</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="F">F</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="FS">F#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="G">G</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="GS">G#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="A">A</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="AS">A#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="B">B</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="C">C</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="CS">C#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="D">D</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="DS">D#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
    </div>
    <div class='string-line'></div>
    <div class="string row">
        <div class="note"><p class="G">G</p>
        </div>
        <div class="nut"><p> </p>
        </div>
        <div class="note"><p class="GS">G#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="A">A</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="AS">A#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="B">B</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="C">C</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="CS">C#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="D">D</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="DS">D#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="E">E</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="F">F</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="FS">F#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="G">G</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="GS">G#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="A">A</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="AS">A#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="B">B</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
    </div>
    <div class='string-line'></div>
    <div class="string row">
        <div class="note"><p class="D">D</p>
        </div>
        <div class="nut"><p> </p>
        </div>
        <div class="note"><p class="DS">D#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="E">E</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="F">F</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="FS">F#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="G">G</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="GS">G#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="A">A</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="AS">A#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="B">B</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="C">C</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="CS">C#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="D">D</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="DS">D#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="E">E</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="F">F</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="FS">F#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
    </div>
    <div class='string-line'></div>
    <div class="string row">
        <div class="note"><p class="A">A</p>
        </div>
        <div class="nut"><p> </p>
        </div>
        <div class="note"><p class="AS">A#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="B">B</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="C">C</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="CS">C#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="D">D</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="DS">D#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="E">E</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="F">F</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="FS">F#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="G">G</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="GS">G#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="A">A</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="AS">A#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="B">B</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="C">C</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="CS">C#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
    </div>
    <div class='string-line'></div>
    <div class="string row">
        <div class="note"><p class="E">E</p>
        </div>
        <div class="nut"><p> </p>
        </div>
        <div class="note"><p class="F">F</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="FS">F#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="G">G</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="GS">G#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="A">A</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="AS">A#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="B">B</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="C">C</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="CS">C#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="D">D</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="DS">D#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="E">E</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="F">F</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="FS">F#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="G">G</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
        <div class="note"><p class="GS">G#</p>
        </div>
        <div class="fret-line"><p> </p>
        </div>
    </div>
    <div class='string-line'></div>
    <div class="fret row">
        <div class="fret-number"><p>0</p>
        </div>
        <div class="nutb"><p> </p>
        </div>
        <div class="noteb"><p></p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="noteb"><p></p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="noteb"><p></p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="noteb"><p></p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="fret-number"><p>5</p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="noteb"><p></p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="fret-number"><p>7</p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="noteb"><p></p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="fret-number"><p>9</p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="noteb"><p></p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="noteb"><p></p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="fret-number"><p>12</p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="noteb"><p></p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="noteb"><p></p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="fret-number"><p>15</p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
        <div class="noteb"><p></p>
        </div>
        <div class="fret-lineb"><p> </p>
        </div>
    </div>
</div>
    <div class='key'>
        <div class='row keys'><p id='key-root'> </p><p class='align-self-center pt-2'>- Root</p><button id='color-toggle'>Toggle neck color and visible note names</button>
        <div class="dropdown">
	  <button onclick="chooseKey()" class="dropbtn" id="keyButton">Key - ${root }</button>
		  <div id="dropdownKey" class="dropdown-content">
		    <a href="/chordings/0/${scale }">A</a>
		    <a href="/chordings/1/${scale }">A#</a>
		    <a href="/chordings/2/${scale }">B</a>
		    <a href="/chordings/3/${scale }">C</a>
		    <a href="/chordings/4/${scale }">C#</a>
		    <a href="/chordings/5/${scale }">D</a>
		    <a href="/chordings/6/${scale }">D#</a>
		    <a href="/chordings/7/${scale }">E</a>
		    <a href="/chordings/8/${scale }">F</a>
		    <a href="/chordings/9/${scale }">F#</a>
		    <a href="/chordings/10/${scale }">G</a>
		    <a href="/chordings/11/${scale }">G#</a>
		  </div>
	</div>
       
        </div>
        <div class='row keys'><p id='key-third'> </p><p class='align-self-center pt-2'>- Third</p><button id="practice">Practice each chord, 60bpm, 2 bars each</button>
        <div class="dropdown">
  		<button onclick="chooseScale()" class="dropbtn" id="scaleButton">Scale - ${scaleName }</button>
		  	<div id="dropdownScale" class="dropdown-content ">
			    <a href="/chordings/${key }/0">Major</a>
			    <a href="/chordings/${key }/1">Natural Minor</a>
			    <a href="/chordings/${key }/2">Harmonic Minor</a>
			    <a href="/chordings/${key }/3">Jazz Melodic Minor</a>
			    <a href="/chordings/${key }/4">Ionian (Major)</a>
			    <a href="/chordings/${key }/5">Dorian</a>
			    <a href="/chordings/${key }/6">Phrygian</a>
			    <a href="/chordings/${key }/7">Lydian</a>
			    <a href="/chordings/${key }/8">Mixolydian</a>
			    <a href="/chordings/${key }/9">Aeolian</a>
			    <a href="/chordings/${key }/10">Locrian</a>
 			 </div>
		</div>
        </div>
        <div class='row keys'><p id='key-fifth'> </p><p class='align-self-center pt-2'>- Fifth</p>
        </div>
        <div class='row keys'><p id='key-seventh'> </p><p class='align-self-center pt-2'>- Seventh</p><h3 id="timer"></h3>
        </div>
    </div>
</div>


    <div>
        <div>

        </div>
    </div>


</body>
</html>