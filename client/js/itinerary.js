$('#itineraryPage').live('pageshow', function(event) {
	var id = getUrlVars()["id"];
	console.log("itinerary for " + id);
	$.getJSON(serviceURL + 'getitinerary.php?id='+id, displayItinerary);
});

function displayItinerary(data) {
  var itinerary = data.item;
	$('<div id="imagecontainer"><img src="http://stevenhollidge.com/blog-source-code/itineraryhuntermobile/services/pics/' + itinerary.picture + '" /></div>' +
    '<h3>' + itinerary.title + '</h3>' +
    '<p>' + itinerary.duration + ' days</p>' +
    '<p>' + itinerary.description + '</p>').appendTo('#itineraryDetails').trigger('create');					
}