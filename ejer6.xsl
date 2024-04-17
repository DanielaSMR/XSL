<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejer6</title>
            </head>
            <body>
                <h2>Ejer6</h2>
                <h3>Tabla A</h3>
                    <table border="1">
                        <xsl:for-each select="inventario/producto">
                        <!--Otra solucion xsl <xsl:for-each select="producto[lugar/@edificio = A]
                            Tambien meter todo lo de la tabla en un templeate 
                            para solo tener que llamar con una linea en cada una de estas">-->
                        <xsl:if test="lugar[@edificio = 'A']">
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
                <h3>Tabla B</h3>
                    <table border="1">
                        <xsl:for-each select="inventario/producto">
                        <xsl:if test="lugar[@edificio = 'B']">
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