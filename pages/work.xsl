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
		<ul class="span6">
			<li class="showslideshow recentshiftupmobile" style="float:right; margin-right:0;"><a href="#">slideshow</a></li>
		</ul>
	</div>
	
	<div class="row mainfade">
		<xsl:apply-templates select="recentwork/entry/artwork/item" /> <!-- below -->
		
		<!-- slideshow -->
		<div class="slideshow">
			<a id="next" style="position:absolute;right: 0; top: -35px; font-size: 10px; background-color: #fff;padding: 5px 10px;border: 1px solid #f9f9f9;box-shadow: 0px 0px 10px rgba(55,55,55,0.2);" href="#">&#8250;</a>
			<a id="prev" style="position:absolute;right: 35px; top: -35px; font-size: 10px; background-color: #fff;padding: 5px 10px;border: 1px solid #f9f9f9;box-shadow: 0px 0px 10px rgba(55,55,55,0.2);" href="#">&#8249;</a>
			<div class="cycle-slideshow largeslideshowimage" data-cycle-timeout="0" data-cycle-prev="#prev" data-cycle-next="#next">
			  <xsl:apply-templates select="recentwork/entry/artwork/item" mode="slideshow" />
				<div style="position: absolute; top:0; z-index:9999;">
				    <div class="slideshowclosebutton"><a href="#">&#x00D7;</a></div>
				    <div class="slideshowdetails"><a href="#">view full details</a></div>
				</div>
			</div>
		</div>
		<!-- end slideshow -->
		
		
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

<xsl:template match="recentwork/entry/artwork/item" mode="slideshow">
	<img class="frame" src="{$root}/image/1/608/0/0/assets/images/{artwork/filename}" thelink="{$root}/work/view/{title/@handle}" largesrc="{artwork/filename}" width="100%" />
</xsl:template>


</xsl:stylesheet>