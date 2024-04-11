<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>hola</title>
                <link rel="stylesheet" href="ejer1.css"/>
            </head>
    
            <body>
                <xsl:for-each match="ciudad">
                    <h2>
                        <xsl:value-of select="./nombre"/>
                    </h2>
                    <xsl:choose>
                        <xsl:when test="./habitantes&lt;800000">
                            <p>
                                menos de 800000 habitantes
                            </p>
                        </xsl:when>
                        <xsl:when test="./habitantes>=800000">
                            <p>
                                mas de 800000 habitantes
                            </p>
                        </xsl:when>
                    </xsl:choose>
                    <p>
                        <xsl:value-of select="./habitantes"/>
                    </p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>