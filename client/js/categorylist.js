var serviceURL = "http://stevenhollidge.com/blog-source-code/itineraryhuntermobile/services/";

var categories;

$('#categoryListPage').bind('pageinit', function(event) {
	displayCategoryList();
});

function displayCategoryList() {
	$.getJSON(serviceURL + 'getcategorylist.php', function(data) {
		$('#categoryList li').remove();
		var categories = data.items;
		$.each(categories, function(index, category) {
			$('#categoryList').append('<li><a href="itinerarylist.html?id=' + category.id + '">' +
					'<img src="http://stevenhollidge.com/blog-source-code/itineraryhuntermobile/services/pics/' + category.picture + '"/>' +
					'<h4>' + category.title + '</h4>' +
					'<p>' + category.description + '</p>' +
					'<span class="ui-li-count">' + category.itineraryCount + '</span></a></li>');
		});
		$('#categoryList').listview('refresh');
	});
}