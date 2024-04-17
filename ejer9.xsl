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
                <xsl:for-each select="//producto">
                    <xsl:if test="peso/@unidad = $similar">
                        <ul>
                            
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
                            <!--<xsl:apply-templates select="//producto"/>-->
                        </ul>
                    </xsl:if>
                </xsl:for-each>
                
            </body>
        </html>
        
    </xsl:template>

    <!--<xsl:template match="producto">
        <li><xsl:value-of select="nombre"/></li>
    </xsl:template>-->
</xsl:stylesheet>