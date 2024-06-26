<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejer2</title>
            </head>
            <body>
                <h2>Ejer2</h2>
                <ul>
                    <xsl:for-each select="inventario/producto">
                    <xsl:choose>
                    <xsl:when test="lugar[aula = 6] and lugar[@edificio = 'A']">
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
                    </xsl:when>
                    </xsl:choose>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
        <!-- Resultado en xml
        <inventario>
            <xsl:copy-of select="producto[lugar/@edificio = 'A'] and lugar[aula = 6]"/>
        </inventario>-->
    </xsl:template>
</xsl:stylesheet>