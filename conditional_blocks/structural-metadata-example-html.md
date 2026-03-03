```xml
<?xml version="1.0" encoding="UTF-8"?>
<archive xmlns="http://rs.tdwg.org/dwc/text/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xsi:schemaLocation="http://rs.tdwg.org/dwc/text/ http://rs.tdwg.org/dwc/text/tdwg_dwc_text.xsd">
  <core encoding="UTF-8" fieldsTerminatedBy="," linesTerminatedBy="\n" fieldsEnclosedBy="" ignoreHeaderLines="1" rowType="http://rs.tdwg.org/dwc/terms/Event">
    <files>
      <location>budburst_event.csv</location>
    </files>
    <id index="0"/>
    <field index="0" term="http://rs.tdwg.org/dwc/terms/eventID"/>
    <field index="1" term="http://rs.tdwg.org/dwc/terms/parentEventID"/>
    <field index="2" term="http://rs.tdwg.org/dwc/terms/samplingProtocol"/>
    <field index="3" term="http://rs.tdwg.org/dwc/terms/sampleSizeValue"/>
    <field index="4" term="http://rs.tdwg.org/dwc/terms/sampleSizeUnit"/>
    <field index="5" term="http://rs.tdwg.org/dwc/terms/eventDate"/>
    <field index="6" term="http://rs.tdwg.org/dwc/terms/year"/>
    <field index="7" term="http://rs.tdwg.org/dwc/terms/month"/>
    <field index="8" term="http://rs.tdwg.org/dwc/terms/day"/>
    <field index="9" term="http://rs.tdwg.org/dwc/terms/country"/>
    <field index="10" term="http://rs.tdwg.org/dwc/terms/countryCode"/>
    [...]
  </core>
  <extension encoding="UTF-8" fieldsTerminatedBy="," linesTerminatedBy="\n" fieldsEnclosedBy="" ignoreHeaderLines="1" rowType="http://rs.iobis.org/obis/terms/ExtendedMeasurementOrFact">
    <files>
      <location>budburst_extendedmeasurementorfact.csv</location>
    </files>
    <coreid index="1"/>
    <field index="0" term="http://rs.tdwg.org/dwc/terms/measurementID"/>
    <field index="2" term="http://rs.tdwg.org/dwc/terms/measurementType"/>
    <field index="3" term="http://rs.tdwg.org/dwc/terms/measurementValue"/>
    <field index="4" term="http://rs.tdwg.org/dwc/terms/measurementUnit"/>
    <field index="5" term="http://rs.tdwg.org/dwc/terms/measurementMethod"/>
    <field index="6" term="http://rs.tdwg.org/dwc/terms/measurementRemarks"/>
  </extension>
  [...]
</archive>
```