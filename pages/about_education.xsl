<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<div class="row mainfade">
		<div class="span8">
			<a style="float:right;" href="{$root}/about"><h2>back</h2></a>
			<h2 class="eventtitle"><xsl:value-of select="educationdetail/entry/title" /></h2>
			<xsl:if test="educationdetail/entry/date/date/start[@iso]">
				<h2 class="eventdetaildate" >
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="educationdetail/entry/date/date/start[@iso]" />
						<xsl:with-param name="format" select="'Y'" />
					</xsl:call-template>
					<xsl:if test="educationdetail/entry/date/date/end">
						<xsl:text> - </xsl:text>
						<xsl:call-template name="format-date">
							<xsl:with-param name="date" select="educationdetail/entry/date/date/end[@iso]" />
							<xsl:with-param name="format" select="'Y'" />
						</xsl:call-template>
					</xsl:if>
				</h2>
			</xsl:if>			
			<xsl:if test="educationdetail/entry/qualification/node() != ''">
				<div class="clearfix">			
					<xsl:copy-of select="educationdetail/entry/qualification/node()" />
				</div>
			</xsl:if>
			
			<xsl:if test="educationdetail/entry/description/node() != ''">
				<div class="clearfix">
					<xsl:copy-of select="educationdetail/entry/description/node()" />
				</div>
			</xsl:if>

		</div>
	</div>
	
</xsl:template>

</xsl:stylesheet>