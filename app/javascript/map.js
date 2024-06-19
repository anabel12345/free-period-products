
  
// let mapObject;

// async function initMap() {
//     //get location info 
//     const locationInfo = document.getElementById("location-info");
//     console.log(locationInfo)
//     const position = {
//             lat: parseFloat(locationInfo.getAttribute("data-latitude")),
//             lng: parseFloat(locationInfo.getAttribute("data-longitude"))
//     };
//     console.log('position')
//     console.log(position)


//   const { Map } = await google.maps.importLibrary("maps");
//   const { AdvancedMarkerElement } = await google.maps.importLibrary("marker");

//   // The map, centered at the coordinate of the location
//   mapObject = new Map(document.getElementById("map"), {
//     zoom: 18,
//     center: position,
//     mapId: "DEMO_MAP_ID",
//   });

//   // The marker, positioned at the location
//   const marker = new AdvancedMarkerElement({
//     map: mapObject,
//     position: position,
//     title: "Free Period Products location",
//   });
// }

// initMap();

