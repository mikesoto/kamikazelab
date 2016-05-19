$(document).ready(function(){
	$.event.add(window, "scroll", function() {
		if($(document).scrollTop() < 350){
			$(".navbar-main").css('margin-top','-80px');
		}else{
			$(".navbar-main").css('margin-top','0px');
		}
	    $(".intro-content").css('margin-top', ($(document).scrollTop())+'px');
	});


	$(".section").hover(function(){
		section_id = $(this).attr('id');
		//hide all section descriptions
		$(".section-description").css('display','none');
		//hide the fold title
		$("#que-hacemos-title").css('display','none');
		//hide the section title
		$("#"+section_id+'-section-title').css('display','none');
		//show only the description for this section
		$("#"+section_id+'-description').css('display','block');
	});

	$(".section").mouseout(function(){
		section_id = $(this).attr('id');
		//show the section title
		$("#"+section_id+'-section-title').css('display','block');
	});

});
