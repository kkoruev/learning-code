<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
    <xsl:template match="/">
        <html>
            <head>
                <title>VideoLibrary</title>
            </head>
            <body background="23.jpg" text="#8C1717">
                <h1 align="center"><font size="7"></font></h1>

                <br></br><br></br><br></br>
                <table cellpadding="10" >
                    
                    <tr>
                        <th><font size="4" face="Comic Sans MS"><u>Име на книга</u></font></th>
                        <th><font size="4" face="Comic Sans MS"><u>Име на автор</u></font></th>
                        <th><font size="4" face="Comic Sans MS"><u>Име на издателска къща</u></font></th>
                        <th><font size="4" face="Comic Sans MS"><u>Жанр</u></font></th>
                        <th><font size="4" face="Comic Sans MS"><u>Брой страници</u></font></th>
                        <th><font size="4" face="Comic Sans MS"><u>Език</u></font></th>
                    </tr>
                    
                    <xsl:for-each select="Library/books/book">
                        <xsl:variable name="author">
                            <xsl:value-of select="@author_id"/>
                        </xsl:variable>

                        <xsl:variable name="publishing_house">
                            <xsl:value-of select="@publishing_house_id"/>
                        </xsl:variable>

                        
                        <tr>
                            
                            <td><font size="3" face="Comic Sans MS"><xsl:value-of select="book_title"/></font></td>
                            <td><font size="3" face="Comic Sans MS">
                                <xsl:value-of select="//author[@author_id=$author]/name/first_name"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="//author[@author_id=$author]/name/last_name"/> 
                            </font>
                            </td>
                            
                            <td><font size="3" face="Comic Sans MS">
                                
                                <xsl:value-of select="//publishing_house[@publishing_house_id=$publishing_house]/publishing_house_name"/>
                                 
                            </font>
                            </td>
                            <td><font size="3" face="Comic Sans MS"><xsl:value-of select="genre"/></font></td>
                            <td><font size="3" face="Comic Sans MS"><xsl:value-of select="pages"/></font></td>
                            <td><font size="3" face="Comic Sans MS"><xsl:value-of select="language"/></font></td>                            
                        </tr>
                        
                       
                        
                        <tr>
                            <td> &#160;
                            </td>
                        </tr>
                    </xsl:for-each>                        
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>



