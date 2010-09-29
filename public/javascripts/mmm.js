$(function() {
	$('.band_messages, .fan_messages').each(function() {
		var $this = $(this)
		var url = $this.attr('data-update-uri')
		$.getJSON(url+'?callback=?', function(json) {
			$.each(json.messages, function() {
				$this.append('<li style="display: none" class="'+ this.network + '">' + this.message +' <a href="'+ this.link +'" target="_blank">view</a></li>');
			});
			
			$this.find('li:lt(3)').show()
		});
		
		setInterval(function() {
			var html = $this.find('li:first').html();
			$this.find('li:first').fadeOut('slow', function() {
				$(this).remove()
				$this.find('li:nth(2)').fadeIn()
			})
			$this.append('<li style="display:none">' + html + '</li>');
		}, 4000)
	})	
})