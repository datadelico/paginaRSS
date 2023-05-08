<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="utf-8" indent="yes"/>
  <xsl:preserve-space elements="*"/>
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>
          <xsl:value-of select="rss/channel/title"/>
        </title>
        <link rel="stylesheet" type="text/css" href="styles.css"/>
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
