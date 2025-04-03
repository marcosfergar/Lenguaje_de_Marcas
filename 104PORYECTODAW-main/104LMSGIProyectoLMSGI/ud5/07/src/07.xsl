<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" expand-text="yes" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/prediccion" mode="#all">
        <!--  Autor.- Marcos Fernandez  -->
        <!--  Fecha.- Viernes 21 de febrero de 2025  -->
        <!--  Descripción.-Predicciíon  -->
        <html>
            <head>
                <title>7 XSLT -  Marcos Fernandez</title>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <header>
                    <h1>Predicción por municipios</h1>
                </header>
                <main>
                    <table>
                        <caption>
                            EL TIEMPO.
                            <xsl:value-of select="upper-case(municipio/nombre),' '"/>
                            (
                            <xsl:value-of select="upper-case(municipio/provincia)"/>
                            )
                        </caption>
                        <xsl:call-template name="encTabla"/>
                        <xsl:apply-templates select="dia"/>
                    </table>
                </main>
            </body>
        </html>
    </xsl:template>
    <xsl:template name="encTabla">
        <tr>
            <th>Dia</th>
            <th>Prob. precip.</th>
            <th>Estado del cielo</th>
            <th>Temperatura (ºC)</th>
            <th>Viento (Km/h)</th>
        </tr>
    </xsl:template>
    <xsl:template match="dia">
        <tr>
                                    <!--  substring-after para recuperar solo el día  -->
                                    <td>
                                        <xsl:value-of select="substring-after(substring-after(@fecha, '-'), '-')"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="concat(prob_precipitacion,'%')"/>
                                    </td>
                                    <td>
                                                <img src="concat('../target/images/',{estado_cielo},'.gif')" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>                                                                                                                        
                                    </td>
                                    <td>
                                        <span class="minima">
                                            <xsl:value-of select="temperatura/minima"/>
                                        </span>
                                        <xsl:text>/</xsl:text>
                                        <span class="maxima">
                                            <xsl:value-of select="temperatura/maxima"/>
                                        </span>
                                    </td>
                                    <td>

                                        <img src="'../target/images/',{viento/direccion},'.gif'" alt="{viento/direccion}" title="{viento/direccion}"/>
                                        <xsl:text> </xsl:text>
                                        <xsl:value-of select="viento/velocidad"/>
                                    </td>
                                </tr>
    </xsl:template>
</xsl:stylesheet>