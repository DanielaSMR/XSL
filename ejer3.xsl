<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8"/>
    <xsl:template match="/">
        <inventario>
            <xsl:apply-templates/>
        </inventario>
    </xsl:template>

    <xsl:template match="producto[peso >= 7 and peso/@unidad = 'kg']">
        <xsl:copy-of select="."/>
    </xsl:template>

    <xsl:template match="producto[peso >= 7000 and peso/@unidad = 'g']">
        <xsl:copy-of select="."/>
    </xsl:template>
</xsl:stylesheet>