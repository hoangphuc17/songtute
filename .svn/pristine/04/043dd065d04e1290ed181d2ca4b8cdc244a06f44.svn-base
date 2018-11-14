(function ($) {
	$(document).ready(function($) {
		console.log('admin.js is ready!');
		var input_link_youtube = 'div.acf-field[data-name="pl_link_youtube"] input';
		var input_title = 'div.acf-field[data-name="pl_title"] input';
		var input_description = 'div.acf-field[data-name="pl_description"] textarea';
		var input_video_length = 'div.acf-field[data-name="pl_video_length"] input';
		var input_video_id = 'div.acf-field[data-name="pl_video_id"] input';
		var input_total_length = 'div.acf-field[data-name="pl_thoi_luong"] input';
		
		function genIdYoutube(url){
		    var regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
		    var match = url.match(regExp);
		    return (match&&match[7].length==11)? match[7] : false;
		}
		//iso format hour minute seconde
		function changePTHMStoSeconde(PTHMS)
		{
			var reptms = /^PT(?:(\d+)H)?(?:(\d+)M)?(?:(\d+)S)?$/;
	        var hours = 0, minutes = 0, seconds = 0, totalseconds;

	        if (reptms.test(PTHMS)) {
	            var matches = reptms.exec(PTHMS);
	            if (matches[1]) hours = Number(matches[1]);
	            if (matches[2]) minutes = Number(matches[2]);
	            if (matches[3]) seconds = Number(matches[3]);
	            totalseconds = hours * 3600  + minutes * 60 + seconds;
	        }
	        return totalseconds;
		}
		function totalTimePlaylist()
		{
			var totalTime = 0;
			$(input_video_length).each(function(index, el) {
				totalTime += Number($(this).val());
			});
			 
			return totalTime;

		}

		$(document).on('change', input_link_youtube, function() {
		
			var link_youtube_value = $(this).val();

			
			var	currentId = genIdYoutube(link_youtube_value);

			var api_key = 'AIzaSyDwf-YmyqxWerJkAsCpuyJaW1_EoSZMdwA';
			var api_youtube = 'https://www.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails%2Cstatistics&id='+currentId+'&key=';
			var tempId = $(this).data('tempId');
			var _this = this;
			if(currentId && (!tempId || tempId != currentId))
			{
				
				$(this).data('tempId', currentId);
				fetch(api_youtube + api_key)
				.then(function(response) {
				    return response.json();
				})
				.then(function(Json) {
				    var title = Json.items[0].snippet.title;
				    var description = Json.items[0].snippet.description.split('\n')[0];
				    var video_length = Json.items[0].contentDetails.duration;
				    video_length = changePTHMStoSeconde(video_length);
				    $(_this).closest('.acf-fields').find(input_title).val(title);
				    $(_this).closest('.acf-fields').find(input_description).val(description);
				    $(_this).closest('.acf-fields').find(input_video_length).val(video_length);
				    $(_this).closest('.acf-fields').find(input_video_id).val(currentId);

				    var totalTime = totalTimePlaylist();

				    $(input_total_length).val(totalTime);
				    

				}).catch(error => console.error('Error:', error));
				
				
			}
	
		})
		
	});
}( jQuery ));
