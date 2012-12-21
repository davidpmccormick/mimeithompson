<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<div class="row submenu">
		<ul class="span6">
			<li class="active"><a href="{$root}/work">recent work</a></li>
			<li><a href="{$root}/work/archive">archive</a></li>
		</ul>
	</div>
	<div class="row mainfade">
		<xsl:apply-templates select="recentwork/entry/artwork/item" /> <!-- below -->
	</div>
</xsl:template>

<xsl:template match="recentwork/entry/artwork/item">
	<div class="span3 workcontainer archive">
		<xsl:if test="position() mod 4 = 1">
			<xsl:attribute name="style"><xsl:text>clear:left;</xsl:text></xsl:attribute>
		</xsl:if>
		<div class="frame relative">
			<a href="{$root}/work/view/{title/@handle}">
				<div class="descriptioncontainer">
					<div class="descriptioninner"></div>
				</div>
			</a>
			<a href="{$root}/work/view/{title/@handle}">
				<img src="{$root}/image/2/288/178/5/assets/images/{artwork/filename}" width="100%" />
			</a>
		</div>
		<h2><xsl:value-of select="title" /></h2>
		<p class="caption"><xsl:value-of select="caption" /></p>
	</div>
</xsl:template>

</xsl:stylesheet>