<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent='yes'/>
    <xsl:template match="/">
        <books>
            <xsl:for-each select="/Library/books/book">
                
                <xsl:variable name="author">
                    <xsl:value-of select="@author_id"/>
                </xsl:variable>
                
                <xsl:variable name="publishing_house">
                    <xsl:value-of select="@publishing_house_id"/>
                </xsl:variable>
                                
                    <book> 
                        <nameOfBook><xsl:value-of select="book_title"/></nameOfBook>
                        <genreOfBook><xsl:value-of select="genre"/></genreOfBook>
                        <pages><xsl:value-of select="pages"/></pages>
                        <language><xsl:value-of select="language"/></language>             
                        <author>
                            <first_name><xsl:value-of select="//author[@author_id=$author]/name/first_name"/></first_name>
                            <last_name><xsl:value-of select="//author[@author_id=$author]/name/last_name"/></last_name>
                        </author>
                        <publishing_house>
                            <publishing_house_name><xsl:value-of select="//publishing_house[@publishing_house_id=$publishing_house]/publishing_house_name"/></publishing_house_name>
                        </publishing_house>
                    </book>
            </xsl:for-each>
        </books>
    </xsl:template>
</xsl:stylesheet>
