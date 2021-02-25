<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body>
      <table border="1">
        <tr>
          <th>nom</th>
          <th>prenom</th>
          <th>adresse</th>
          <th>telephones</th>
          <th>emails</th>
        </tr>
         <xsl:for-each select="/repertoire/personne[position()=2]">
        <!-- <xsl:for-each select="/repertoire/personne[count(telephones/telephone)>1]"> -->
        <!-- <xsl:for-each select="/repertoire/personne"> -->
        <!-- <xsl:for-each select="/repertoire/personne[adresse/ville='Marrakech'][position()=2]"> -->
       <!-- <xsl:for-each select="/repertoire/personne[@sexe='masculin'][adresse/ville='Fes']"> -->
          <tr>
          <td><xsl:value-of select="nom"/></td>
          <td><xsl:value-of select="prenom"/></td>
          <td><xsl:value-of select="adresse"/></td>
          <td><xsl:value-of select="telephones"/></td>
          <td><xsl:value-of select="emails"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>