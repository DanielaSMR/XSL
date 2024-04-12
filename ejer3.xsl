<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejer3</title>
            </head>
            <body>
                <h2>Ejer3</h2>
                <ul>
                    <xsl:for-each select="inventario/producto">
                    <xsl:if test="peso[@unidad = 'kg'] and peso > 7 or peso[@unidad = 'g'] and peso > 7000">
                    <li>
                        Elemento <xsl:value-of select="@codigo"/>
                    </li>
                    <ul>
                        <li>
                            Nombre: <xsl:value-of select="nombre"/>
                        </li>
                        <li>
                            Peso: <xsl:value-of select="peso"/> <xsl:value-of select="peso/@unidad"/> 
                        </li>
                    </ul>
                    </xsl:if>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>