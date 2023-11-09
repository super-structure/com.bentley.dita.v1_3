# Verification topic

Verification topics are specialized from topic. The include standard topic elements, including the short description (or abstract), prolog, a body, and related links.

## The purpose of the verification information type

To provide end-user verification of software assumptions and calculations for engineering products. This is done in the form of an example set of calculations (or reference there-to) as well as a comparison of the results provided by the software with those in the example.

## The structure of the verification topic

The top-level element for a reference topic is the `<verification>` element.

The `<verbody>` element contains the main body-level elements of the verification topic.

## Limitations with &lt;verbody&gt; 

All of the elements of `<refbody>` are optional; though they must contain only one of each and in the order mentioned below.


## Verification body primary subdivisions

<dl>
    <dt>reference</dt>
    <dd>Provides any reference material for the example.</dd>
    <dt>problem</dt>
    <dd>Describes the given information of the example.</dd>
    <dt>calcs</dt>
    <dd>Contains the engineering calculations (where directly included) for the results of the example.</dd>
    <dt>comparison</dt>
    <dd>Contains comparisons of the results between the software and the reference and/or calculations.</dd>
    <dt>input</dt>
    <dd>Example of the software input used to generate the results.</dd>
    <dt>output</dt>
    <dd>The software output used in the results comparison.</dd>
</dl>

## Example

```
<verification id="verification">
 <title>Verification</title>
 <shortdesc>Verify the summation of two numbers.</shortdesc>
 <verbody>
  <reference id="reference_azc_x5y_cjb">
   <title>Reference</title>
   <ul>
    <li><cite>Math Grade 1</cite>, Second Edition. McGraw-Hill Education. 2017.</li>
   </ul>   
  </reference>
  <problem>
   <title>Given</title>
   <p>Find the sum of <equation-inline>5 + 6</equation-inline>.
   </p>
  </problem>
  <calcs>
   <section>
    <title>Calculations</title>
    <p>Count the total tic marks:</p>
    <sl>
     <sli>|||||</sli>
     <sli>||||||</sli>
    </sl>
    <p>Result: ||||| |||||| = 11</p>       
   </section>
  </calcs>
  <comparison>
   <title>Comparison</title>
   <p>The program gives the result of 11. No difference</p>
  </comparison>
 </verbody>
</verification>
```