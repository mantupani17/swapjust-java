<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : product.xsl
    Created on : January 26, 2017, 11:05 AM
    Author     : mantu
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" omit-xml-declaration="no" indent="yes" doctype-system="DTD/xhtml1-strict.dtd" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="product">
        
        <html xmlns = "http://www.w3.org/1999/xhtml" xml:lang = "en" lang="en">
            <head>
                <title>
                    <xsl:value-of select = "Product" />
                </title>
            </head>
            <body>
                <table>
                    <tr>
                        <td>Product Code:</td>
                        <td><xsl:value-of select="product_code"/></td>
                    </tr>
                    <tr>
                        <td>Product name:</td>
                        <td><xsl:value-of select="product_name"/></td>
                    </tr>
                    <tr>
                        <td>Quantity:</td>
                        <td>
                            <xsl:value-of select="Quantity"/>
                        </td>
                    </tr>
                    <tr>
                        <td>MRP:</td>
                        <td><xsl:value-of select="mrp"/></td>
                    </tr>
                    <tr>
                        <td>Discount</td>
                        <td><xsl:value-of select="discount"/></td>
                    </tr>
                    <tr>
                        <td>
                            <form>
                                <input type="submit" value="AddtoCart" />
                            </form>
                        </td>
                        <td>
                            <form>
                                <input type="submit" value="view Cart"/>
                            </form>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
