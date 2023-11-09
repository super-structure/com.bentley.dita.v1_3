# &lt;keyin&gt;

The `<keyin>` element represents a MicroStation / Bentley PowerPlatform-specific command line entry. 

## Specialization hierarchy

The `<keyin>` element is specialized from `<keyword>`. It is defined in the programming-domain module.

+  topic/keyword pr-d/keyin 

## Attributes

The following attributes are available on this element: Universal attribute group (with a narrowed definition of `@importance`, given below), `@outputclass`, and `@keyref` .

<dl>
<dt>@importance</dt>
<dd>The attribute indicates whether this item in a syntax diagram is optional, required, or default. Output processors might indicate this designation in a generated diagram. Allowable values are:
   <dl>
       <dt>optional</dt>
       <dd>This section of the syntax is optional.</dd>
       <dt>required</dt>
       <dd>This section of the syntax is required.</dd>
       <dt>default</dt>
       <dd>This section of the syntax is used by default or        has this default value./dd>
       <dt>-dita-use-conref-target</dt>
       <dd>See Using the -dita-use-conref-target value for more information.</dd>
   </dl>

</dd>
</dl>


## Example
```
<syntaxdiagram>
    <keyin>
        <kwd>PLACE</kwd>
        <kwd>FENCE</kwd>
        <kwdchoice>
           <kwd>rectangle</kwd>
           <kwd>points</kwd>
       </kwdchoice>
    </keyin>
</syntaxdiagram>
```

## References


