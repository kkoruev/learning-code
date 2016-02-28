<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/">
        
        <xsl:for-each select="//book">
            <xsl:variable name="author">
                <xsl:value-of select="@author_id"/>
            </xsl:variable>
            
            <xsl:variable name="publishing_house">
                <xsl:value-of select="@publishing_house_id"/>
            </xsl:variable>
            
            <xsl:text>Име на книга: </xsl:text>
            <xsl:value-of select="book_title"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Жанр на книга: </xsl:text>
            <xsl:value-of select="genre"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Страници: </xsl:text>
            <xsl:value-of select="pages"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Език на книгата: </xsl:text>
            <xsl:value-of select="language"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Автор: </xsl:text>
            <xsl:value-of select="//author[@author_id=$author]/name/first_name"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="//author[@author_id=$author]/name/last_name"/> 
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Издателска къща: </xsl:text>
            <xsl:value-of select="//publishing_house[@publishing_house_id=$publishing_house]/publishing_house_name"/>
            <xsl:text>&#10;</xsl:text>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>