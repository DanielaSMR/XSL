<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejer5</title>
            </head>
            <body>
                <h2>Ejer5</h2>
                    <table border="1">
                    <caption><h2>Resultados</h2></caption>
                    <xsl:for-each select="inventario/producto">
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
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>