var bTags = document.getElementsByTagName("b");
var aTags = document.getElementsByTagName("a");
var searchText = "CORDELIA";
var questionMark = "?";

for (var i = 0; i<bTags.length; i++){
	if (bTags[i].textContent.includes(searchText)) {
		found = bTags[i];
		break;
	}
}

for (var i = 0; i<aTags.length; i++){
	if (aTags[i].textContent.includes(questionMark)) {
		found = bTags[i];
		break;
	}
}
