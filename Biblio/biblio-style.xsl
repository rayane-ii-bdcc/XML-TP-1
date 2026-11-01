<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                
            </head>
            <body>
                <h1>Ma bibliothèque</h1>
                <xsl:for-each select="biblio/etudiant">
                    <ul>
                        <li>Code: <xsl:value-of select="@code"/></li>
                        <li>Nom: <xsl:value-of select="@nom"/></li>
                        <li>Age: <xsl:value-of select="@age"/></li>
                    </ul>
                    <h3>Livres :</h3>
                    
                    <table border="1" width="90%">
                        <tr>
                            <th>ID</th>
                            <th>Titre</th>
                            <th>Date d'emprunt</th>
                            <th>Rendu</th>
                        </tr>
                        <xsl:for-each select="livre[@rendu='non']">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="@titre"/></td>
                            <td><xsl:value-of select="@dateEmprunt"/></td>
                            <td><xsl:value-of select="@rendu"/></td>
                        </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
            </body>
        </html>        
    </xsl:template>
</xsl:stylesheet>