
This is the order of dependencies for all Legion sub-projects. When building a
new release, we should update dependencies in this order (from top to bottom):

This is also an order in which you might try to familiarize yourself with
the libraries, especially if you want to contribute to the project and
understand it from the bottom up.

First Tier
----------

These libraries have no dependencies on any other legion project.

 * legion-metrics
 * legion-io
 * legion-obstacle-course

Second Tier
-----------

These libraries depends on projects in the first tier.

 * legion-instrument
 * legion-capture

Third Tier
----------

These libraries depend on projects in the first and second tiers.

 * legion
 * legion-io-fetch

Stable Release
--------------

This is how we package legion as a sensible set of libraries that
work well together:

 * legion-starter-pack
