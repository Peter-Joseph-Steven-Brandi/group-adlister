
let mtg = require('mtgsdk');

mtg.card.where({name: 'blood moon'})
	.then(card => {
		console.log(card[1])
	});

