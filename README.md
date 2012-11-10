offline-pages
=============

Save a bunch of web pages as a self-contained, compressed archive file for offline storage and sharing.

Installation
------------

git clone git://github.com/iandennismiller/offline-pages.git
cd offline-pages
sudo make install

What is it?
-----------

Offline-pages lets you save an entire website to a file, along with all the required media you'll need to view the pages offline.  It's like your browser's "Save Page As" feature, except it isn't limited to one page so it can handle entire websites.  The archive can be browsed offline, and all the inter-links will point within the archive (i.e. it is self-contained).

Usage
-----

Let's say you want to mirror the wikipedia article for "Webarchive".  

### First create a file containing target URLs

This file can contain as many URLs as you want; they will all be added to the same archive.

```
echo http://en.wikimedia.org/wikipedia/en/wiki/Webarchive > urls.txt
```

### Next, use this file as input to the `offline-create` program:

```
offline-create ./urls.txt wikipage
```

### Finally, view the results

```
offline-browse wikipage.archive.tgz
```

Use Cases
---------

### Archiving a forum thread

So there is a forum thread consisting of hundreds of posts, and it spans dozens of pages.  Offline-pages can create a fully self-contained mirror of all these pages, such that the offline version can be navigated much like the online version.
