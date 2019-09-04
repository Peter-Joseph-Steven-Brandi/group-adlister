const userCard = document.getElementById("card-name").innerText
const baseUrl = "https://api.magicthegathering.io/v1/cards?name=" + userCard;
const getData = (url) => {
	return fetch(url).then((data) => data.json())
}
getData(baseUrl).then((data) => {
	data.cards.map((card) => {
		console.log(card.name)
		console.log(card[0].imageUrl);
		document.getElementById("card-pic").insertAdjacentHTML("afterBegin", "<img src='"+card[0].imageUrl+"'/>");
	})
})
