<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:preserve-space elements="*"/>
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>
          <xsl:value-of select="rss/channel/title"/>
        </title>
        <style>

body {
    background-image: url('img/wpmusic.jpg');
    background-position: center;
    background-size: contain;
    background-repeat: repeat;
    font-family: 'PrintClearly', Arial, sans-serif;
    background-color: #ffffff;
}
#container {
    background-color: #ffffff;
    width: 800px;
    margin: auto;
    padding: 10px 30px 50px 30px;
    box-shadow: 0px 0px 600px grey;
    border-radius: 25px;
    border: 4px solid grey;
    opacity: 0.9;
}
div.texto{
    margin: auto;
    text-align: center;
    width: 500px;
}
#lista {
    margin: auto;
    overflow: auto;
    padding-inline: 50px;
}

#titulo {
    text-align: center;
}

h1 {
    font-size: 80px;
    text-shadow: 1px 1px 3px black, 0 0 25px grey, 0 0 10px #ffff;
    font-family: Georgia, serif;

}

h2 {
    color: whitesmoke;
    text-shadow: 4px 4px 8px black, 0 0 25px grey, 0 0 10px #000;
    font-size: 30px;

}

h3 {
    color: whitesmoke;
    text-shadow: 2px 2px 4px black, 0 0 25px grey, 0 0 10px #000;
    font-size: 20px;
    text-align: center;

}

ul {
    list-style-type: none;
    display: inline;
    margin: auto;
}


ul li {
    padding-left: left;
    font-size: 14px;
    text-align: left;
}

p{
    text-align: center;
}
a:link {
    background-color: orange;
    color: #ffff;
    border-radius: 25px;
    padding: 5px 10px;
    text-align: left;
    text-decoration: none;
    display: inline-block;

}

a:visited {
    color: green;
}

a:hover {
    color: #000;
    font-weight: bold;
}

a:active {
    color: red;
}
#footer {
    font-size: 10px;
    text-align: center;
    padding: auto;
    margin-top: 40px;
    text-shadow: 1px 1px 2px grey;

    font-family: "Courier New", monospace;
    color: black;
    background-color: white;
    border-radius: 25px;
}
        </style>
      </head>
      <body>
        <div id="container">
          <h1>
            <xsl:value-of select="rss/channel/title"/>
          </h1>
          <xsl:apply-templates select="//item"/>
          <xsl:template match="item">
            <div class="texto">
              <h2>
                <a href="{link}">
                  <xsl:value-of select="title"/>
                </a>
              </h2>
              <p>
                <xsl:value-of select="pubDate"/>
              </p>
              <p>
                <xsl:value-of select="description"/>
              </p>
              <p>
                <a href="{enclosure/@url}">Escolta l'àudio</a>
              </p>
            </div>
          </xsl:template>
        </div>
      </body>
    </html>
  </xsl:template>


</xsl:stylesheet>
