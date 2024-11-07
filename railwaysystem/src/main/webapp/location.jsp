<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Explore Odisha</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #333;
        }

        .location-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            max-width: 1000px;
            margin-top: 20px;
        }

        .location-card {
            position: relative;
            width: 300px;
            height: 200px;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            cursor: pointer;
            transition: transform 0.3s;
        }

        .location-card:hover {
            transform: scale(1.05);
        }

        .location-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .location-card .location-info {
            position: absolute;
            bottom: 0;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            width: 100%;
            padding: 10px;
            text-align: center;
            font-size: 1.2em;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <h1>Explore Odisha</h1>
    <p>Select a location you want to explore:</p>
    <div class="location-container">
        <div class="location-card">
            <img src="puri.jpg" alt="Puri">
            <div class="location-info">Puri - Jagannath Temple</div>
        </div>
        <div class="location-card">
            <img src="konark.jpg" alt="Konark">
            <div class="location-info">Konark - Sun Temple</div>
        </div>
        <div class="location-card">
            <img src="chilika.jpg" alt="Chilika Lake">
            <div class="location-info">Chilika Lake</div>
        </div>
        <div class="location-card">
            <img src="bhitarkanika.jpg" alt="Bhitarkanika">
            <div class="location-info">Bhitarkanika National Park</div>
        </div>
        <div class="location-card">
            <img src="similipal.jpg" alt="Similipal">
            <div class="location-info">Similipal National Park</div>
        </div>
        <div class="location-card">
            <img src="cuttack.jpg" alt="Cuttack">
            <div class="location-info">Cuttack - Barabati Fort</div>
        </div>
        <!-- Add more location cards as needed -->
    </div>

</body>
</html>
