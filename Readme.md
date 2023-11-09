![Bentley logo](image/Bentley_logo.svg)
# Bentley DITA V1.3 DocTypes

2023-05-19

This plug-in contains DTDs for Bentley's specializations of DITA v1.3 topics and maps. These are only shells and custom domains. 

## Installation

At the command line prompt, enter the following command:

```dita install https://github.com/super-structure/com.bentley.dita.v1_3/releases/download/v1.0.1/com.bentley.dita.v1_3.zip```

## Notes

* The Math domain used in previous versions was refactored to the OASIS DITA v1.3 Equation domain. The legacy 'mml:' namespace prefix has been changed to the standard DITA v1.3 'm:' namespace.
* The Rhetoric domain was removed and the `<em>` element moved to the Highlighting domain.
* Specialized topic types faq and verification were moved into the TechnicalContent folder (along with the DITA v1.3 troubleshooting topic)
* The filenames prefixes of "bentley_" were removed.

Refer to [the project documentation](docs/index.md) for additional details.

## ToDo

Refer to the [GitHub repository Issues list](https://github.com/super-structure/com.bentley.dita.v1_3/issues).

## Copyright

Copyright © Bentley Systems, Incorporated. All rights reserved.
