<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />   
    <xsl:template match="/">
        <inventario>
            <xsl:if test="//producto/lugar/aula = 6">
                <producto>
                <xsl:copy-of select="//producto/nombre"/>
                </producto>
            </xsl:if>
        </inventario>
        <!--Otra solucion  
            <inventario>
            <xsl:if test="//producto/lugar/aula = 6">
                <producto>
                    <nombre><xsl:value-of select="//producto/nombre"/></nombre>
                </producto>
            </xsl:if>
        </inventario>-->
    </xsl:template>
</xsl:stylesheet>