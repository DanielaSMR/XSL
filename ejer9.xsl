<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="utf-8"/>
    <xsl:variable name="similar">
        <xsl:value-of select="//producto[@codigo = 'P2']/peso/@unidad"/>
    </xsl:variable>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejer9</title>
            </head>
            <body>
                <h2>Ejer9</h2>
                <h3>Listado de productos con la unidad de peso en <xsl:value-of select="//producto/peso[@unidad = $similar]/@unidad"/></h3>
                <p>Hay un total de <xsl:value-of select="count(//producto/peso[@unidad = $similar])"/> productos</p>
                        <ol>
                            <xsl:for-each select="//producto">
                                <xsl:if test="peso/@unidad = $similar">
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
                        </ol>
            </body>
        </html>
        
    </xsl:template>

</xsl:stylesheet>