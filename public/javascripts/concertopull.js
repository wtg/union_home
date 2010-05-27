$(document).ready(function(){
    var content = [];
    var current = 0;
    var paused = 0;
    var width = 652;
    var height = 324;
    var thumbWidth = 59;
    var thumbHeight = 44;
    
    function rotate() {
        $(".fp-exposed").fadeOut("slow", function(){$(this).remove()});
        var imgSrc = content[current] + "&width=" + width + "&height=" + height;
        var img = new Image();
        img.onload = function(){
            var div = $("<img>")
                .attr("src", imgSrc)
                .css({"position": "absolute",
                      "left": (width - img.width) / 2,
                      "top": (height - img.height) / 2
                })
                .addClass("fp-exposed").appendTo("#fp-left").hide().fadeIn("slow");
            if(++current >= content.length)
                current = 0;
        };
        img.error = rotate;
        img.src = imgSrc;
    }
    
    function slideshow() {
        if(!paused)
            rotate();
        setTimeout(slideshow, 4000);
    }

    function toggle(p) {
        if(paused == p) return;
        if(p != undefined) paused = p;
        if(paused) {
            $("#pause").fadeOut();
            $("#play").fadeIn();
        } else {
            $("#play").fadeOut();
            $("#pause").fadeIn();
        }
    }
    
    $.getJSON("home/concerto.json", {cache: false}, function(json) {
        $.each(json, function(offset) {
            content.push(this.content);
            var imgSrc = this.content + "&width=" + thumbWidth + "&height=" + thumbHeight;
            var img = new Image();
            img.onload = function(){
                var a = $("<a>").attr("href","#").click(function(e){
                        e.preventDefault();
                        current = offset;
                        toggle(true);
                        rotate();
                        }).append($("<img>").attr("src", imgSrc).css("margin-top", (thumbHeight - img.height) / 2));
                $("<div>").addClass("fp-thumbs-div").append(a).hide().appendTo("#fpth-left").fadeIn();
            };
            img.src = imgSrc;
        });
        setTimeout(slideshow, 8000);
    });
    
    $("#play").click(function(e){
        e.preventDefault();
        toggle(false);
    });
    $("#pause").click(function(e){
        e.preventDefault();
        toggle(true);
    });
    
    $("#fp-left").hover(function(){
        if(paused) $("#play").fadeIn();
        else $("#pause").fadeIn();
    }, function(){
        if(!paused) $("#pause").fadeOut();
    });
});
