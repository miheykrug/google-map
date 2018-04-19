function initMap() {
  var mapContainer = document.querySelector('#map_container');

  var latitude = + mapContainer.dataset.latitude;
  var longitude = + mapContainer.dataset.longitude;

  var markerPoint = {lat: latitude, lng: longitude};

  var map = new google.maps.Map(mapContainer, {
    zoom: 10,
    center: markerPoint
  });

  var marker = new google.maps.Marker({
    position: markerPoint,
    map: map
  });
}