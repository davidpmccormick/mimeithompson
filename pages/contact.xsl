<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<div class="row mainfade">
		<div class="span8" style="margin-bottom:30px;">
			<h3>email</h3>
			<a href="mailto:mimei@mimeithompson.com"><h2 style="margin:10px 0 8px 0;">mimei@mimeithompson.com</h2></a>
		</div>
		<xsl:if test="externallinks/entry">
			<div class="span8">
				<h3>links</h3>
				<xsl:apply-templates select="externallinks/entry" />
			</div>
		</xsl:if>
	</div>
</xsl:template>

<xsl:template match="externallinks/entry">
	<div class="dottedunderline">
		<a href="{link}"><h2 style="margin:10px 0 8px 0;"><xsl:value-of select="title" /></h2></a>
		<xsl:copy-of select="description" />
	</div>
</xsl:template>

</xsl:stylesheet>