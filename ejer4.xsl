<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8"/>
    <xsl:template match="/">
        <inventario>
            <xsl:apply-templates/>
        </inventario>
    </xsl:template>

    <xsl:template match="producto[lugar/@edificio = 'B']">
        <xsl:copy-of select="."/>
    </xsl:template>

    <!--Otra manera de solucionarlo
        <inventario>
            <xsl:for-each select="//producto">
                <xsl:if test="lugar/@edificio='B'">
                    <xsl:copy-of select="."/>
                </xsl:if>
            </xsl:for-each>
        </inventario>
    -->
</xsl:stylesheet>