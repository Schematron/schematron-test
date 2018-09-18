<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:schxsl="tag:maus@hab.de,2018:xslt-schematron" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0"><xsl:output indent="yes"/><xsl:template match="/"><xsl:variable name="report"><xsl:call-template name="d330e3"/><xsl:call-template name="d330e11"/><xsl:call-template name="d330e19"/><xsl:call-template name="d330e27"/></xsl:variable><svrl:schematron-output phase="#ALL"><xsl:sequence select="$report"/></svrl:schematron-output></xsl:template><xsl:template name="d330e3"><svrl:active-pattern/><xsl:variable name="instances"><xsl:sequence select="/"/></xsl:variable><xsl:apply-templates mode="d330e3" select="$instances"/></xsl:template><xsl:template name="d330e11"><svrl:active-pattern/><xsl:variable name="instances"><xsl:sequence select="/"/></xsl:variable><xsl:apply-templates mode="d330e11" select="$instances"/></xsl:template><xsl:template name="d330e19"><svrl:active-pattern/><xsl:variable name="instances"><xsl:sequence select="/"/></xsl:variable><xsl:apply-templates mode="d330e19" select="$instances"/></xsl:template><xsl:template name="d330e27"><svrl:active-pattern/><xsl:variable name="instances"><xsl:sequence select="/"/></xsl:variable><xsl:apply-templates mode="d330e27" select="$instances"/></xsl:template><xsl:template match="processing-instruction('foobar')" mode="d330e3" priority="0"><svrl:fired-rule context="processing-instruction('foobar')"/><xsl:if test="not(false())"><xsl:variable name="location"><xsl:call-template name="location-path"/></xsl:variable><svrl:failed-assert location="{$location}" id="assert-processing-instruction" test="false()"/></xsl:if></xsl:template><xsl:template match="comment()" mode="d330e11" priority="0"><svrl:fired-rule context="comment()"/><xsl:if test="not(false())"><xsl:variable name="location"><xsl:call-template name="location-path"/></xsl:variable><svrl:failed-assert location="{$location}" id="assert-comment" test="false()"/></xsl:if></xsl:template><xsl:template match="@foobar" mode="d330e19" priority="0"><svrl:fired-rule context="@foobar"/><xsl:if test="not(false())"><xsl:variable name="location"><xsl:call-template name="location-path"/></xsl:variable><svrl:failed-assert location="{$location}" id="assert-attribute" test="false()"/></xsl:if></xsl:template><xsl:template match="text()" mode="d330e27" priority="0"><svrl:fired-rule context="text()"/><xsl:if test="not(false())"><xsl:variable name="location"><xsl:call-template name="location-path"/></xsl:variable><svrl:failed-assert location="{$location}" id="assert-text" test="false()"/></xsl:if></xsl:template><xsl:template name="location-path" as="xs:string">
    <xsl:variable name="steps" as="xs:string*">
      <xsl:for-each select="(self::node(), ancestor::*)">
        <xsl:call-template name="location-step-name"/>
      </xsl:for-each>
    </xsl:variable>
    <xsl:value-of>
      <xsl:text>/</xsl:text>
      <xsl:value-of select="$steps" separator="/"/>
    </xsl:value-of>
  </xsl:template><xsl:template name="location-step-name" as="xs:string?">
    <xsl:variable name="pos">
      <xsl:number level="single"/>
    </xsl:variable>
    <xsl:choose>
      <xsl:when test=". instance of element()">
        <xsl:value-of select="concat('*:', local-name(), '[namespace-uri() = &#34;', namespace-uri(), '&#34;][', $pos, ']')"/>
      </xsl:when>
      <xsl:when test=". instance of attribute()">
        <xsl:value-of select="concat('@*:', local-name(), '[namespace-uri() = &#34;', namespace-uri(), '&#34;]')"/>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template><xsl:template match="text() | @*" mode="#all" priority="-10"/><xsl:template match="*" mode="#all" priority="-10"><xsl:apply-templates mode="#current" select="@* | node()"/></xsl:template></xsl:transform>