# &lt;em&gt;

The emphasis (`<em>`) element is used to give emphasis to its contents. The following definition describes the appropriate use of this element:

> …one principle is easy to state: linguistic or rhetorical emphasis should be distinguished carefully from decorative highlighting…
> By linguistic or rhetorical emphasis, we mean emphasis which serves a function in conveying the meaning of a sentence, by suggesting a contrast, giving weight to a certain word, or representing the expressive rhythms of speech.

[Women Writers Project Guide to Scholarly Text Encoding](https://wwp.brown.edu/research/publications/guide/html/phrase_emphasis.html) Brown University Womens Writer Project. Brown Univesity. 2007

**Note:** The `<em>` element is expected be part of the new emphasis domain in [the DITA 2.0 specification](https://www.oasis-open.org/committees/download.php/70264/dita-2.0-specification.pdf) §10.6.3.1.

## Specialization hierarchy

The `<em>` element is specialized from `<ph>`. It is defined in the highlighting-domain module.

+ topic/ph hi-d/em

## Attributes
The following attributes are available on this element: universal attributes, `@outputclass`, and `@keyref`.

## Example

```
You should <em>not</em> press the return key before all fields are completed.
```

Example output:

You should _not_ press the return key before all fields are completed.

**Note:** This element's contents may be rendered [differently depending on the localization](https://en.wikipedia.org/wiki/Emphasis_(typography)#Methods_and_use). The standard at Bentley is to render E. Asian text as bold and/or underline, where as other text is italicized.

## References

- [A More Semantic Way of Describing Emphasized Inline Content in DITA 2.0](https://www.ditawriter.com/a-more-semantic-way-of-describing-emphasized-inline-content-in-dita-2-0/)
- Eberlein, Kristin James. [DITA 2.0 A **NOT** backwards compatible release](https://www.oasis-open.org/committees/download.php/69118/2021-DITA-2.0-Webinar-for-Vendors.pdf). June 15, 2021 - Slide 32
- [&lt;em&gt;: The Emphasis element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/em)