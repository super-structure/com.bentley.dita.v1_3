<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Verification                                 -->
<!--  VERSION:   1.3                                               -->
<!--  DATE:      September 2019                                    -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an 
      appropriate system identifier 
PUBLIC "-//BENTLEY//ELEMENTS DITA 1.3 Verification//EN"
      Delivered as file "verification.mod"                         -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Define elements and specialization atttributes    -->
<!--             for Concepts                                      -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             February 2014                                     -->
<!--                                                               -->
<!--             Copyright (c) Bentley Systems, Incorporated.      -->
<!--             All rights reserved.                              -->
<!--             (C) Copyright OASIS Open 2005, 2009.              -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!--  UPDATES:                                                     -->
<!--    2005.11.15 RDA: Removed old declaration for                -->
<!--                    conceptClasses entity                      -->
<!--    2006.06.07 RDA: Added <abstract> element                   -->
<!--    2006.06.07 RDA: Make universal attributes universal        -->
<!--                      (DITA 1.1 proposal #12)                  -->
<!--    2006.11.30 RDA: Remove #FIXED from DITAArchVersion         -->
<!--    2007.12.01 EK:  Reformatted DTD modules for DITA 1.2       -->
<!--    2008.01.30 RDA: Replace @conref defn. with %conref-atts;   -->
<!--    2008.02.13 RDA: Create .content and .attributes entities   -->
<!--    2008.05.06 RDA: Added conbodydiv                           -->
<!--    2019.09.16 JTC: Updated for DITA v1.3 specification        -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                   ARCHITECTURE ENTITIES                       -->
<!-- ============================================================= -->

<!-- default namespace prefix for DITAArchVersion attribute can be
     overridden through predefinition in the document type shell   -->
<!ENTITY % DITAArchNSPrefix
  "ditaarch"
>

<!-- must be instanced on each topic type                          -->
<!ENTITY % arch-atts 
             "xmlns:%DITAArchNSPrefix; 
                        CDATA
                                  #FIXED 'http://dita.oasis-open.org/architecture/2005/'
              %DITAArchNSPrefix;:DITAArchVersion
                        CDATA
                                  '1.3'
"
>


<!-- ============================================================= -->
<!--                   SPECIALIZATION OF DECLARED ELEMENTS         -->
<!-- ============================================================= -->


<!ENTITY % verification-info-types 
  "%info-types;
  "
>


<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->
 

<!ENTITY % verification     "verification"                           >
<!ENTITY % verbody     "verbody"                                     >
<!ENTITY % verbodydiv  "verbodydiv"                                  >
<!ENTITY % reference    "reference"                                  >
<!ENTITY % problem      "problem"                                    >
<!ENTITY % calcs        "calcs"                                      >
<!ENTITY % comparison   "comparison"                                 >
<!ENTITY % input        "input"                                      >
<!ENTITY % output       "output"                                     >


<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->


<!ENTITY included-domains 
  ""
>


<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->


<!--                    LONG NAME: Verification Problem            -->
<!ENTITY % verification.content
                       "((%title;), 
                         (%titlealts;)?,
                         (%abstract; | 
                          %shortdesc;)?, 
                         (%prolog;)?, 
                         (%verbody;)?, 
                         (%related-links;)?,
                         (%verification-info-types;)* )"
>

<!-- Note:               %ish-root-element-atts;
 was removed for dev -->
<!ENTITY % verification.attributes
             "id 
                        ID 
                                  #REQUIRED
              %conref-atts;
              %select-atts;
              %localization-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT verification    %verification.content;>
<!ATTLIST verification    
              %verification.attributes;
              %arch-atts;
              domains 
                        CDATA 
                                  "&included-domains;">



<!--                    LONG NAME: Verification Body                -->
<!ENTITY % verbody.content
                       "((%reference;)?, 
                         (%problem;)?,
                         (%calcs;)?,
                         (%comparison;)?,
                         (%input;)?,
                         (%output;)? )"
