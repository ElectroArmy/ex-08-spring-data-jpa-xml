<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDC | Portal</title>

<jsp:include page="/includes/resources.jsp"></jsp:include>




</head>
<body>

	<jsp:include page="/includes/top-menu.jsp"></jsp:include>

	<!-- <div class="container mt-4">
	
		<h3>JDC Main</h3>
	
	</div> -->
	
	<!-- Added For Main Page With Word Affect -->
	<style>
        .name {
            text-decoration: none;
        }
        
        @-moz-keyframes roll {
            100% {
                -moz-transform: rotate(360deg);
            }
        }
        
        @-o-keyframes roll {
            100% {
                -o-transform: rotate(360deg);
            }
        }
        
        @-webkit-keyframes roll {
            100% {
                -webkit-transform: rotate(360deg);
            }
        }
        
        body {
            -moz-animation-name: roll;
            -moz-animation-duration: 4s;
            -moz-animation-iteration-count: 1;
            -o-animation-name: roll;
            -o-animation-duration: 4s;
            -o-animation-iteration-count: 1;
            -webkit-animation-name: roll;
            -webkit-animation-duration: 4s;
            -webkit-animation-iteration-count: 1;
        }
        
        .dt {
            text-align: center;
            color: #000000;
            padding: 3px;
            font-weight: bold;
            font-size: 90px;
            background-color: #8C0000;
        }
        
        .newclass {
            background: rgb(19, 108, 131) url("http://www.picgifs.com/graphics/f/fireworks/graphics-fireworks-966914.gif") repeat;
        }
        
        .imgs {
            opacity: 0.5;
            float: right;
            width: 150px;
            height: 150px;
            cursor: pointer;
        }
        
        .imgs:hover {
            opacity: 1;
        }
        
        .bh {
            background: #FFFFFF;
        }
    </style>
    
    <style type="text/css">
        /* Circle Text Styles */
        
        #outerCircleText {
            /* Optional - DO NOT SET FONT-SIZE HERE, SET IT IN THE SCRIPT */
            font-style: italic;
            font-weight: bold;
            font-family: 'comic sans ms', verdana, arial;
            color: #f633ff;
            /* End Optional */
            /* Start Required - Do Not Edit */
            position: absolute;
            top: 0;
            left: 0;
            z-index: 3000;
            cursor: default;
        }
        
        #outerCircleText div {
            position: relative;
        }
        
        #outerCircleText div div {
            position: absolute;
            top: 0;
            left: 0;
            text-align: center;
        }
        /* End Required */
        /* End Circle Text Styles */
    </style>
 

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

    <script type="text/javascript">
        /*<![CDATA[*/
        jQuery(document).ready(function() {
            jQuery(".rblikebox").hover(function() {
                jQuery(this).stop().animate({
                    right: "0"
                }, "medium");
            }, function() {
                jQuery(this).stop().animate({
                    right: "-250"
                }, "medium");
            }, 500);
        }); /*]]>*/
    </script>



    <script type="text/javascript">
        ;
        (function() {
            var msg = "Republic of Burma";
            var size = 24;
            var circleY = 0.75;
            var circleX = 2;
            var letter_spacing = 5;
            var diameter = 10;
            var rotation = 0.4;
            var speed = 0.3;
            ////////////////////// Stop Editing ////////////////////// 
            if (!window.addEventListener && !window.attachEvent || !document.createElement) return;
            msg = msg.split('');
            var n = msg.length - 1,
                a = Math.round(size * diameter * 0.208333),
                currStep = 20,
                ymouse = a * circleY + 20,
                xmouse = a * circleX + 20,
                y = [],
                x = [],
                Y = [],
                X = [],
                o = document.createElement('div'),
                oi = document.createElement('div'),
                b = document.compatMode && document.compatMode != "BackCompat" ? document.documentElement : document.body,
                mouse = function(e) {
                    e = e || window.event;
                    ymouse = !isNaN(e.pageY) ? e.pageY : e.clientY; // y-position
                    xmouse = !isNaN(e.pageX) ? e.pageX : e.clientX; // x-position
                },
                makecircle = function() { // rotation/positioning
                    if (init.nopy) {
                        o.style.top = (b || document.body).scrollTop + 'px';
                        o.style.left = (b || document.body).scrollLeft + 'px';
                    };
                    currStep -= rotation;
                    for (var d, i = n; i > -1; --i) { // makes the circle
                        d = document.getElementById('iemsg' + i).style;
                        d.top = Math.round(y[i] + a * Math.sin((currStep + i) / letter_spacing) * circleY - 15) + 'px';
                        d.left = Math.round(x[i] + a * Math.cos((currStep + i) / letter_spacing) * circleX) + 'px';
                    };
                },
                drag = function() { // makes the resistance
                    y[0] = Y[0] += (ymouse - Y[0]) * speed;
                    x[0] = X[0] += (xmouse - 20 - X[0]) * speed;
                    for (var i = n; i > 0; --i) {
                        y[i] = Y[i] += (y[i - 1] - Y[i]) * speed;
                        x[i] = X[i] += (x[i - 1] - X[i]) * speed;
                    };
                    makecircle();
                },
                init = function() { // appends message divs, & sets initial values for positioning arrays
                    if (!isNaN(window.pageYOffset)) {
                        ymouse += window.pageYOffset;
                        xmouse += window.pageXOffset;
                    } else init.nopy = true;
                    for (var d, i = n; i > -1; --i) {
                        d = document.createElement('div');
                        d.id = 'iemsg' + i;
                        d.style.height = d.style.width = a + 'px';
                        d.appendChild(document.createTextNode(msg[i]));
                        oi.appendChild(d);
                        y[i] = x[i] = Y[i] = X[i] = 0;
                    };
                    o.appendChild(oi);
                    document.body.appendChild(o);
                    setInterval(drag, 25);
                },
                ascroll = function() {
                    ymouse += window.pageYOffset;
                    xmouse += window.pageXOffset;
                    window.removeEventListener('scroll', ascroll, false);
                };

            o.id = 'outerCircleText';
            o.style.fontSize = size + 'px';
            if (window.addEventListener) {
                window.addEventListener('load', init, false);
                document.addEventListener('mouseover', mouse, false);
                document.addEventListener('mousemove', mouse, false);
                if (/Apple/.test(navigator.vendor))
                    window.addEventListener('scroll', ascroll, false);
            } else if (window.attachEvent) {
                window.attachEvent('onload', init);
                document.attachEvent('onmousemove', mouse);
            };
        })();
    </script>


    
    <br />
    <font color="gray" face="COURIER new" size="8">
        <center>
            <script>
                farbbibliothek = new Array();
                farbbibliothek[0] = new Array("#FF0000", "#FF1100", "#FF2200", "#FF3300", "#FF4400", "#FF5500", "#FF6600", "#FF7700", "#FF8800", "#FF9900", "#FFaa00", "#FFbb00", "#FFcc00", "#FFdd00", "#FFee00", "#FFff00", "#FFee00", "#FFdd00", "#FFcc00", "#FFbb00", "#FFaa00", "#FF9900", "#FF8800", "#FF7700", "#FF6600", "#FF5500", "#FF4400", "#FF3300", "#FF2200", "#FF1100");
                farbbibliothek[1] = new Array("#00FF00", "#000000", "#00FF00", "#00FF00");
                farbbibliothek[2] = new Array("#00FF00", "#FF0000", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00");
                farbbibliothek[3] = new Array("#FF0000", "#FF4000", "#FF8000", "#FFC000", "#FFFF00", "#C0FF00", "#80FF00", "#40FF00", "#00FF00", "#00FF40", "#00FF80", "#00FFC0", "#00FFFF", "#00C0FF", "#0080FF", "#0040FF", "#0000FF", "#4000FF", "#8000FF", "#C000FF", "#FF00FF", "#FF00C0", "#FF0080", "#FF0040");
                farbbibliothek[4] = new Array("#FF0000", "#EE0000", "#DD0000", "#CC0000", "#BB0000", "#AA0000", "#990000", "#880000", "#770000", "#660000", "#550000", "#440000", "#330000", "#220000", "#110000", "#000000", "#110000", "#220000", "#330000", "#440000", "#550000", "#660000", "#770000", "#880000", "#990000", "#AA0000", "#BB0000", "#CC0000", "#DD0000", "#EE0000");
                farbbibliothek[5] = new Array("#000000", "#000000", "#000000", "#FFFFFF", "#FFFFFF", "#FFFFFF");
                farbbibliothek[6] = new Array("#0000FF", "#FFFF00");
                farben = farbbibliothek[4];

                function farbschrift() {
                    for (var i = 0; i < Buchstabe.length; i++) {
                        document.all["a" + i].style.color = farben[i];
                    }
                    farbverlauf();
                }

                function string2array(text) {
                    Buchstabe = new Array();
                    while (farben.length < text.length) {
                        farben = farben.concat(farben);
                    }
                    k = 0;
                    while (k <= text.length) {
                        Buchstabe[k] = text.charAt(k);
                        k++;
                    }
                }

                function divserzeugen() {
                    for (var i = 0; i < Buchstabe.length; i++) {
                        document.write("<font face='monotype corsiva' size=30><span id='a" + i + "' class='a" + i + "'>" + Buchstabe[i] + "</span></font>");
                    }
                    farbschrift();
                }
                var a = 1;

                function farbverlauf() {
                    for (var i = 0; i < farben.length; i++) {
                        farben[i - 1] = farben[i];
                    }
                    farben[farben.length - 1] = farben[-1];

                    setTimeout("farbschrift()", 30);
                }
                var farbsatz = 1;

                function farbtauscher() {
                    farben = farbbibliothek[farbsatz];
                    while (farben.length < text.length) {
                        farben = farben.concat(farben);
                    }
                    farbsatz = Math.floor(Math.random() * (farbbibliothek.length - 0.0001));
                }
                setInterval("farbtauscher()", 5000);
                text = "Better than Others, Harder than Ever";
            </script><span class="newclass">
<script type="text/javascript">
string2array(text); 
divserzeugen();
</script></span>

</body>
</html>
