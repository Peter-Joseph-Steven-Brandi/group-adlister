
let mtg = require('mtgsdk');

mtg.card.where({name: 'tarmogoyf'})
	.then(card => {
		console.log(card[1].imageUrl)
	});

