var map;
var markers = [];

function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat:  37.775, lng: -122.419},
    zoom: 13,
    scrollwheel: false
  });
  google.maps.event.addListener(map, 'mouseout', function(event){
     this.setOptions({scrollwheel:false});
  });

  var geocoder = new google.maps.Geocoder();
  function geocodeAddress(geocoder, resultsMap) {
    var list_brands = gon.brands;
    for (var i =0; i< list_brands.length; i++) {
      var mylocation = list_brands[i].location;
      geocoder.geocode({'address': mylocation},function(results, status) {
        if ( results != null) {
          var marker = new google.maps.Marker({
            map: resultsMap,
            position: results[0].geometry.location
          });
        } else {
          var marker = new google.maps.Marker({
            map: resultsMap,
            position: {lat:  37.775, lng: -122.419}
          });
        }
      });//geocoder
    }; //for
  };
  geocodeAddress(geocoder, map);

  document.getElementById('address').addEventListener('click', function() {
    geocodeAddress(geocoder, map);
  });
};

function geocodeAddress(geocoder, resultsMap) {
  var address = document.getElementById('location').value;
  console.log(address);
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      resultsMap.setCenter(results[0].geometry.location);
      resultsMap.setZoom(14);
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
};

$(document).ready(function() {
  $('#address').click(function(evt) {
    evt.preventDefault();
    var geocoder = new google.maps.Geocoder();
    geocodeAddress(geocoder, map);
  }); //click

  $('.brand_detail').on('click', function(evt) {
    evt.preventDefault();
    $this = $(this)
    var $target = $this.find('.hidden_detail');
    var id = this.id;
    $.ajax({
      url: 'perks/'+id,
      type: 'GET'
    })
    .done(function(result) {
      $target.append("<em>"+result.details+"</em>");
      $('.perk_box').css("height", "200px");
    })
    .fail(function(result) {
      console.log(result);
    })
  });

  $('.favorite_btn').on('click', function(evt) {
    evt.preventDefault();
    var id=this.parentElement.id;
    debugger;
    $.ajax({
      url: 'favorite/'+id,
      type: 'GET'
    })
    .done(function(result) {
      console.log(result);
    })
    .fail(function() {
      console.log("error");
    })
    
  })
});

