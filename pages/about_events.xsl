<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<div class="row mainfade">
		<div class="span8">
			<a style="float:right;">
				<xsl:attribute name="href">
					<xsl:choose>
						<xsl:when test="$url-h = 1">
							<xsl:value-of select="$root" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="$root" /><xsl:text>/about</xsl:text>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
			<h2>back</h2></a>
			<h2 class="eventtitle"><xsl:value-of select="event/entry/title" /></h2>
			<xsl:if test="event/entry/date/date/start[@iso]">
				<h2 class="eventdetaildate" >
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="event/entry/date/date/start[@iso]" />
						<xsl:with-param name="format" select="'d.n.y'" />
					</xsl:call-template>
					<xsl:if test="event/entry/date/date/end">
						<xsl:text> - </xsl:text>
						<xsl:call-template name="format-date">
							<xsl:with-param name="date" select="event/entry/date/date/end[@iso]" />
							<xsl:with-param name="format" select="'d.n.y'" />
						</xsl:call-template>
					</xsl:if>
				</h2>
			</xsl:if>
			<xsl:if test="event/entry/description/node() != ''">
				<div class="clearfix">			
					<xsl:copy-of select="event/entry/description/node()" />
				</div>
			</xsl:if>
			
			<xsl:if test="event/entry/address != ''">
				<h2 class="bottommargin10">address</h2>
				<div class="clearfix">
					<xsl:copy-of select="event/entry/address/node()" />
				</div>
			</xsl:if>
			
			<xsl:if test="event/entry/further-info != ''">
				<h2 class="bottommargin10">further details</h2>
				<div class="clearfix">
					<xsl:copy-of select="event/entry/further-info/node()" /> 
				</div>
			</xsl:if>
			<xsl:if test="event/entry/link != ''">
				<a href="{event/entry/link}"><xsl:value-of select="event/entry/link" /></a>
			</xsl:if>
		</div>
	</div>
	
</xsl:template>

</xsl:stylesheet>