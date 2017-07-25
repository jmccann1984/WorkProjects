/*jslint devel: true*/
var red = 119;
var blue = 119;
var green = 119;
var alpha = 5;

document.getElementById("redup").addEventListener("click", iRed);
document.getElementById("reddn").addEventListener("click", dRed);
document.getElementById("grnup").addEventListener("click", iGreen);
document.getElementById("grndn").addEventListener("click", dGreen);
document.getElementById("bluup").addEventListener("click", iBlue);
document.getElementById("bludn").addEventListener("click", dBlue);
document.getElementById("alpup").addEventListener("click", iAlpha);
document.getElementById("alpdn").addEventListener("click", dAlpha);

function iColor(color) {
    if (color !== 255) {
        color = color + 17;
    }
    
    return color;
}

function dColor(color) {
    if (color !== 0) {
        color = color - 17;
    }
    
    return color;
}

function iRed(){
    red = iColor(red);
    changeColor();
}

function iGreen() {
    green = iColor(green);
    changeColor();
}

function iBlue() {
    blue = iColor(blue);
    changeColor();
}

function iAlpha() {
    if (alpha !== 0) {
        alpha -= 1;
    }
    changeColor();
}

function dRed(){
    red = dColor(red);
    changeColor();
}

function dGreen() {
    green = dColor(green);
    changeColor();
}

function dBlue() {
    blue = dColor(blue);
    changeColor();
}

function dAlpha() {
    if (alpha !== 10) {
        alpha += 1;
    }
    changeColor();
}

function changeColor() {
    console.log("rgba(" + red + ", " + green + ", " + blue + ", " + alpha + ")");
    document.body.style.backgroundColor = ("rgba(" + red + ", " + green + ", " + blue + ", " + alpha/10 + ")");
    document.getElementById("reind").setAttribute("value", red);
    document.getElementById("grind").setAttribute("value", green);
    document.getElementById("blind").setAttribute("value", blue);
    document.getElementById("alind").setAttribute("value", 10-alpha);   
}

changeColor();
