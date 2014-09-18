$( document ).ready(function() {
    setInterval(function (){
        console.log("starting interval")
        $.get('/pics/new_pictures').done(function(response){
            var new_pictures = response;
            for(i=0; i < new_pictures.length; i++){
                $('[data-new-pics]').prepend('<div class="pic-frame"><img src="' + new_pictures[i].image_url +'"></div>'  )
            }

            // debugger
            // console.log(new_pictures)
        });
    }, 60000)
});



// <div class="pic-frame"></div>
