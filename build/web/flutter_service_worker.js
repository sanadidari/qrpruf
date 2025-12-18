'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "81baa3d261c23dc46357ad563dbd4ab1",
"assets/AssetManifest.bin.json": "197a2ce7b3915748df5d61feca760047",
"assets/assets/images/anim_video.png": "ab88bf5deb1713c06667a83a34b6603a",
"assets/assets/images/btn_icon1.png": "ac4380450af79f400f1d45dc274c51ee",
"assets/assets/images/btn_icon2.png": "2d33df9c0dcfbb0c5a97c2d8702df2cd",
"assets/assets/images/btn_icon3.png": "735f6dc4ba4a947052ce370f3e607c8c",
"assets/assets/images/btn_icon4.png": "751e7080639c57dd50790aec6ee1d37e",
"assets/assets/images/btn_icon5.png": "b725607c9b4f911a47af02c4d9d9d349",
"assets/assets/images/btn_icon6.png": "b57eb571f1218a8c061a50b81ebfa002",
"assets/assets/images/cta.png": "4bd11c01ffae159235f82f6d112a6ad3",
"assets/assets/images/empr.png": "d449b2f06eec6a6b6893f28d88f518ff",
"assets/assets/images/flechy.png": "055115e1ccced0d21882a96bff9102d3",
"assets/assets/images/footer.png": "8dbb53b6ea26b76a0ffb1cc62b2c4f76",
"assets/assets/images/header.png": "70c12179969872ce379ebbc8db018fce",
"assets/assets/images/header_sec.png": "ee99e72438e98e66b81ea1af251be04b",
"assets/assets/images/helpy.png": "9d23d01e1ea0b255a2d9a506722f20d6",
"assets/assets/images/ic1.png": "360608efd7c5d2dadbe39feb977eade6",
"assets/assets/images/ic2.png": "e564110e364cb7f5eebb4982da5c7121",
"assets/assets/images/ic3.png": "2ffcc3a77c130adbfa47c6a43f25b8e2",
"assets/assets/images/ico1.png": "8f3c1199b017179bf95d759b9a34e24a",
"assets/assets/images/ico2.png": "0aa929605d2b6a8d9a01b984a8867267",
"assets/assets/images/ico3.png": "87c3e227ce8a7192e2573fbdc3799110",
"assets/assets/images/icoty1.png": "f0236243151f4dbdd3a89e9a1abb0764",
"assets/assets/images/icoty2.png": "190160f605e0c205172e54270ddc68f7",
"assets/assets/images/icoty3.png": "c5e60dd48d24ccb765a734b5dacd2ad7",
"assets/assets/images/ico_bien.png": "730614c56246ddc49d232bb7a2d06186",
"assets/assets/images/ico_folder.png": "e98ff8ab94208a5cc011c186ffbc1395",
"assets/assets/images/ico_forget.png": "c308189d29dd76bf25cffedfeb1f45fb",
"assets/assets/images/ico_reglage.png": "613a1b8b1f3c216e07a281deffffb590",
"assets/assets/images/img_accueil.png": "2fbb68902def01d035aeb79ac536455f",
"assets/assets/images/logo.png": "4d1f391f6fb5ec6165ceab807fd5162d",
"assets/assets/images/menu_deroul.png": "97b193151d5aaa918f38c821d3df09d0",
"assets/assets/images/Page1.png": "61db209f80c3479afa067b891501fab6",
"assets/assets/images/whatsy.png": "23f0ff92687ae7aadd00f794553de861",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "577e7b85d3f3e04a6a9965909db67123",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"flutter_bootstrap.js": "40be8535f8f70a4e8bffc828568d9791",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "fbc577833c9e79076ef26f3ca170f18a",
"/": "fbc577833c9e79076ef26f3ca170f18a",
"main.dart.js": "4d64014db8ac400f7081aa559a7dcd73",
"manifest.json": "02be7d6492fa673dbd81045a02309d4d",
"version.json": "e9337b618e975a0be5f98f95235415db"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
