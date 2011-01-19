$(function() {
	$('.band_messages, .fan_messages').each(function() {
		var $this = $(this)
		var url = $this.attr('data-update-uri')
		$.getJSON(url+'?callback=?', function(json) {
			$.each(json.messages, function() {
				$('<li>', {
					style: "display: none",
					'class': this.network
				}).append(
					$('<span>', {
						'class': 'author',
						text: this.author + ": "
					})
				).append(
					$('<span>', {
						'class': 'message',
						text: this.message + " "
					})
				).append(
					$('<a>', {
						href: this.link,
						target: '_blank',
						text: 'view'
					})
				).appendTo($this);
			});
			
			$this.find('li:lt(3)').show()
		});
		
		setInterval(function() {
			var html = $this.find('li:first').html();
			var klass = $this.find('li:first').attr('class')
			$this.find('li:first').slideUp('slow', function() {
				$(this).remove();
				$this.find('li:nth(2)').fadeIn();
			})
			$this.append($('<li>', {'class': klass}).html(html).hide());
		}, 4000)
	})	
})