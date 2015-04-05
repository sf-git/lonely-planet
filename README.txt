= lonely_planet

== DESCRIPTION:

We have two (admittedly not very clean) .xml files from our legacy CMS system - spec/data/taxonomy.xml holds the information about how destinations are related to each other and spec/data/destinations.xml holds the actual text content for each destination.

We would like you to create a batch processor that takes these input files and produces an .html file (based on the output template given with this test) for each destination. Each generated web page must have:
* Some destination text content. Use your own discretion to decide how much information to display on the destination page.
* Navigation that allows the user to browse to destinations that are higher in the taxonomy. For example, Beijing should have a link to China.
* Navigation that allows the user to browse to destinations that are lower in the taxonomy. For example, China should have a link to Beijing.

== FEATURES/PROBLEMS:

== REQUIREMENTS:

The batch processor should take the location of the two input files and the output directory as parameters.

These sample input files contain only a small subset of destinations.  We will test your software on the full Lonely Planet dataset, which currently consists of almost 30,000 destinations.

To submit your code, either ZIP it up and email it to the address below, or give us a link to your github repo.

When we receive your project the code will be:
* Built and run against the dataset supplied.
* Evaluated based on coding style and design choices in all of these areas:
    * Readability.
    * Simplicity.
    * Extensibility.
    * Reliability.
    * Performance.

Feedback at this stage will be provided to all candidates if requested.

If the code evaluation goes well we will invite you in to implement some new requirements within your original project. You can choose to bring in your own laptop with your development environment loaded if you are more comfortable with that, or we can provide you with an iMac and Sublime Text 2.

If you have any questions about this test feel free to email: adel.smee@lonelyplanet.com.au

== INSTALL:

* FIX (sudo gem install, anything else)

== DEVELOPERS:

After checking out the source, run:

  $ rake newb

This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

== LICENSE:

(The MIT License)

Copyright (c) 2015 FIX

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