>
<!-- NOTE: 
              %ishlabelxpath-general-default;
              %ishlinkxpath-general-default;
              was removed for development -->
<!ENTITY % verbody.attributes
             "%id-atts;
              %localization-atts;
              base 
                        CDATA 
                                  #IMPLIED
              %base-attribute-extensions;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT verbody    %verbody.content;>
<!ATTLIST verbody    %verbody.attributes;>

<!--                    LONG NAME: Verification Body division       -->
<!ENTITY % verbodydiv.content
                       "(%example; |
                         %section;)*"
>
<!ENTITY % verbodydiv.attributes
             "%univ-atts;
              outputclass 
                        CDATA
                                  #IMPLIED"
>
<!ELEMENT verbodydiv    %verbodydiv.content;>
<!ATTLIST verbodydiv    %verbodydiv.attributes;>


<!--                   LONG NAME: Reference                        -->
<!ENTITY % reference.content
                        "(%section.cnt;)*"
>
<!ENTITY % reference.attributes 
            "spectitle 
                        CDATA 
                                  #IMPLIED
              %univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT reference     %reference.content; >
<!ATTLIST reference     %reference.attributes; >

<!--                   LONG NAME: Problem Statement                -->
<!ENTITY % problem.content
                        "(%section.cnt;)*"
>
<!ENTITY % problem.attributes 
            "spectitle 
                        CDATA 
                                  #IMPLIED
              %univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT problem     %problem.content; >
<!ATTLIST problem     %problem.attributes; >

<!--                    LONG NAME: Calculations Container          -->
<!ENTITY % calcs.content
                       "(%section.notitle.cnt; |
                         %verbodydiv; |
                         %section;)*"
>
<!ENTITY % calcs.attributes
             "%univ-atts;
              outputclass 
                        CDATA
                                  #IMPLIED"
>
<!ELEMENT calcs    %calcs.content;>
<!ATTLIST calcs    %calcs.attributes;>

<!--                   LONG NAME: Comparison                       -->
<!ENTITY % comparison.content
                        "(%section.cnt;)*"
>
<!ENTITY % comparison.attributes 
            "spectitle 
                        CDATA 
                                  #IMPLIED
              %univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT comparison     %comparison.content; >
<!ATTLIST comparison     %comparison.attributes; >

<!--                   LONG NAME: Input Example                    -->
<!ENTITY % input.content
                        "(%example.cnt;)*"
>
<!ENTITY % input.attributes 
            "spectitle 
                        CDATA 
                                  #IMPLIED
              %univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT input     %input.content; >
<!ATTLIST input     %input.attributes; >

<!--                   LONG NAME: Output Example                   -->
<!ENTITY % output.content
                        "(%example.cnt;)*"
>
<!ENTITY % output.attributes 
            "spectitle 
                        CDATA 
                                  #IMPLIED
              %univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT output     %output.content; >
<!ATTLIST output     %output.attributes; >
 
<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST verification %global-atts;  class CDATA "- topic/topic verification/verification ">
<!ATTLIST verbody      %global-atts;  class CDATA "- topic/body verification/verbody "      >
<!ATTLIST verbodydiv   %global-atts;  class CDATA "- topic/bodydiv verification/verbodydiv ">
<!ATTLIST reference    %global-atts;  class CDATA "- topic/section verification/reference " >
<!ATTLIST problem      %global-atts;  class CDATA "- topic/section verification/problem "   >
<!ATTLIST calcs        %global-atts;  class CDATA "- topic/bodydiv verification/calcs "     >
<!ATTLIST comparison   %global-atts;  class CDATA "- topic/section verification/comparison ">
<!ATTLIST input        %global-atts;  class CDATA "- topic/example verification/input "     >
<!ATTLIST output       %global-atts;  class CDATA "- topic/example verification/output "    >


<!-- ================== End DITA Verification ====================== -->




