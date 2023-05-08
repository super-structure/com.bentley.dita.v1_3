![Bentley logo](image/blogo.jpg)
# Bentley DITA V1.3 DocTypes

2019-09-18

This plug-in contains DTDs for Bentley's specializations of DITA v1.3 topics and maps. These are only shells and custom domains. 

## Installation

At the command line prompt, enter the following command:

```dita install https://github.com/super-structure/com.bentley.dita.v1_3/releases/download/v1.0.1/com.bentley.dita.v1_3.zip```

## Notes

* The Math domain used in previous versions was refactored to the OASIS DITA v1.3 Equation domain. The MathML domain was edited to use "mml" as the namespace
* The Rhetoric domain was removed and the `<em>` element moved to the Highlighting domain.
* Specialized topic types faq and verification were moved into the TechnicalContent folder (along with the DITA v1.3 troubleshooting topic)
* The filenames prefixes of "bentley_" were removed.

## ToDo

Refer to the [GitHub repository Issues list](https://github.com/super-structure/com.bentley.dita.v1_3/issues).

## Copyright

Copyright © Bentley Systems, Incorporated. All rights reserved.