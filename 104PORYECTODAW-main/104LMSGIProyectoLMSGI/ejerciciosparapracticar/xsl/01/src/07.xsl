<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">
 
    <xsl:output method="html" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:include href="../../../unidad5/lib/libreriahtml.xsl"/>
 
    <xsl:template match="/prediccion" mode="#all">
       <!-- <xls:element name='img'>
       <xsl:attribute name="src" select="{concat('images/',valor,'.gif')}"
        -->
       <!-- Usar <img src"{concat('images/',valor,'.gif')}" para las imagenes -->
      <html>
      <head>
         <xsl:call-template name="meta">
               <xsl:with-param name="titulo" select="'07 Alvaro Garcia'"/>
         </xsl:call-template>
      </head>
      <body>
         <header>
            <h1>Prediccion por municipios</h1>
         </header>
         <main>
            <table>
               <caption>EL TIEMPO . <xsl:value-of select="concat(upper-case(municipio/nombre)
               ,'(',upper-case(municipio/provincia),')')"/>
               </caption>
            <thead>
               <th>dia</th>
               <th>Prob. precip</th>
               <th>Estado del cielo</th>
               <th>Temperatura(°C)</th>
               <th>Viento (km/h)</th>
            </thead>
            <tbody>
               <xsl:for-each select="dia">
               <tr>
                  <td><xsl:value-of select="substring(@fecha,9,2)"/></td><!-- Del att fecha empieza a coger desde el caracter 9
                  y coge 2 caracteres incluido el 9 -->
                  <td><xsl:value-of select="prob_precipitacion"/></td>
                  <td><img src="{concat('images/', estado_cielo, '.gif')}" alt="{@descripcion}"/></td>
                  <td><xsl:value-of select="temperatura/minima"/><xsl:text>/</xsl:text><xsl:value-of select="temperatura/maxima"/></td>
                  <td><img src="{concat('images/', viento/direccion, '.gif')}" alt="{viento/direccion}"/><xsl:text> </xsl:text><xsl:value-of select="viento/velocidad"/></td>
               </tr>
               </xsl:for-each>
            </tbody>
         </table>
         </main>
      </body>
         
      </html>
         
     
 
    </xsl:template>
 
   
 
</xsl:stylesheet>