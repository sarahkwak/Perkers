// var map;
// var markers = [];
// var list_brands = gon.brands;

// function initMap() {
//   map = new google.maps.Map(document.getElementById('map'), {
//     center: {lat:  37.775, lng: -122.419},
//     zoom: 13,
//     scrollwheel: false
//   });
//   google.maps.event.addListener(map, 'mouseout', function(event){
//      this.setOptions({scrollwheel:false});
//   });
//   var geocoder = new google.maps.Geocoder();
//   function geocodeAddress(geocoder, resultsMap) {
//     for (var i =0; i< list_brands.length; i++) {
//       var mylocation = list_brands[i].location;
//       geocoder.geocode({'address': mylocation},function(results, status) {
//         var marker = new google.maps.Marker({
//           map: resultsMap,
//           position: results[0].geometry.location
//         });
//       });//geocoder
//     }; //for
//   };
//   geocodeAddress(geocoder, map);
// };

// function locationgeocodeAddress(geocoder, resultsMap) {
  
//   geocoder.geocode({'address': address}, function(results, status) {
//     if (status === google.maps.GeocoderStatus.OK) {
//       resultsMap.setCenter(results[0].geometry.location);
//       var marker = new google.maps.Marker({
//         map: resultsMap,
//         position: results[0].geometry.location
//       });
//     } else {
//       alert('Geocode was not successful for the following reason: ' + status);
//     }
//   });
// }
$(document).ready(function() {
  // $('#address').click(geocodeAddress(geocoder, resultsMap));

  $('.brand_detail').on('click', function(evt) {
    evt.preventDefault();
    debugger;
    $this = $(this)
    var $target = $this.find('.hidden_detail');
    var id = this.id;
    $.ajax({
      url: 'perks/'+id,
      type: 'GET'
    })
    .done(function(result) {
      console.log()
       $target.append("<p><em>"+result.details+"</p></em>"+"<p id='favorite_btn'>❤</p>");
    })
    .fail(function(result) {
      console.log(result);
    })
  });
});

