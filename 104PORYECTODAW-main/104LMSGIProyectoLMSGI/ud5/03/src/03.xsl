<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/listatickets">
    <html>
        <head>
            <title>3 XSLT Tickets Nombre y apellidos.</title>
            <meta charset="UTF-8"/>
            <link rel="stylesheet" href="css/estilos.css"/>
        </head>
        <body>
            <header>
                <h1>Información de tickets</h1>
                <h2>Listado de tickets</h2>
            </header>
            <main>
                <xsl:apply-templates select="ticket"/>
            </main>
            <footer>
                <div>
                    NÚMERO DE TICKETS:
                    <xsl:value-of select="count(//ticket)"/>
                </div>
                <div>
                    TOTAL DE TICKETS:
                    <xsl:value-of select="sum(//ticket/total)"/>
                </div>
            </footer>
        </body>
    </html>
    </xsl:template>
    <xsl:template match="ticket">
        <h3>Tickets: <xsl:value-of select="numero"/></h3>
        <table>
        <caption>
            Fecha del ticket 
            <xsl:value-of select="fecha"/>
        </caption>
        <thead>
            <tr>
                <th>Producto</th>
                <th>Precio</th>
            </tr>
        </thead>
        <tbody>

            <xsl:for-each select="producto">
                <tr>
                    <td>
                        <xsl:value-of select="nombre"/>
                    </td>
                    <td>
                        <xsl:value-of select="precio"/>
                    </td>
                </tr>
            </xsl:for-each>
        </tbody>
        <tfoot>
            <tr>
                <th>Total</th>
                <th>
                    <xsl:value-of select="total"/>
                </th>
            </tr>
        </tfoot>
        </table>
    </xsl:template>
</xsl:stylesheet>