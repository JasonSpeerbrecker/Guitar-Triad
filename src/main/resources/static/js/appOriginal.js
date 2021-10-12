$(document).ready(function() {

    var root = $("body").attr("data-root");
    var second = $("body").attr("data-second");
    var third = $("body").attr("data-third");
    var fourth = $("body").attr("data-fourth");
    var fifth = $("body").attr("data-fifth");
    var sixth = $("body").attr("data-sixth");
    var seventh = $("body").attr("data-seventh");

    function setToWhite(){
        $('.note').css({'background-color':'transparent','border-radius':'48%','height':'35px'});
        $('.'+root).css({'background-color':'transparent','border-radius':'48%','height':'35px'});
        $('.B').css({'background-color':'transparent','border-radius':'48%','height':'35px'});
        $('.C').css({'background-color':'transparent','border-radius':'48%','height':'35px'});
        $('.D').css({'background-color':'transparent','border-radius':'48%','height':'35px'});
        $('.E').css({'background-color':'transparent','border-radius':'48%','height':'35px'});
        $('.F').css({'background-color':'transparent','border-radius':'48%','height':'35px'});
        $('.G').css({'background-color':'transparent','border-radius':'48%','height':'35px'});
    }


    var current;
    var seven = 0;
    var colorToggle = 1;
    var practicing = 0;

    function timer(){
        if (practicing == 0){
        var time = 7;
        var audio = document.getElementById('audio-kick');
        audio.play();
        var timeAudio = setInterval(function(){
            $('#timer').html(time);
            time--;
            if (time == 0){
                time = 8;
            }
            if (time % 2 == 0) {
            var audio = document.getElementById('audio-hat');
            audio.play();
            } else {
                var audio = document.getElementById('audio-kick');
            audio.play();
            }
        },1000);
    } else {
        clearInterval(timeAudio);
    }} 

    $('#color-toggle').click(function(){
        if (colorToggle == 0){
            $('.guitar-neck').css('background-image','linear-gradient(burlywood, #CC8B69)')
            colorToggle = 1;
        } else {
            $('.guitar-neck').css({'background-image':'none','background-color':'rgb(255, 255, 255)'})
            colorToggle = 0;
    }})

    $('#seventh').click(function (){
        clearChordColors();
        if (seven == 0){
        $('#seventh').css('background-color','green');
        setToWhite();
        seven = 1;
        $('#chord-flavor').html(`<h2 class='#chord-flavor'>Choose a Chord</h2`);        }
        else {
            $('#seventh').css('background-color','white');
        setToWhite();
        seven = 0;
        $('#chord-flavor').html(`<h2 class='#chord-flavor'>Choose a Chord</h2`);
        }
    })

    function clearChordColors(){
        $('#i-chord').css('background-color','#F0F0F0');
        $('#ii-chord').css('background-color','#F0F0F0');
        $('#iii-chord').css('background-color','#F0F0F0');
        $('#iv-chord').css('background-color','#F0F0F0');
        $('#v-chord').css('background-color','#F0F0F0');
        $('#vi-chord').css('background-color','#F0F0F0');
        $('#vii-chord').css('background-color','#F0F0F0');
    }

// currently stuck on implementing an OFF switch for the timer.  -- clearInterval is the command, but it isn't being recognized.

    $('#practice').click(function(){
        if (practicing ==  0){
var pChord = 2;
timer();
chordOne();
practicing = 1;
        var chordChanges = setInterval(function () {
            if (pChord == 1) {
                chordOne();
                pChord=2;
            }   
            else if (pChord == 2){
                chordTwo();
                pChord=3;
            }
            else if (pChord == 3){
                chordThree();
                pChord=4;
            }
            else if (pChord == 4){
                chordFour();
                pChord=5;
            }
            else if (pChord == 5){
                chordFive();
                pChord=6;
            }
            else if (pChord == 6){
                chordSix();
                pChord=7;
            }
            else if (pChord == 7){
                chordSeven();
                pChord=1;
            }
        }, 8000);
    }
    else {
        practicing = 0;
        clearInterval(chordChanges);
        console.log('stop practicing')
    }
})
	// in progress.  Changed Notes to their variables, need to see how to print the Root variable as the Chord name.
    function chord (root,third,fifth,seventh){
        if (current != 1){
            setToWhite();
            current = 1;
            clearChordColors();
            $('#i-chord').css('background-color','#dac399');
            $('.'+root).css({'background-color':'red','border-radius':'48%','height':'35px'});
            $('.'+third).css({'background-color':'black','border-radius':'48%','height':'35px'});
            $('.'+fifth).css({'background-color':'blue','border-radius':'48%','height':'35px'})
            $('#chord-flavor').html(`<h2 class='#chord-flavor'>C Major</h2`);
            if ($('#seventh').css('background-color')== 'rgb(0, 128, 0)'){
                $('.'+seventh).css({'background-color':'green','border-radius':'48%','height':'35px'})
            }
        } else {
            $('#chord-flavor').html(`<h2 class='#chord-flavor'>Choose a Chord</h2`);            
            setToWhite();
            clearChordColors();
            current = 0;
        }}

    function chordOne (){
        if (current != 1){
            setToWhite();
            current = 1;
            clearChordColors();
            $('#i-chord').css('background-color','#dac399');
            $('.C').css({'background-color':'red','border-radius':'48%','height':'35px'});
            $('.E').css({'background-color':'black','border-radius':'48%','height':'35px'});
            $('.G').css({'background-color':'blue','border-radius':'48%','height':'35px'})
            $('#chord-flavor').html(`<h2 class='#chord-flavor'>C Major</h2`);
            if ($('#seventh').css('background-color')== 'rgb(0, 128, 0)'){
                $('.B').css({'background-color':'green','border-radius':'48%','height':'35px'})
            }
        } else {
            $('#chord-flavor').html(`<h2 class='#chord-flavor'>Choose a Chord</h2`);            
            setToWhite();
            clearChordColors();
            current = 0;
        }}

        function chordTwo(){
                if (current != 2){
                    setToWhite();
                    current = 2;
                    clearChordColors();
                    $('#ii-chord').css('background-color','#dac399');
                    $('.D').css({'background-color':'red','border-radius':'48%','height':'35px'});
                    $('.F').css({'background-color':'black','border-radius':'48%','height':'35px'});
                    $('.A').css({'background-color':'blue','border-radius':'48%','height':'35px'})
                    $('#chord-flavor').html(`<h2 class='#chord-flavor'>D minor</h2`);
                    if ($('#seventh').css('background-color')== 'rgb(0, 128, 0)'){
                        $('.C').css({'background-color':'green','border-radius':'48%','height':'35px'})
                    }
                } else {
                    $('#chord-flavor').html(`<h2 class='#chord-flavor'>Choose a Chord</h2`);            
            setToWhite();
            clearChordColors();
            current = 0;
                }}
        
        function chordThree(){
        if (current != 3){
            setToWhite();
            current = 3;
            clearChordColors();
            $('#iii-chord').css('background-color','#dac399');
            $('.E').css({'background-color':'red','border-radius':'48%','height':'35px'});
            $('.G').css({'background-color':'black','border-radius':'48%','height':'35px'});
            $('.B').css({'background-color':'blue','border-radius':'48%','height':'35px'})
            $('#chord-flavor').html(`<h2 class='#chord-flavor'>E minor</h2`);
            if ($('#seventh').css('background-color')== 'rgb(0, 128, 0)'){
                $('.D').css({'background-color':'green','border-radius':'48%','height':'35px'})
            }
        } else {
            $('#chord-flavor').html(`<h2 class='#chord-flavor'>Choose a Chord</h2`);            
            setToWhite();
            clearChordColors();
            current = 0;
        }}
        
        function chordFour(){
                if (current != 4){
                    setToWhite();
                    current = 4;
                    clearChordColors();
                    $('#iv-chord').css('background-color','#dac399');
                    $('.F').css({'background-color':'red','border-radius':'48%','height':'35px'});
                    $('.A').css({'background-color':'black','border-radius':'48%','height':'35px'});
                    $('.C').css({'background-color':'blue','border-radius':'48%','height':'35px'})
                    $('#chord-flavor').html(`<h2 class='#chord-flavor'>F Major</h2`);
                    if ($('#seventh').css('background-color')== 'rgb(0, 128, 0)'){
                        $('.E').css({'background-color':'green','border-radius':'48%','height':'35px'})
                    }
                } else {
                    $('#chord-flavor').html(`<h2 class='#chord-flavor'>Choose a Chord</h2`);            
            setToWhite();
            clearChordColors();
            current = 0;
                }};
        
        function chordFive(){
                if (current != 5){
                    setToWhite();
                    current = 5;
                    clearChordColors();
                    $('#v-chord').css('background-color','#dac399');
                    $('.G').css({'background-color':'red','border-radius':'48%','height':'35px'});
                    $('.B').css({'background-color':'black','border-radius':'48%','height':'35px'});
                    $('.D').css({'background-color':'blue','border-radius':'48%','height':'35px'})
                    $('#chord-flavor').html(`<h2 class='#chord-flavor'>G Major</h2`);
                    if ($('#seventh').css('background-color')== 'rgb(0, 128, 0)'){
                        $('.F').css({'background-color':'green','border-radius':'48%','height':'35px'})
                    }
                } else {
                    $('#chord-flavor').html(`<h2 class='#chord-flavor'>Choose a Chord</h2`);            
            setToWhite();
            clearChordColors();
            current = 0;
                }};

        function chordSix(){
                if (current != 6){
                    setToWhite();
                    current = 6;
                    clearChordColors();
                    $('#vi-chord').css('background-color','#dac399');
                    $('.A').css({'background-color':'red','border-radius':'48%','height':'35px'});
                    $('.C').css({'background-color':'black','border-radius':'48%','height':'35px'});
                    $('.E').css({'background-color':'blue','border-radius':'48%','height':'35px'})
                    $('#chord-flavor').html(`<h2 class='#chord-flavor'>A minor</h2`);
                    if ($('#seventh').css('background-color')== 'rgb(0, 128, 0)'){
                        $('.G').css({'background-color':'green','border-radius':'48%','height':'35px'})
                    }
                } else {
                    $('#chord-flavor').html(`<h2 class='#chord-flavor'>Choose a Chord</h2`);            
            setToWhite();
            clearChordColors();
            current = 0;
                }};

        function chordSeven(){
                if (current != 7){
                    setToWhite();
                    current = 7;
                    clearChordColors();
                    $('#vii-chord').css('background-color','#dac399');
                    $('.B').css({'background-color':'red','border-radius':'48%','height':'35px'});
                    $('.D').css({'background-color':'black','border-radius':'48%','height':'35px'});
                    $('.F').css({'background-color':'blue','border-radius':'48%','height':'35px'})
                    $('#chord-flavor').html(`<h2 class='#chord-flavor'>B Diminished</h2`);
                    if ($('#seventh').css('background-color')== 'rgb(0, 128, 0)'){
                        $('.A').css({'background-color':'green','border-radius':'48%','height':'35px'})
                    }
                } else {
                    $('#chord-flavor').html(`<h2 class='#chord-flavor'>Choose a Chord</h2`);            
            setToWhite();
            clearChordColors();
            current = 0;
                }};

    $('#i-chord').click(function(){
        chordOne();
    });
    $('#ii-chord').click(function(){
        chordTwo();
    }); 
    $('#iii-chord').click(function(){
        chordThree();
    });
    $('#iv-chord').click(function(){
        chordFour();
    });
    $('#v-chord').click(function(){
        chordFive();
    })
    $('#vi-chord').click(function(){
        chordSix();
    })
    $('#vii-chord').click(function(){
        chordSeven();
    })
        



    })