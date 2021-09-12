'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "7502ab648470e137294434f0968c73c5",
"assets/assets/images/ai.png": "f9433cc2353d00f45a831a6103795be7",
"assets/assets/images/backend.png": "aca27ded1cfff0279207f4c312c3cd20",
"assets/assets/images/basic.png": "510d716304b7bdd210f34b71abf8646e",
"assets/assets/images/budgetTrackerApp/budgetTrackerApp1.jpg": "e60780fd4d1ba958c899d61c7f0adcc6",
"assets/assets/images/budgetTrackerApp/budgetTrackerApp2.jpg": "001c856def622d5fa0a57ee968e650e7",
"assets/assets/images/chatApp/chatApp1.jpg": "07743e01f78ddf646966e12d8508ac47",
"assets/assets/images/chatApp/chatApp2.jpg": "35365a517da9469d97802d338cacb2fb",
"assets/assets/images/chatApp/chatApp3.jpg": "9a1acbffebbd5e34632c650fc7724456",
"assets/assets/images/clubhouseApp/clubhouseApp1.jpg": "67b1b44a64101f82ca540a9d91b9fc9e",
"assets/assets/images/clubhouseApp/clubhouseApp2.jpg": "bb3b21c7fe3d758e8fc56c9b0d0d379a",
"assets/assets/images/clubhouseApp/clubhouseApp3.jpg": "92de53b8374c8287059c15d3a7a2f479",
"assets/assets/images/clubhouseApp/clubhouseApp4.jpg": "18fee1110c6d99b7d983a60a66aebb07",
"assets/assets/images/covidApp/covidApp1.jpg": "35a3026bf7de9731fe34aa8d71faba89",
"assets/assets/images/covidApp/covidApp2.jpg": "859c3200e42445e49df24f3ea25971fb",
"assets/assets/images/covidApp/covidApp3.jpg": "e806df73f5affac09987439bd0117e34",
"assets/assets/images/covidApp/covidApp4.jpg": "720439cf418d2ccfa9d851c7758b93b2",
"assets/assets/images/fast.png": "f9c43f8d87c81e2334f9d148b1265207",
"assets/assets/images/github.png": "db110fd167f389134afac9db37d20e82",
"assets/assets/images/Light.png": "03eea93051499fe716404942784b6369",
"assets/assets/images/linkedin.png": "38b43a4765f23ffbfc50c129642f8e67",
"assets/assets/images/mealApp/mealApp1.jpg": "946cb9fc18c799b7ffaf0cd1ac593e77",
"assets/assets/images/mealApp/mealApp10.jpg": "69ead4dfe9eecd57cfedcf186b1ac67d",
"assets/assets/images/mealApp/mealApp2.jpg": "6c4330f050fd1889b908f21d73d4b646",
"assets/assets/images/mealApp/mealApp3.jpg": "24a1f1126c59fc6304500883933d56ba",
"assets/assets/images/mealApp/mealApp4.jpg": "8dc520c9c6d09833470a4bd8625f8bc7",
"assets/assets/images/mealApp/mealApp5.jpg": "dfcc5d53ba54b5fca561182c825f3e48",
"assets/assets/images/mealApp/mealApp6.jpg": "df84cdf2be3a1ff5b41ca645415fc1c8",
"assets/assets/images/mealApp/mealApp7.jpg": "5ccc95e16f651ccaa356019b5d1fb532",
"assets/assets/images/mealApp/mealApp8.jpg": "af84e587e6bb165cb2a492d8ad710188",
"assets/assets/images/mealApp/mealApp9.jpg": "f5416590465616a08df2326622540e0b",
"assets/assets/images/oussama.png": "15133b5ea5c4d1da5f73f77011be8f59",
"assets/assets/images/Responsive.png": "a670dcf213ad381df8ffeb4a559fd9f8",
"assets/assets/images/travelApp/travelApp1.jpg": "11aae98cd684b4f8127e4b57a3b01c49",
"assets/assets/images/travelApp/travelApp2.jpg": "a4b19264968f6f16888c7d88135b4e71",
"assets/assets/images/travelApp/travelApp3.jpg": "944d10df648fcf0a184c88d691591d40",
"assets/assets/images/travelApp/travelApp4.jpg": "cab88af31ca5c117c433a97d4fa05509",
"assets/assets/images/travelApp/travelApp5.jpg": "f2f8778ca580c86839672a262c050705",
"assets/assets/images/youssef.jpeg": "4f328c6212ff7d1f6f414b18685d5a77",
"assets/assets/videos/BMI_calculator.mp4": "cdaeb8c3993f4333620d3a4d0c3157be",
"assets/assets/videos/tetrisGame.mp4": "171a5d26f11b2115c0e1912fa3610e67",
"assets/assets/videos/tictactoe.mp4": "56cf834d41eab7dd00e74610ed460502",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "b4fbc6cdeaf2c6944c1f951a1d8ad0d1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "1b57dd9a131c571953e2d9ffe01afc14",
"/": "1b57dd9a131c571953e2d9ffe01afc14",
"main.dart.js": "99437cbb94f40c37c5759e4fda005e64",
"manifest.json": "deb58af2c622530f889216c0c35f74e5",
"version.json": "b95314fefdf4438df601be455648c8ae"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
