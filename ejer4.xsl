<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <inventario>
            <xsl:apply-templates/>
        </inventario>
    </xsl:template>

    <xsl:template match="producto[lugar/@edificio = 'B']">
        <xsl:copy-of select="."/>
    </xsl:template>
</xsl:stylesheet>