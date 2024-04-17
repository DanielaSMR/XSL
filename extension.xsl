<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>EjerExtension</title>
            </head>
            <body>
                <h2>EjerExtra</h2>
                <table border="1">
                    <xsl:for-each select="inventario/producto/lugar[@edificio = 'A']">
                    <xsl:choose>
                    <xsl:when test="peso[@unidad = 'kg'] and peso &lt; 7 or peso[@unidad = 'g'] and peso &lt; 7000">
                        <tr style="background-color:#33475b">
                            <xsl:apply-template name="//producto"/>
                        </tr>
                    </xsl:when>
                    <xsl:when test="peso[@unidad = 'kg'] and peso = 7 or peso[@unidad = 'g'] and peso = 7000">
                        <tr style="background-color:#33475b">
                            <xsl:apply-template name="//producto"/>
                        </tr>
                    </xsl:when>
                    <xsl:when test="peso[@unidad = 'kg'] and peso > 7 or peso[@unidad = 'g'] and peso > 7000">
                        <tr  style="background-color:#33475b">
                            <xsl:apply-template name="//producto"/>
                        </tr>
                    </xsl:when>
                    </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="producto">
        <td>
            <xsl:value-of select="producto/nombre"/>
        </td>
        <td>
            <xsl:value-of select="producto/peso"/>
        </td>
        <td>
            <xsl:value-of select="producto/lugar/@edificio"/>
            <xsl:value-of select="producto/lugar/aula"/>
        </td>
    </xsl:template>
</xsl:stylesheet>