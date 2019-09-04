const userCard = document.getElementById("card-name").innerText
const baseUrl = "https://api.magicthegathering.io/v1/cards?name=" + userCard.replace(/\s+/g, '%20').replace("card/", "card");
const getData = (url) => {
	return fetch(url).then((data) => data.json())
}
getData(baseUrl).then((data) => {
	data.cards.map((card) => {
		console.log(card.name);
		console.log(card.imageUrl);
		var doc = document.getElementById("card-pic");
		doc.innerHTML = "<img src= " + card.imageUrl + ">";
	})
})
