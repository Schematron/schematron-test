<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:schxsl="tag:maus@hab.de,2018:xslt-schematron" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0"><xsl:output indent="yes"/><xsl:template match="/"><xsl:variable name="report"><xsl:call-template name="d251e3"/></xsl:variable><svrl:schematron-output phase="#ALL"><xsl:sequence select="$report"/></svrl:schematron-output></xsl:template><xsl:template name="d251e3"><svrl:active-pattern/><xsl:variable name="instances"><xsl:sequence select="/"/></xsl:variable><xsl:apply-templates mode="d251e3" select="$instances"/></xsl:template><xsl:template match="/" mode="d251e3" priority="3"><svrl:fired-rule context="/"/><xsl:if test="not(true())"><xsl:variable name="location"><xsl:call-template name="location-path"/></xsl:variable><svrl:failed-assert location="{$location}" id="A01" test="true()"/></xsl:if></xsl:template><xsl:template match="/*" mode="d251e3" priority="2"><svrl:fired-rule context="/*"/><xsl:if test="not(true())"><xsl:variable name="location"><xsl:call-template name="location-path"/></xsl:variable><svrl:failed-assert location="{$location}" id="A02" test="true()"/></xsl:if></xsl:template><xsl:template match="/*" mode="d251e3" priority="1"><svrl:fired-rule context="/*"/><xsl:if test="not(false())"><xsl:variable name="location"><xsl:call-template name="location-path"/></xsl:variable><svrl:failed-assert location="{$location}" id="A03" test="false()"/></xsl:if></xsl:template><xsl:template match="/*" mode="d251e3" priority="0"><svrl:fired-rule context="/*"/><xsl:if test="not(true())"><xsl:variable name="location"><xsl:call-template name="location-path"/></xsl:variable><svrl:failed-assert location="{$location}" id="A04" test="true()"/></xsl:if></xsl:template><xsl:template name="location-path" as="xs:string">
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