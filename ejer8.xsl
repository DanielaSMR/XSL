<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejer8</title>
            </head>
            <body>
                <h2>Ejer8</h2>
                <table border="1">
                    <xsl:for-each select="inventario/producto">
                    <xsl:if test="lugar[@edificio = 'A'] and peso[@unidad = 'kg'] and peso &lt; 7 or peso[@unidad = 'g'] and peso &lt; 7000">
                    <tr>
                        <td>
                            <xsl:value-of select="nombre"/>
                        </td>
                        <td>
                            <xsl:value-of select="peso"/>
                        </td>
                        <td>
                            <xsl:value-of select="lugar/@edificio"/>
                            <xsl:value-of select="lugar/aula"/>
                        </td>
                    </tr>
                    </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>