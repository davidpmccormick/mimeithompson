<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>
<xsl:import href='../utilities/pagination.xsl'/>

<xsl:template match="data">
	<div class="row mainfade">
		<div class="span8 about">
			<h3 style="margin-bottom:10px;margin-top:0;">education</h3>
			<xsl:apply-templates select="education/entry" />
		</div>
		<xsl:if test="currentevents/entry">
			<div class="span8 occurrence"><h3>current events</h3></div>
			<div class="span8 clearfix">
				<xsl:apply-templates select="currentevents/entry" /> <!-- below -->
			</div>
		</xsl:if>
		<xsl:if test="upcomingevents/entry">
			<div class="span8 occurrence"><h3>future events</h3></div>
			<div class="span8 clearfix">
				<xsl:apply-templates select="upcomingevents/entry" /> <!-- below -->
			</div>
		</xsl:if>
		<xsl:if test="pastevents/entry">
			<div class="span8 occurrence pastevents"><h3>selected exhibitions</h3></div>
			<div class="span8 clearfix">
				<div class="thepastevents clearfix" name="thepastevents">
					<xsl:apply-templates select="pastevents/entry" /> <!-- below -->
				</div>
			</div>						
		</xsl:if>		
	</div>
</xsl:template>

<xsl:template match="education/entry">
	<div class="clearfix dottedunderline">
		<xsl:if test="date/date/start">
			<h2 class="biodate">
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="date/date/start[@iso]" />
					<xsl:with-param name="format" select="'Y'" />
				</xsl:call-template>
				<xsl:if test="date/date/end">
					<xsl:text> - </xsl:text>
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="date/date/end[@iso]" />
						<xsl:with-param name="format" select="'Y'" />
					</xsl:call-template>
				</xsl:if>
			</h2>
		</xsl:if>
		<h2 class="inheritcolor"><a href="{$root}/about/education/{title/@handle}"><xsl:value-of select="title" /></a>
			<p class="smalldetails"><xsl:value-of select="qualification" /></p>
		</h2>
	</div>
</xsl:template>

<xsl:template match="currentevents/entry">
	<div class="clearfix eventwrapper">
		<div style="width:66%;float:left;">
			<h2 class="eventtitle"><a href="{$root}/about/events/{title/@handle}"><xsl:value-of select="title" /></a>
				<p class="smalldetails"><xsl:value-of select="short-description" /></p>
			</h2>
		</div>
		<div style="width:30%;float:right;">
			<xsl:if test="date/date/start[@iso]">
				<h2 class="eventdate">
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="date/date/start[@iso]" />
						<xsl:with-param name="format" select="'Y'" />
					</xsl:call-template>
				</h2>
			</xsl:if>
		</div>
	</div>
</xsl:template>

<xsl:template match="upcomingevents/entry">
	<div class="clearfix eventwrapper">
		<div style="width:66%;float:left;">
			<h2 class="eventtitle"><a href="{$root}/about/events/{title/@handle}"><xsl:value-of select="title" /></a>
				<p class="smalldetails"><xsl:value-of select="short-description" /></p>
			</h2>
		</div>
		<div style="width:30%;float:right;">
			<xsl:if test="date/date/start[@iso]">
				<h2 class="eventdate">
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="date/date/start[@iso]" />
						<xsl:with-param name="format" select="'Y'" />
					</xsl:call-template>
				</h2>
			</xsl:if>
		</div>
	</div>
</xsl:template>

<xsl:template match="pastevents/entry">
	<div class="clearfix eventwrapper">
		<div style="width:66%;float:left;">
			<h2 class="eventtitle" style="float:left;"><a href="{$root}/about/events/{title/@handle}"><xsl:value-of select="title" /></a>
				<p class="smalldetails"><xsl:value-of select="short-description" /></p>
			</h2>
		</div>
		<div style="width:30%;float:right;">
			<xsl:if test="date/date/start[@iso]">
				<h2 class="eventdate">
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="date/date/start[@iso]" />
						<xsl:with-param name="format" select="'Y'" />
					</xsl:call-template>
				</h2>
			</xsl:if>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>