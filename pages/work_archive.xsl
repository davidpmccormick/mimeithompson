<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<div class="row submenu">
		<ul class="span6">
			<li><a href="{$root}/work">recent work</a></li>
			<li class="active"><a href="{$root}/work/archive">archive</a></li>
		</ul>
	</div>
	<div class="row mainfade">
		<xsl:apply-templates select="collections/entry" /> <!-- below -->
	</div>
</xsl:template>

<xsl:template match="collections/entry">
	<div class="span3 workcontainer archive">
		<xsl:if test="position() mod 4 = 1">
			<xsl:attribute name="style"><xsl:text>clear:left;</xsl:text></xsl:attribute>
		</xsl:if>
		<div class="frame relative">
			<a href="{$root}/work/archive/collection/{title/@handle}">
				<div class="descriptioncontainer">
					<div class="descriptioninner"></div>
				</div>
			</a>
			<a href="{$root}/work/archive/collection/{title/@handle}">
				<img src="{$root}/image/2/288/178/5/assets/images/{cover-artwork/filename}" width="100%" />
			</a>
		</div>
		<h2><xsl:value-of select="title" /></h2>
	</div>
</xsl:template>

</xsl:stylesheet>