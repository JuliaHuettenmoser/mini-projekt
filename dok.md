# Mini Projekt

### Directory erstellen
Directory erstellen und in dieses wechseln
``` 
mkdir webserver
cd webserver 
```

### HTML und CSS Datei erstellen und Code einfügen

```
nano index.html

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Portfolio Julia Hüttenmoser</title>
</head>
<body>

    <h1 class="neon">
        <a href="about.html" class="about">Ab<span class="delay1">o</span>ut</a>
        <br> <a href="projects.html" class="projects">Proj<span class="delay2">e</span>cts</a>
        <br> <a href="skills.html" class="skills">Ski<span class="delay3">l</span>ls</a>
    </h1>
<!-------------- Javascript---------------->
    <script src="js/app.js"></script>
</body>
</html>

nano style.css

/*general*/

@font-face {
  font-family: "neon-tubes";
  src: url("/oft/NeonTubes2.otf");
}

body{
  background-color:black;
  font-family: "neon-tubes";
  height: 100hv;
  justify-content: center;
  overflow-x: hidden;
}


```

### Dockerfile erstellen
 ```
nano dockerfile

FROM nginx
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
EXPOSE 8080
```

### Image aus Dockerfile erstellen

```
docker build -t my-webserver-image .
```

### Container aus Image starten
 
 ```
 docker run -p 8080:80 my-webserver-image
 ```


 ### Website
 Jetzt kann man auf localhost die Webseite aufrufen:

 ```
 http://localhost:8080
 ```
