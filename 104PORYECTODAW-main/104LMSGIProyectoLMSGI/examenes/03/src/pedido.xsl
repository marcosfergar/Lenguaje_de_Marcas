<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <!-- Plantilla que dado una fecha la escribe en otro formato -->
    <xsl:template match="pedido/@fecha">
        <xsl:variable name="anio" select="substring(., 1, 4)"/>
        <xsl:variable name="mes" select="substring(., 6, 2)"/>
        <xsl:variable name="dia" select="substring(., 9, 2)"/>
        <xsl:value-of select="$dia"/> de
        <xsl:choose>
            <xsl:when test="$mes='01'">enero</xsl:when>
            <xsl:when test="$mes='02'">febrero</xsl:when>
            <xsl:when test="$mes='03'">marzo</xsl:when>
            <xsl:when test="$mes='04'">abril</xsl:when>
            <xsl:when test="$mes='05'">mayo</xsl:when>
            <xsl:when test="$mes='06'">junio</xsl:when>
            <xsl:when test="$mes='07'">julio</xsl:when>
            <xsl:when test="$mes='08'">agosto</xsl:when>
            <xsl:when test="$mes='09'">septiembre</xsl:when>
            <xsl:when test="$mes='10'">octubre</xsl:when>
            <xsl:when test="$mes='11'">noviembre</xsl:when>
            <xsl:when test="$mes='12'">diciembre</xsl:when>
        </xsl:choose> de <xsl:value-of select="$anio"/>
    </xsl:template>

    <xsl:template match="/pedido" mode="#all">
      <html>
      <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="author" content="Marcos Fernandez Garcia"/>
        <meta name="keywords" content="html, css, xslt, xml"/>
        <meta name="robots" content="index, follow"/>
        <meta charset="utf-8"/>
        <link rel="stylesheet" href="./css/estilos.css" />        
      </head>
      <body>
         <header>
            <h1>Pedido ID:<xsl:value-of select="@idPedido"/></h1>
         </header>
            <h2> Fecha: <xsl:apply-templates select="@fecha"/>

            </h2>
            <h3>
            Fabricante:
            <select>
                <option>Todos</option> 
                <xsl:for-each select="pedido/tractor/@codigoFabricante">
                    <option>
                    <xsl:value-of select="."/>
                </option>
                </xsl:for-each>
                 

            </select>
            </h3>
         <main>
         <div id="principal">
                <img id="fotof" src="{concat('images/', tractor/@codigoFabricante, '.png')}" alt="codigo fabricante"/> 

                <div id="texto">              
                <h2>Fabricante:<xsl:value-of select="./tractor/@codigoFabricante"/> Jhon Deere</h2>
                </div>
            <table>
            <thead>
               <th>
                    <td>Referencia</td>
                    <td>Descripcion</td>
                    <td>Fecha Entrega</td>
                    <td>Peso</td>
                    <td>Numero de serie</td>
                    <td>Km Maximos</td>
                    <td>Cantidad</td>
               </th>
            </thead>
            <tbody>
               <xsl:for-each select="tractor/componente">
               <tr>
               <td>
               <img src="{concat('images/', @referencia, '.png')}"/>
               </td>
               <td>
                <xsl:value-of select="@referencia"/>
               </td>

               <td>
               </td>

               <td>
                   <xsl:value-of select="fechaEntrega/@mes"/>-<xsl:value-of select="fechaEntrega/@anio"/>
               </td>

               <td>
                    <xsl:value-of select="peso"/>g
               </td>
               <td>
                    <xsl:value-of select="numeroSerie"/>
               </td>

               <td>
                    <xsl:value-of select="kmMaximos"/>
               </td>

               <td>
                    <xsl:value-of select="cantidad"/>
               </td>
               </tr>
               </xsl:for-each>
            </tbody>
         </table>
         </div>
         </main>
      </body>
         
      </html>             
    </xsl:template>
    <!-- Plantilla que dado un pedido lo escribe en una tabla -->

    </xsl:stylesheet>
