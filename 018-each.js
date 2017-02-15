

function stringToLength(string){

	return string.length
}

function each(array, foo){
	for (var i = 0; i < array.length; i++) {
		array[i] = foo(array[i]);
	}
	return array
}

//test 
console.log(each(["mike", "john","susie"], stringToLength));