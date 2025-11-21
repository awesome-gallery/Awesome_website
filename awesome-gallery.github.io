<!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Awesome gallery</title>
     <link rel="stylesheet" href=""
         integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
         crossorigin="anonymous" referrerpolicy="no-referrer" />
     <style>
         body {
             background-color: green;
             font-family: sans-serif;
             margin: 0;
             padding: 0;
         }
         header {
             text-align: center;
             padding: 20px;
             background-color: rgba(0, 0, 0, 0.5);
             /* Add a semi-transparent background */
         }
         header img {
             width: 100%;
             height: auto;
             max-height: 150px;
             object-fit: contain;
             display: block;
             /* Ensure the image is a block-level element */
             margin: 0 auto;
             /* Center the image horizontally */
         }
         header h3 {
             color: yellow;
             font-size: 4em;
             display: inline-block;
             margin: 0 10px;
             vertical-align: middle;
             /* Align the header text vertically */
         }
         #searchInput {
             padding: 10px;
             width: 300px;
             font-size: 16px;
             margin-bottom: 10px;
         }
         button {
             padding: 10px 20px;
             font-size: 16px;
             cursor: pointer;
         }
         marquee {
             color: white;
             background-color: black;
             padding: 10px;
         }
         article {
             padding: 20px;
         }
         h3 {
             color: red;
             margin-bottom: 15px;
             text-align: center;
         }
         .gallery {
             display: flex;
             flex-wrap: wrap;
             justify-content: space-around;
         }
         .gallery figure {
             width: 45%;
             margin: 10px;
             text-align: center;
             box-sizing: border-box;
             /* Include padding and border in the element's total width and height */
         }
         .gallery img {
             width: 100%;
             height: auto;
             border-radius: 5px;
             display: block;
             /* Ensure images take up the full width of their container */
             margin: 0 auto;
             /* Center images horizontally within their containers */
             cursor: pointer;
             /* Add a pointer cursor for images */
         }
         .download-link {
             display: block;
             margin-top: 5px;
             color: blue;
             text-decoration: none;
         }
         .download-link i {
             margin-left: 5px;
         }
         /* Responsive layout for smaller screens */
         @media (max-width: 768px) {
             .gallery figure {
                 width: 45%;
             }
         }
         @media (max-width: 480px) {
             .gallery figure {
                 width: 100%;
             }
         }
         footer {
             text-align: center;
             padding: 20px;
             color: white;
         }
         /* Fullscreen image styles */
         .fullscreen-overlay {
             position: fixed;
             top: 0;
             left: 0;
             width: 100%;
             height: 100%;
             background-color: rgba(0, 0, 0, 0.9);
             /* Darken background */
             display: none;
             /* Initially hidden */
             justify-content: center;
             align-items: center;
             z-index: 1000;
             /* Ensure it's on top */
         }
         .fullscreen-image {
             max-width: 90%;
             max-height: 90%;
             display: block;
             /* Ensure proper display */
             margin: 0 auto;
             /* Center the image */
         }
         .back-button {
             position: absolute;
             top: 20px;
             left: 20px;
             padding: 10px 20px;
             font-size: 16px;
             cursor: pointer;
             background-color: #555;
             color: white;
             border: none;
             border-radius: 5px;
             z-index: 1001;
             /* Ensure button is on top */
         }
     </style>
 </head>
 <body>
     <header>
         <p style="font-size:450%; text-align:center;">
             <a>
                 <img src="/storage/emulated/0/pictures/1763584495949~2.jpeg" alt="Awesome Logo">
             </a>
             <h3 style="color:yellow; font-size: 4em; display:inline-block;">AWESOME</h3>
         </p>
         <input type="text" id="searchInput" placeholder="Search...">
         <button onclick="searchContent()">Search</button>
     </header>
     <marquee behavior="scroll" direction="left"><strong>
             <h5><b>Say cheese! 📸 Download fabulous free images and spread the visual joy!</b></h5>
         </strong></marquee>
     <article data-category="cars">
         <h3 style="color:red">CARS</h3>
         <div class="gallery">
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/Porsche 1.jpg" alt="Porsche 911 Turbo S"
                     data-caption="Celestial Streak">
                 <figcaption>Celestial Streak</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/Porsche 1.jpg" download="car_001.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/Bugatti Vs Lamboghini.jpg"
                     alt="Bugatti Chiron vs Lamborghini Aventador" data-caption="Dual Dynamo">
                 <figcaption>Dual Dynamo</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/Bugatti Vs Lamboghini.jpg" download="car_002.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/Lamborghini.jpg" alt="Lamborghini Huracan"
                     data-caption="Crimson Fury">
                 <figcaption>Crimson Fury</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/Lamborghini.jpg" download="car_003.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/truck.jpg" alt="Ford F-150"
                     data-caption="Ironclad Colossus">
                 <figcaption>Ironclad Colossus</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/truck.jpg" download="car_004.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/Porsche.jpg" alt="Porsche Taycan"
                     data-caption="Aurora Racer">
                 <figcaption>Aurora Racer</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/Porsche.jpg" download="car_005.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/1234.jpg" alt="Mini Cooper"
                     data-caption="Pocket Rocket">
                 <figcaption>Pocket Rocket</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/1234.jpg" download="car_006.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/1243.jpg" alt="Rolls Royce Phantom"
                     data-caption="Sapphire Chariot">
                 <figcaption>Sapphire Chariot</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/1243.jpg" download="car_007.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/Lamborghini 1.jpg"
                     alt="Lamborghini Aventador" data-caption="Thunderbolt">
                 <figcaption>Thunderbolt</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/Lamborghini 1.jpg" download="car_008.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
         </div>
     </article>
     <article data-category="robots">
         <h3 style="color:red">ROBOTS</h3>
         <div class="gallery">
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/Robot3.jpg" alt="Atlas Robot"
                     data-caption="Shadow Stricker">
                 <figcaption>Shadow Stricker</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/Robot3.jpg" download="robot_001.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/Robot1.jpg" alt="Sophia Robot"
                     data-caption="Lavender">
                 <figcaption>Lavender</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/Robot1.jpg" download="robot_002.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/robot.jpg" alt="Cyberdyne HAL"
                     data-caption="Citrus Guard">
                 <figcaption>Citrus Guard</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/robot.jpg" download="robot_003.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/Rr.jpg" alt="Optimus Prime"
                     data-caption="Cobalt Crusader">
                 <figcaption>Cobalt Crusader</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/Rr.jpg" download="robot_004.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/R.jpg" alt="R2-D2" data-caption="Valiant Vanguard">
                 <figcaption>Valiant Vanguard</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/R.jpg" download="robot_005.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/Robot5.jpg" alt="Roomba Vacuum"
                     data-caption="Roomba Vacuum">
                 <figcaption>Roomba Vacuum</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/Robot5.jpg" download="robot_006.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
         </div>
     </article>
     <article data-category="nature">
         <h3 style="color:red">NATURE</h3>
         <div class="gallery">
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/N.jpg" alt="Autumn Forest"
                     data-caption="Autumn Forest">
                 <figcaption>Autumn Forest</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/N.jpg" download="nature_001.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/N1.jpg" alt="Mountain Landscape"
                     data-caption="Mountain Landscape">
                 <figcaption>Mountain Landscape</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/N1.jpg" download="nature_002.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/N2.jpg" alt="Green Valley"
                     data-caption="Green Valley">
                 <figcaption>Green Valley</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/N2.jpg" download="nature_003.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/N3.jpg" alt="Sunrise at Beach"
                     data-caption="Sunlight Meadow">
                 <figcaption>Sunlight Meadow</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/N3.jpg" download="nature_004.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/N4.jpg" alt="Clear Lake" data-caption="Golden Glade">
                 <figcaption>Golden Glade</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/N4.jpg" download="nature_005.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/N5.jpg" alt="Starry Night Sky"
                     data-caption="Mossy Brook">
                 <figcaption>Mossy Brook</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/N5.jpg" download="nature_006.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
         </div>
     </article>
     <article data-category="skyscrapers">
         <h3 style="color:red">SKYSCRAPERS</h3>
         <div class="gallery">
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/S.jpg" alt="Shanghai Tower"
                     data-caption="Vertical Vista">
                 <figcaption>Vertical Vista</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/S.jpg" download="skyscraper_002.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/S2.jpg" alt="Abraj Al-Bait Clock Tower"
                     data-caption="Skyward Spires">
                 <figcaption>Skyward Spires</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/S2.jpg" download="skyscraper_003.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/S3.jpg" alt="Ping An Finance Centre"
                     data-caption="Jade Giant">
                 <figcaption>Jade Giant</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/S3.jpg" download="skyscraper_004.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/S4.jpg" alt="Lotte World Tower"
                     data-caption="Ruby Zenith">
                 <figcaption>Ruby Zenith</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/S4.jpg" download="skyscraper_005.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/S5.jpg" alt="One World Trade Center"
                     data-caption="Steel giants">
                 <figcaption>Steel giants</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/S5.jpg" download="skyscraper_006.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
             <figure>
                 <img src="/storage/emulated/0/pictures/Dream Artworks/S1.jpg" alt="Guangzhou CTF Finance Centre"
                     data-caption="Modern monoliths">
                 <figcaption>Modern monoliths</figcaption>
                 <a href="/storage/emulated/0/pictures/Dream Artworks/S1.jpg" download="skyscraper_007.jpg"
                     class="download-link">Download <i class="fas fa-download"></i></a>
             </figure>
         </div>
     </article>
     <footer>
         &copy; 2025 AWESOME Gallery. All rights reserved.
     </footer>
     <!-- The overlay for the fullscreen image -->
     <div class="fullscreen-overlay">
         <button class="back-button" onclick="closeFullscreen()">Back</button>
         <img src="" alt="Full Screen Image" class="fullscreen-image">
     </div>
     <script>
         function searchContent() {
             const searchTerm = document.getElementById('searchInput').value.toLowerCase();
             const articles = document.querySelectorAll('article');
             articles.forEach(article => {
                 const category = article.dataset.category; // Retrieve data-category
                 if (category.includes(searchTerm)) { // If heading includes search
                     article.style.display = 'block';    // Show the article
                 } else {
                     article.style.display = 'none';     // Hide the article
                 }
             });
         }
         // Function to open the fullscreen overlay
         document.querySelectorAll('.gallery img').forEach(image => {
             image.addEventListener('click', function () {
                 const overlay = document.querySelector('.fullscreen-overlay');
                 const fullImg = document.querySelector('.fullscreen-image');
                 fullImg.src = this.src;
                 overlay.style.display = 'flex';
             });
         });
         // Function to close the fullscreen overlay
         function closeFullscreen() {
             document.querySelector('.fullscreen-overlay').style.display = 'none';
         }
     </script>
 </body>
 </html>
