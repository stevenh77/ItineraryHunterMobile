$('#itineraryListPage').live('pageshow', function(event) {
	var id = getUrlVars()["id"];
	$.getJSON(serviceURL + 'getitinerarylist.php?id='+id, displayItineraries);
});

function displayItineraries(data) {
		$('#itineraryList li').remove();
    var itineraries = data.items;
		$.each(itineraries, function(index, itinerary) {
		
	    console.log(itinerary);
	    $('#itineraryList').append('<li><a href="itinerary.html?id=' + itinerary.id + '">' +
          '<img src="http://stevenhollidge.com/blog-source-code/itineraryhuntermobile/services/pics/' + itinerary.picture + '"/>' +
					'<h4>' + itinerary.title + '</h4>' +
					'<p>' + itinerary.description + '</p></a></li>');
			});
		$('#itineraryList').listview('refresh');
	}
function getUrlVars() {
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}