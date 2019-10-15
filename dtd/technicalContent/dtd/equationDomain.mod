<?xml version="1.0" encoding="UTF-8"?>
<!-- =============================================================  -->
<!-- DITA Equation Domain                                          -->
<!-- Purpose: Provides elements for identifying equations as       -->
<!--          equations independent of how the equation itself     -->
<!--          is defined (e.g., as a graphic, using MathML, etc.). -->
<!--                                                               -->
<!-- Creation Date: March 2014                                     -->
<!-- (c) Copyright Bentley Systems, Incorporated 2019              -->
<!--             All Rights Reserved.                              -->
<!-- Copyright (c) OASIS Open 2014                                 -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an 
      appropriate system identifier 
PUBLIC "-//BENTLEY//ELEMENTS DITA Equation Domain//EN"
      Delivered as file "equationDomain.mod"                       -->
      
<!--  UPDATES:                                                     -->
<!-- 2019.09.17 JTC: Added legacy Bentley math domain elements     -->
<!--                 from DITA v1.2                                -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % equation-inline
                       "equation-inline"                             >
<!ENTITY % equation-block
                       "equation-block"                              >
<!ENTITY % equation-number
                       "equation-number"                             >
<!ENTITY % equation-figure
                       "equation-figure"                             >
                       
<!-- JTC: Added the following legacy elements                      -->
<!ENTITY % mathph   	"mathph"                                     >
<!ENTITY % equation		"equation"                                   >
<!ENTITY % math			"math"										 >

<!ENTITY % eqsymbols	"eqsymbols"									 >
<!ENTITY % eqsymbol		"eqsymbol"									 >
<!ENTITY % symname		"symname"									 >
<!ENTITY % symdesc		"symdesc"									 >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % equation.cnt
              "%ph.cnt;"
>

<!--                    LONG NAME: Inline equation                 -->
<!ENTITY % equation-inline.content
                       "(%equation.cnt;)*"
>
<!ENTITY % equation-inline.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  equation-inline %equation-inline.content;>
<!ATTLIST  equation-inline %equation-inline.attributes;>


<!--                    LONG NAME: Block equation                  -->
<!ENTITY % equation-block.content
                       "(%equation.cnt; |
                         %equation-number;)*"
>
<!ENTITY % equation-block.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  equation-block %equation-block.content;>
<!ATTLIST  equation-block %equation-block.attributes;>


<!--                    LONG NAME: Equation number                 -->
<!ENTITY % equation-number.content
                       "(#PCDATA |
                         %ph; |
                         %text;)*"
>
<!ENTITY % equation-number.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  equation-number %equation-number.content;>
<!ATTLIST  equation-number %equation-number.attributes;>


<!--                    LONG NAME: Equation figure                 -->
<!ENTITY % equation-figure.content
                       "((%title;)?,
                         (%desc;)?,
                         (%figgroup; |
                          %fig.cnt;)*)"
>
<!ENTITY % equation-figure.attributes
              "%display-atts;
               spectitle
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  equation-figure %equation-figure.content;>
<!ATTLIST  equation-figure %equation-figure.attributes;>


<!--                    LONG NAME: Math Phrase			           -->
<!--<!ENTITY % mathph.content
                       "((%words.cnt; | %sup; | %sub; 
                     | %image; | %math.qname;)*)"
>-->
<!ELEMENT mathph    (%words.cnt; |  %hi-d-ph;
                     | %image; | mml:math)*	                     >
<!ATTLIST mathph    keyref 	
                        CDATA 
                                  #IMPLIED
              %univ-atts; 
              outputclass 
                        CDATA
                                  #IMPLIED
               xmlns:mml 
                        CDATA 
                                  #FIXED "http://www.w3.org/1998/Math/MathML" >

								  
<!--                    LONG NAME: Equation 						-->                  
<!ELEMENT equation      ((%title;)?, (%desc;)?, 
                         (%math; | %eqsymbols;)* )                    >
<!ATTLIST equation    
             %display-atts;
             spectitle  CDATA                            #IMPLIED
             %univ-atts;
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Math			                    -->
<!--<!ENTITY % math.content
                        "((%para.cnt; | %math.qname;)*)"
>-->
<!ELEMENT math          (%para.cnt; | mml:math)*                  >
<!ATTLIST math    
             %display-atts;
             spectitle  CDATA                            #IMPLIED
             %univ-atts;
             outputclass 
                        CDATA                            #IMPLIED    
              xmlns:mml 
                        CDATA 
                                  #FIXED "http://www.w3.org/1998/Math/MathML" >


<!--                    LONG NAME: Equation Symbol List            -->
<!ELEMENT eqsymbols    ((%data; |
                          %data-about;)*,
                         (%eqsymbol;)+)                              >
<!ATTLIST eqsymbols       
             compact    (yes | no |
                         -dita-use-conref-target)        #IMPLIED
             spectitle  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Equation Symbol List Entry      -->
<!ELEMENT eqsymbol      ((%symname;)+, (%symdesc;)+)                 >
<!ATTLIST eqsymbol      
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Symbol Name	                   -->
<!ELEMENT symname       (%term.cnt;)*                                > 
<!ATTLIST symname      
             keyref     CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Symbol Description              -->
<!ELEMENT symdesc       (%defn.cnt;)*                                >
<!ATTLIST symdesc        
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >	

<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  equation-inline %global-atts;  class CDATA "+ topic/ph equation-d/equation-inline ">
<!ATTLIST  equation-block  %global-atts;  class CDATA "+ topic/div equation-d/equation-block ">
<!ATTLIST  equation-number %global-atts;  class CDATA "+ topic/ph equation-d/equation-number ">
<!ATTLIST  equation-figure %global-atts;  class CDATA "+ topic/fig equation-d/equation-figure ">


<!ATTLIST mathph 	       %global-atts;  class CDATA "+ topic/foreign equation-d/mathph " >
<!ATTLIST equation         %global-atts;  class CDATA "+ topic/fig equation-d/equation " >
<!ATTLIST math             %global-atts;  class CDATA "+ topic/foreign equation-d/math " >
<!ATTLIST eqsymbols	       %global-atts;  class CDATA "+ topic/dl equation-d/eqsymbols " >
<!ATTLIST eqsymbol         %global-atts;  class CDATA "+ topic/dlentry equation-d/eqsymbol " >
<!ATTLIST symname	       %global-atts;  class CDATA "+ topic/dt equation-d/symname " >
<!ATTLIST symdesc	       %global-atts;  class CDATA "+ topic/dd equation-d/symdesc " >
<!-- ================== End of DITA Equation Domain ==================== -->
 