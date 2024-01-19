![Bentley logo](image/Bentley_logo.svg)
# Bentley DITA V1.3 DocTypes

2024-01-18

This plug-in contains grammar files for Bentley's specializations of DITA v1.3 topics and maps. These are only shells and custom domains. 

## Installation

At the command line prompt, enter the following command:

```dita install https://github.com/super-structure/com.bentley.dita.v1_3/releases/download/v1.1.0/com.bentley.dita.v1_3_1.1.0.zip```

## Release Notes

### 1.1.0

- The base topic type was added to the shell doctypes.
- Samples were updated to remove legacy math domain.
- Re-named sample DITA topic and map files with .dita and .ditamap extensions accordingly.
- Added `<?xml-model href="urn:bentley:names:tc:dita:rng:topic.rng" schematypens="http://purl.oclc.org/dsdl/schematron"?>` type PI to the head of every RNG and XSD sample file so they validate in Oxygen (and can use Oxygen CSS files).
- Removed ant sample file.

### 1.0.1
- The Math domain used in previous versions was refactored to the OASIS DITA v1.3 Equation domain. The legacy 'mml:' namespace prefix has been changed to the standard DITA v1.3 'm:' namespace.
- The Rhetoric domain was removed and the `<em>` element moved to the Highlighting domain.
- Specialized topic types faq and verification were moved into the TechnicalContent folder (along with the DITA v1.3 troubleshooting topic)
- The file name prefixes of "bentley_" were removed.

Refer to [the project documentation](docs/index.md) for additional details.

## TODO

Refer to the [GitHub repository Issues list](https://github.com/super-structure/com.bentley.dita.v1_3/issues).

## Copyright

Copyright © Bentley Systems, Incorporated. All rights reserved.
