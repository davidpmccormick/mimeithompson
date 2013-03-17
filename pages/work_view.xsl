<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<div class="row mainfade">
		<div class="span8 workcontainer">
			<div class="frame">
				<img src="{$root}/image/1/608/0/assets/images/{artworkview/entry/artwork/filename}" width="100%" />
			</div>
		</div>
		<div class="span4">
			<h2><xsl:value-of select="artworkview/entry/title" /></h2>
			<p class="caption"><xsl:value-of select="artworkview/entry/caption" /></p>
			<p><xsl:value-of select="artworkview/entry/description" /></p>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>