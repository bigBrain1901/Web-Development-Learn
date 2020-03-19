var flag = true;
var level = 1;
var array = [];
var user = [];

$(document).on("keypress", start);

function start () {
    if (flag) {
        flag = false;
        addArray();
    }
    $('h1').text("Level " + 1);
}

$(".btnn").on("click", function () {
    if (!flag) {
        var name = $(this).attr("id");
        user.push(name);
        playSound (name);
        doClick (name);
        if (user[user.length-1]!=array[user.length-1]) {
            playSound('wrong');
            $('h1').text("Game over! Press any key to restart.");
            $('body').css("background-color","#ff0000");
            setTimeout (function() {
                $('body').css("background-color","#011F3F");
            }, 150); 
            level = 1;
            flag = true;
        }
        if (user[user.length-1]===array[user.length-1] && array.length===user.length) {
            user = [];
            level++;
            setTimeout (addArray, 500);
            $('h1').text("Level " + (level));
        }
    }
});

function playSound (id) {
    new Audio("sounds/"+id+".mp3").play();
}

function doClick (id) {
    $("#"+id).addClass("pressed");
    setTimeout (function() {
        $("#"+id).removeClass("pressed");
    }, 150);    
}

function addArray () {
    var option = (Math.floor(Math.random()*4));
    switch (option) {
        case 0:
            array.push("green");
            playSound('green');
            doClick('green');
            break;
        case 1:
            array.push("red");
            playSound('red');
            doClick('red');
            break;
        case 2:
            array.push("yellow");
            playSound('yellow');
            doClick('yellow');
            break;
        case 3:
            array.push("blue");
            playSound('blue');
            doClick('blue');
            break;
    }
}