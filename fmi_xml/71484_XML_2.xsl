<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent='yes'/>
    <xsl:template match="/">
        <authors>
            <xsl:for-each select="/Library/authors/author">
                             
                <author> 
                    <authorFirstName><xsl:value-of select="name/first_name"/></authorFirstName>
                    <authorLastName><xsl:value-of select="name/last_name"/></authorLastName>
                    <nationality><xsl:value-of select="nationality"/></nationality>
                    <authorAge><xsl:value-of select="age"/></authorAge>   
                    <authorGender><xsl:value-of select="gender"/></authorGender>
                </author>
            </xsl:for-each>
        </authors>
    </xsl:template>
</xsl:stylesheet>
