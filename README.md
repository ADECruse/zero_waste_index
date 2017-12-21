README
======

A Zero Waste Index for Bristol City (WIP)
-----------------------------------------

This App's goal is to provide a searchable index of food products that have zero or minimal packaging and where they can be found for sale in the city of Bristol, UK.

Based on the Zero Waste philosophy, which you can read about [here](https://en.wikipedia.org/wiki/Zero_waste), my friend wanted an easier way to shop according to this philosophy in Bristol. So he asked me to help him to design and build this App.

Built using the Rails 5 and Bootstrap frameworks.

Features
--------

### Completed

* Search and find products by name e.g "Apple".

* Displays product information using Bootstrap's card styles.

* Each product has a picture, description, star rating, and whether the packaging is plastic free.

* Currently can import product data from a Excel style .CSV document.

### To-Do

* Add store location database linked with the product database using a has_many relationship.

* Connect the Google Maps API so users can use maps to find each products store.

* Add a tagging system so each product can be found using a keyword e.g "Fruit" would find "Apple".
