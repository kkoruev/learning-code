<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/">
        
        <xsl:for-each select="//author">
                        
            <xsl:text>Име на автор: </xsl:text>
            <xsl:value-of select="name/first_name"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="name/last_name"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Националност: </xsl:text>
            <xsl:value-of select="nationality"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Възраст: </xsl:text>
            <xsl:value-of select="age"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Пол: </xsl:text>
            <xsl:value-of select="gender"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>