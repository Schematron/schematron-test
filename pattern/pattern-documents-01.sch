<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <pattern documents="('pattern-documents-01.xml')">
    <rule context="document[@name = 'first']">
      <report test="true()" id="pattern-documents-01a"/>
    </rule>
    <rule context="document[@name = 'second']">
      <report test="true()" id="pattern-documents-01b"/>
    </rule>
  </pattern>
  <properties/>
</schema>
