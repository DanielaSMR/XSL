<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejer2</title>
            </head>
            <body>
                <xsl:when test="./inventario/producto/lugar/@edificio = 'A' and ./inventario/producto/lugar/aula = 6" >
                <p>
                    <xsl:value-of select="./inventario/producto"/>
                </p>
            </xsl:when>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>