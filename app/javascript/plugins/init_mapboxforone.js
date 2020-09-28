import mapboxgl from 'mapbox-gl';

const initMapboxForOne = () => {
  const mapElement = document.getElementById('mapForOne');
  const marker = JSON.parse(mapElement.dataset.markers);
  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'mapForOne',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [ marker.lng, marker.lat ],
      zoom: 15
    });

    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  }
};

export { initMapboxForOne };
