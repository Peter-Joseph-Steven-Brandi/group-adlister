const userCard = document.getElementById("card-name").innerText

const baseUrl = "https://api.magicthegathering.io/v1/cards/";

console.log(userCard)

const getData = (url) => {
	return fetch(url).then((data) => data.json())
}

getData(baseUrl).then((data) => {
	data.cards.map((card) => {
		console.log(card.name)
		console.log(card.imageUrl)
	})

})
