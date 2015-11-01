
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

  // var infoWindows = []
  // var perks = gon.list_perks
  // for (var i =0; i<perks.length; i++) {
  //   var center = { lat: parseFloat(perks[i]['latitude']),
  //                   lng: parseFloat(perks[i]['longitude']) }
  //   var marker = new google.maps.Marker({
  //     map: map,
  //     position: center,
  //     title: perks[i]['name'],
  //     fooditems: perks[i]['details'],
  //     icon: {
  //       url: 'http://maps.gstatic.com/mapfiles/circle.png',
  //       anchor: new google.maps.Point(10, 10),
  //       scaledSize: new google.maps.Size(10, 17)
  //     }
  //   });
  //   markers.push(marker)
  }
