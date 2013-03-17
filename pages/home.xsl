<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<div class="clearfix mainfade">
		<div class="row">
			<div class="span12 clearfix">
				<div class="frame">
					<a href="{root}/work/view/{homepage/entry/link/item/@handle}"><img src="{$root}/image/2/928/300/5/0/assets/images/{homepage/entry/artwork/filename}" width="100%" /></a>
				</div>
			</div>
		</div>
		
		<div class="row homeevents">
			<xsl:if test="currentevents/entry">
				<div class="span12 occurrence"><h3 style="margin-top:10px;">current</h3></div>
				<div class="span12 clearfix">
					<xsl:apply-templates select="currentevents/entry" /> <!-- below -->
				</div>
			</xsl:if>
			<xsl:if test="upcomingevents/entry">
				<div class="span12 occurrence"><h3 style="margin-top:10px;">upcoming</h3></div>
				<div class="span12 clearfix">
					<xsl:apply-templates select="upcomingevents/entry" /> <!-- below -->
				</div>
			</xsl:if>
		</div>
	</div>
</xsl:template>

<xsl:template match="currentevents/entry">
	<div class="clearfix eventwrapper">
		<div style="width:66%;float:left;">
			<h2 class="eventtitle"><a href="{$root}/about/events/{title/@handle}?h=1"><xsl:value-of select="title" /></a></h2>
		</div>
		<div style="width:30%;float:right;">
			<h2 class="eventdate">
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="date/date/start[@iso]" />
					<xsl:with-param name="format" select="'d.n.y'" />
				</xsl:call-template>
				<xsl:if test="date/date/end">
					<xsl:text> - </xsl:text>
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="date/date/end[@iso]" />
						<xsl:with-param name="format" select="'d.n.y'" />
					</xsl:call-template>
				</xsl:if>
			</h2>
		</div>
	</div>
</xsl:template>

<xsl:template match="upcomingevents/entry">
	<div class="clearfix eventwrapper">
		<div style="width:66%;float:left;">
			<h2 class="eventtitle"><a href="{$root}/about/events/{title/@handle}?h=1"><xsl:value-of select="title" /></a></h2>
		</div>
		<div style="width:30%;float:right;">
			<h2 class="eventdate">
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="date/date/start[@iso]" />
					<xsl:with-param name="format" select="'d.n.y'" />
				</xsl:call-template>
				<xsl:if test="date/date/end">
					<xsl:text> - </xsl:text>
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="date/date/end[@iso]" />
						<xsl:with-param name="format" select="'d.n.y'" />
					</xsl:call-template>
				</xsl:if>
			</h2>
		</div>
	</div>
</xsl:template>


</xsl:stylesheet>