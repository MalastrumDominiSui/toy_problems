

function strAnagram(arrStr){
	alphaArr =[]
	for (var i = 0; i < arrStr.length; i++) {		
		alphaShrunk = arrStr[i].split(" ").join("").toLowerCase().replace('\'', '').split("").sort().join("");
		alphaArr.push(alphaShrunk)
		console.log(alphaArr)


	}
	console.log(alphaArr[0] == alphaArr[1]) 

}





// a = "what      is going on      "

// d =a.split(" ").join("")
// console.log(d)

// b = a.split('').sort()
// //console.log(b)
// c= b.splice(0, 1)
//console.log(c)

//split a strings, join them again?


// m = "wisdom"
// n = m.split(" ").join("").split("").sort()
// console.log(n)
strAnagram(["Seth Rogan", "Gathers No"])
strAnagram(["Reddit", "Eat Dirt"])
strAnagram(["Schoolmaster", "The classroom"])
strAnagram(["Astronomers", "Moon starer"])
strAnagram(["Vacation Times", "I'm Not as Active"])