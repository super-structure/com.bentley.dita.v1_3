# Background on Bentley Systems' DITA v1.3

Jason Coleman - 2019-09-17

In the first half of 2013, Bentley Systems, Inc migrated its DITA documentation from DITA v1.1 to DITA v1.2. We had previously used a specialized set of SDL’s already specialized DocTypes in v1.1. However, based on publications from Eliot Kimber at the time (1), it was decided that creating a separate set of shell DocTypes and XML Schema files was the best practice to follow. At this time, several specialized topic types were also introduced to accommodate some of Bentley’s expanding documentation needs.

The purpose of Bentley’s specialization is two-fold: 

1. to constrain the elements that authors may use (i.e., force the use of semantic rather than presentational elements) and
2. to expand DITA to meet Bentley’s specific needs. 

The first reason is of less importance to us now but the second is of vital importance as much of our documentation and publishing chain relies on some of these specializations.
So moving to DITA v1.3 will emphasize on backwards compatibility with Bentley’s v1.2 DTDs/Schemas while “loosening” some previous content restrictions that had been imposed.

## Specialized Topic Types

In addition to the “technical content” topic types of concept, task, and reference, we also use the following three structural specializations in DITA v1.2:

### FAQ

This topic type is used to create a frequently asked questions topic. This topic type was a common “how to specialize” example.

The “out of the box” content model and processing were used in implementing this specialization. (2)

### Troubleshooting

This topic type is used to create a common problem, cause, and solutions topic (cloned from DITA v1.3 to use in DITA v1.2).

No migration is essentially necessary for this as it is already contained in DITA v1.3. To be verified that existing v1.2 topics will validate under v1.3.

### Verification

This topic type is used to present an engineering example (often with supporting calculations) which can then be compared with a model using our software. This is similar to a reference topic, but with specialized “section” which must occur in a specified order.

Of the three topic types. Verification was the only one which was entirely unique to Bentley. This is also the most widely used specialization.

### Task Topics

We have also modified the structure of the task topic type to allow for choice lists and choice tables as children of sub-step elements.

## Specialized Domains

The following domains have been specialized in Bentley’s DocTypes:

### Highlighting Domain
This domain was removed entirely. The `<sub>` and `<sup>` elements were re-added as part of our Math domain. The constraint on these elements is no longer seen as necessary in DITA v1.3, though.

### Math Domain

This domain was added based upon early proposals for how to add MathML and equation content into DITA, originally written by Eliot Kimber (3). In addition to adding block and inline elements for math content, this also included a specialization of the definition list for including symbology definitions used in an equation. 

As previously stated, subscript and superscript were also included in this domain. However, their content model was not changed so they could be used for typographical purposes outside of math container elements.

Lastly, MathML was included in this domain rather than in a separate domain.

For DITA v1.3, it seems likely that the elements used could either:
* Be included within the Equation domain. The `<eqsymbols>` and children would need to be added.
* Or, mapped to existing Equation domain elements (`<mathph>` mapped to `<equation-inline>`) and the content be converted either during CMS database migration or individually upon checkout. This last option would probably be necessary for authoring content in some editors (e.g., web-based editors)

The MathML domain would include the need for mathml elements. However, it does need to be modified somehow that will accept the “mml:” namespace instead of or in addition to the “m:” namespace.

### Programming Domain

This domain had a pair of specialized elements added for the purpose of documenting our platform products’ text entry commands. These are widely used across Bentley documentation and there are several processing items in our publication that rely on these, including our “Key-in index” which generates an index listing of all these typed commands.

### Rhetoric Domain

This domain was included for the sole purpose of including an “emphasis” element. It is this author’s strong opinion that the lack of the `<em>` element represents one of the biggest oversight’s of the DITA committee. The use of a domain solely for this one element is not entirely necessary (though the author’s intention was to make this a separate plug-in for other DITA users). This element is used for semantic emphasis (i.e., “rhetorical” emphasis) and is widely used throughout Bentley documentation.

The emphasis element is simply a specialization of the `<ph>` element, but the processing for multiple localizations is the crucial part of why it exists.

For DITA v1.3, this domain could be included, or the element could simply be included in the highlighting or some other domain that seems most appropriate.

### UI Domain

This domain has a specialized element for keyboard entry: `<kbd>`. This element is widely used throughout Bentley documentation.

### SDL-Specific Domains and Attributes
SDL has some DITA customizations to facilitate their CMS functionality. These need to be accounted for if they are no longer used (either stripped during content migration or added into the DocTypes so they still validate).

## Footnotes

1. Kimber was a proponent of any organization using DITA to start with setting up their own “shell” DocTypes:
   [DITA Standard Practice: Always Make Local Shells](http://drmacros-xml-rants.blogspot.com/2007/04/dita-standard-practice-always-make.html)
   and
   [DITA Configuration and Specialization Tutorials](http://www.xiruss.org/tutorials/dita-specialization/) - Chapter 3 overview

2. [faq plugin by Jarno Elovirta](https://github.com/dita-ot/ext-plugins/tree/master/faq)
   and
   http://archive.ixiasoft.com/en/products/dita-cms/documentation/3-4/integrating-dtds-dita-cms/integrating-specializations/integrating-topic-specialization/integrate-faq-specialization-dita-cms/

3. [DITA 1.3 Spec updated proposal by Eliot Kimber](https://github.com/drmacro/dita-13-spec/commit/99503ebbbf8ccdd7efa07473b7f245db60f97bb1)
   possibly based on this XML.org page (by Bryce Nordgen)
   [Math Domain Elements](http://dita-archive.xml.org/wiki/math-domain-elements)
