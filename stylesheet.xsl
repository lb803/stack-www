<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
		xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
  <xsl:template match = "/"> 
    <html>
      <head>
        <title>Stack</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
      </head>
      <body> 
        <nav>
          <strong>Stack</strong>
        </nav>

        <table> 
          <xsl:for-each select="stack/entry"> 
            <tr> 
              <td class="counter"><xsl:value-of select="position()" />.</td> 
              <td class="title">
                <xsl:element name="a">
                  <xsl:attribute name="href">
                    <xsl:value-of select="link" />
                  </xsl:attribute>
                  <xsl:value-of select="title" />
                </xsl:element>
                <span class="type gray"> (<xsl:value-of select="type" />)</span>
              </td>
            </tr>
            <tr>
              <td></td>
              <td>
                <small class="gray">
                <xsl:value-of select="date" />
                </small>
              </td>
            </tr>
          </xsl:for-each> 
        </table>

        <footer class="gray">
          Credits: Luca Baffa | Code:
          <a class="gray" href="https://github.com/lb803/stack-www">GitHub</a>
        </footer>

      </body> 
    </html> 
  </xsl:template>  
</xsl:stylesheet>
