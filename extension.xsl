<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>EjerExtension</title>
                <style type="text/css">
                    td.mayor{background-color:#ff887d}
                    td.igual{background-color:#7de5ff}
                    td.menor{background-color:#8fff93}
                </style>
            </head>
            <body>
                <h2>EjerExtra</h2>
                <table border="1">
                    <xsl:for-each select="//producto[lugar/@edificio = 'A']">
                    <tr>
                    <xsl:choose>
                        <xsl:when test="((peso/@unidad = 'kg') and (peso &lt; 7)) or ((peso/@unidad = 'g') and (peso &lt; 7000))">
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <td class="menor">
                                <xsl:value-of select="peso"/>
                            </td>
                            <td>
                                <xsl:value-of select="lugar/@edificio"/>
                                <xsl:value-of select="lugar/aula"/>
                            </td>
                        </xsl:when>
                        <xsl:when test="((peso/@unidad = 'kg') and (peso = 7)) or ((peso/@unidad = 'g') and (peso = 7000))">
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <td class="igual">
                                <xsl:value-of select="peso"/>
                            </td>
                            <td>
                                <xsl:value-of select="lugar/@edificio"/>
                                <xsl:value-of select="lugar/aula"/>
                            </td>
                        </xsl:when>
                        <xsl:when test="((peso/@unidad = 'kg') and (peso > 7)) or ((peso/@unidad = 'g') and (peso > 7000))">
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <td class="mayor">
                                <xsl:value-of select="peso"/>
                            </td>
                            <td>
                                <xsl:value-of select="lugar/@edificio"/>
                                <xsl:value-of select="lugar/aula"/>
                            </td>
                        </xsl:when>
                    </xsl:choose>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>