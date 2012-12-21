<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">

	<div class="row submenu">
		<div class="span6">
			<h2 class="archivedate"><xsl:value-of select="collection/entry/title" /></h2>
		</div>
		<div class="span6 shiftupmobile">
			<h2 style="float:right;"><a href="{$root}/work/archive">back</a></h2>
		</div>
	</div>
	<div class="clearfix mainfade">	
		<div class="row">
			<div class="largeimage frame" style="position:absolute;background-color:#fff;top:50px;left:50%;margin-left:-304px;z-index:2;display:none;"></div>
			<xsl:apply-templates select="collection/entry/artworks/item" /> <!-- below -->
		</div>
		
		<xsl:if test="collection/entry/description">
			<div class="row">
				<div class="span8">
					<xsl:copy-of select="collection/entry/description/node()" />
				</div>
			</div>	
		</xsl:if>
	</div>
	<script type="text/javascript">
	  <xsl:comment>
	      $(document).ready(function(){
			$('.showlargeimage').click(function() {
				var theLink = $(this).children('img').attr('thelink');
				var docRoot = $('.overlay').attr('id');
				var theImage = $(this).children('img').attr('largesrc');
				var imageString =  docRoot + '/image/1/608/0/assets/images/' + theImage;
				$('.largeimage').html('&lt;img src=' + imageString + ' width="608" />&lt;div class="closebutton">&lt;a href="#">&#x00D7;&lt;/a>&lt;/div>&lt;div class="gotodetails">&lt;a href="'+ theLink +'">view full details&lt;/a>&lt;/div>');
				$('.largeimage').fadeTo(200,1, function() {
					$('.overlay').fadeTo(200,0.9, function() {
						resizeOverlay();
					});
				});
				$(window).resize(function() {
					resizeOverlay();
				});
			});      
		});
	  //</xsl:comment>
	</script>	
</xsl:template>

<xsl:template match="collection/entry/artworks/item">
	<div class="span3 workcontainer">
		<xsl:if test="position() mod 4 = 1">
			<xsl:attribute name="style"><xsl:text>clear:left;</xsl:text></xsl:attribute>
		</xsl:if>
		<div class="frame">
			<a class="showlargeimage" href="#">
				<img src="{$root}/image/2/288/178/5/assets/images/{artwork/filename}" thelink="{$root}/work/view/{title/@handle}" largesrc="{artwork/filename}" width="100%" />
			</a>
		</div>
		<h2><xsl:value-of select="title" /></h2>
		<p class="caption"><xsl:value-of select="caption" /></p>
	</div>
	


</xsl:template>

</xsl:stylesheet>