<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/page-title.xsl" />
<xsl:import href="../utilities/navigation.xsl" />
<xsl:import href="../utilities/date-time.xsl" />

<xsl:output method="html" omit-xml-declaration="yes" indent="no" />

<xsl:variable name="is-logged-in" select="/data/events/login-info/@logged-in"/>
<xsl:variable name="url-h" select="''"/>

<xsl:template match="/">
	<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!DOCTYPE html<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
	<html lang="en">
		<head>
			<meta charset="utf-8" />
			<meta name="title" content="{$page-title}" />
			<meta name="description" content="" />
			<meta name="tags" content="" />
			<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

			<title><xsl:call-template name="page-title"/></title>

			<link rel="shortcut icon" href="/favicon.ico" />
			<link rel="icon" type="images/png" href="/favicon.png" />
			<link rel="stylesheet" media="screen" href="{$workspace}/css/bootstrap.css" />
			<link rel="stylesheet" media="screen" href="{$workspace}/css/bootstrap-responsive.css" />
			<link rel="stylesheet" media="screen" href="{$workspace}/css/mt.css" />
			
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
			<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
			<script src="{$workspace}/js/bootstrap.js"></script>
			<script src="{$workspace}/js/jquery.cycle2.js"></script>
						
			<script src="{$workspace}/js/mt.js"></script>
			<script src="{$workspace}/js/jquery.placeholder.min.js"></script>
			<script src="{$workspace}/js/jquery.ajaxify.min.js"></script>
			<script src="{$workspace}/js/jquery.history.js"></script>
					
			<xsl:comment><![CDATA[[if lt IE 9]><script type="text/javascript" src="]]><xsl:value-of select="$root" /><![CDATA[/workspace/js/html5shiv.min.js"></script><![endif]]]></xsl:comment>
			<xsl:comment><![CDATA[[if (gte IE 6)&(lte IE 8)]><script type="text/javascript" src="]]><xsl:value-of select="$root" /><![CDATA[/workspace/js/selectivizr.min.js"></script><![endif]]]></xsl:comment>
		</head>
		
		<body id="{$current-page}-page">
			<div id="{$root}" class="overlay"></div>
			<div class="container" style="margin-top:10px;">
				<header>
					<div class="row" style="margin-top:20px;">
						<div class="span4 logo">
							<a href="{$root}"><h1>Mimei Thompson</h1></a>
						</div>
						<nav class="span6 offset2">
							<xsl:apply-templates select="data/navigation" />
						</nav> <!-- end .nav -->
					</div>
				</header> <!-- end .header -->

				<article class="maincontent">
					<xsl:apply-templates />
				</article> <!-- end .article -->

				<footer class="footer" style="margin-top:100px;">
					<p>all visual material on this site is copyright, if you would like to reproduce it please <a href="{$root}/contact">contact me</a></p>
				</footer> <!-- end .footer -->
			</div> <!-- end .container -->
		</body>
	</html>
</xsl:template>

<xsl:strip-space elements="*" />

</xsl:stylesheet>