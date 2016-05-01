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
                <table cellpadding="5" >
                    
                    <tr>
                        <th><font size="4" face="Comic Sans MS"><u>Име на автор</u></font></th>
                        <th><font size="4" face="Comic Sans MS"><u>E-mail</u></font></th>
                        <th><font size="4" face="Comic Sans MS"><u>Националност</u></font></th>
                        <th><font size="4" face="Comic Sans MS"><u>Пол</u></font></th>
                        <th><font size="4" face="Comic Sans MS"><u>Години</u></font></th>
                    </tr>
                    
                    <xsl:for-each select="Library/authors/author">                       
                        <tr>
                            
                            <td>
                                <font size="3" face="Comic Sans MS"><xsl:value-of select="name/first_name"/></font>
                                <xsl:text> </xsl:text>
                                <font size="3" face="Comic Sans MS"><xsl:value-of select="name/last_name"/></font>
                            </td>
                            <td><font size="3" face="Comic Sans MS"><xsl:value-of select="email"/></font></td>
                            <td><font size="3" face="Comic Sans MS"><xsl:value-of select="nationality"/></font></td>
                            <td><font size="3" face="Comic Sans MS"><xsl:value-of select="gender"/></font></td>      
                            <td><font size="3" face="Comic Sans MS"><xsl:value-of select="age"/></font></td>
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