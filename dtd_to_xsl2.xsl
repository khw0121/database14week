<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">

    <!-- TVSCHEDULE Definition -->
    <xs:element name="TVSCHEDULE">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="CHANNEL" maxOccurs="unbounded">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="BANNER" type="xs:string"/>
                            <xs:element name="DAY" maxOccurs="unbounded">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="DATE" type="xs:string"/>
                                        <xs:choice maxOccurs="unbounded">
                                            <xs:element name="HOLIDAY" type="xs:string"/>
                                            <xs:element name="PROGRAMSLOT" maxOccurs="unbounded">
                                                <xs:complexType>
                                                    <xs:sequence>
                                                        <xs:element name="TIME" type="xs:string"/>
                                                        <xs:element name="TITLE" type="xs:string">
                                                            <xs:complexType>
                                                                <xs:attribute name="RATING" type="xs:string" use="optional"/>
                                                                <xs:attribute name="LANGUAGE" type="xs:string" use="optional"/>
                                                            </xs:complexType>
                                                        </xs:element>
                                                        <xs:element name="DESCRIPTION" type="xs:string" minOccurs="0"/>
                                                    </xs:sequence>
                                                    <xs:attribute name="VTR" type="xs:string" use="optional"/>
                                                </xs:complexType>
                                            </xs:element>
                                        </xs:choice>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                        </xs:sequence>
                        <xs:attribute name="CHAN" type="xs:string" use="required"/>
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
            <xs:attribute name="NAME" type="xs:string" use="required"/>
        </xs:complexType>
    </xs:element>

    <!-- NEWSPAPER Definition -->
    <xs:element name="NEWSPAPER">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="ARTICLE" maxOccurs="unbounded">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="HEADLINE" type="xs:string"/>
                            <xs:element name="BYLINE" type="xs:string"/>
                            <xs:element name="LEAD" type="xs:string"/>
                            <xs:element name="BODY" type="xs:string"/>
                            <xs:element name="NOTES" type="xs:string" minOccurs="0"/>
                        </xs:sequence>
                        <xs:attribute name="AUTHOR" type="xs:string" use="required"/>
                        <xs:attribute name="EDITOR" type="xs:string" use="optional"/>
                        <xs:attribute name="DATE" type="xs:string" use="optional"/>
                        <xs:attribute name="EDITION" type="xs:string" use="optional"/>
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>

    <!-- ENTITY Definitions -->
    <xs:element name="NEWSPAPER_ENTITY" type="xs:string" fixed="Vervet Logic Times"/>
    <xs:element name="PUBLISHER_ENTITY" type="xs:string" fixed="Vervet Logic Press"/>
    <xs:element name="COPYRIGHT_ENTITY" type="xs:string" fixed="Copyright 1998 Vervet Logic Press"/>

</xs:schema>
