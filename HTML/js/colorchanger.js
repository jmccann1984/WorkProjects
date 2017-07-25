/*jslint devel: true*/
var redColor = 0;
var blueColor = 0;
var greenColor = 0;
var alphaColor = 10;

document.getElementById("red").addEventListener("click", incrementRed);
document.getElementById("green").addEventListener("click", incrementGreen);
document.getElementById("blue").addEventListener("click", incrementBlue);
document.getElementById("alpha").addEventListener("click", incrementAlpha);

function incrementRed() {
    if (redColor === 255) {
        redColor = 0;
    } else {
        redColor = redColor + 17;
    }
    changeColor();
}

function incrementGreen() {
    if (greenColor === 255) {
        greenColor = 0;
    } else {
        greenColor = greenColor + 17;
    }
    changeColor();
}

function incrementBlue() {
    if (blueColor === 255) {
        blueColor = 0;
    } else {
        blueColor = blueColor + 17;
    }
    changeColor();
}

function incrementAlpha() {
    if (alphaColor <= 0) {
        alphaColor = 10;
    } else {
        alphaColor = alphaColor - 1;
    }
    changeColor();
}

function changeColor() {
    console.log("rgba(" + redColor + ", " + greenColor + ", " + blueColor + ", " + alphaColor + ")");
    document.body.style.backgroundColor = ("rgba(" + redColor + ", " + greenColor + ", " + blueColor + ", " + alphaColor/10 + ")");
    
}