# Lonely Planet Coding Exercise

Description
-----------

We have two (admittedly not very clean) .xml files from our legacy CMS system - spec/data/taxonomy.xml holds the information about how destinations are related to each other and spec/data/destinations.xml holds the actual text content for each destination.

We would like you to create a batch processor that takes these input files and produces an .html file (based on the output template given with this test) for each destination. Each generated web page must have:
i. Some destination text content. Use your own discretion to decide how much information to display on the destination page.
ii. Navigation that allows the user to browse to destinations that are higher in the taxonomy. For example, Beijing should have a link to China.
iii. Navigation that allows the user to browse to destinations that are lower in the taxonomy. For example, China should have a link to Beijing.

Constraints
-----------

The batch processor should take the location of the two input files and the output directory as parameters.

These sample input files contain only a small subset of destinations.  We will test your software on the full Lonely Planet dataset, which currently consists of almost 30,000 destinations.

Deliverables
------------

To submit your code, either ZIP it up and email it to the address below, or give us a link to your github repo.

When we receive your project the code will be:
i.	Built and run against the dataset supplied.
ii.	Evaluated based on coding style and design choices in all of these areas:
 * a.	Readability.
 * b.	Simplicity.
 * c.	Extensibility.
 * d.	Reliability.
 * e.	Performance.

Feedback at this stage will be provided to all candidates if requested.

If the code evaluation goes well we will invite you in to implement some new requirements within your original project. You can choose to bring in your own laptop with your development environment loaded if you are more comfortable with that, or we can provide you with an iMac and Sublime Text 2.

If you have any questions about this test feel free to email: adel.smee@lonelyplanet.com.au
