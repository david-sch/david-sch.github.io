---
permalink: /
author_profile: true
redirect_from: 
  - /about/
  - /about.html
  - /publications/
  - /publications.html
---

I study how public goods such as schools, roads, public safety, or public transit can be provided efficiently. I also investigate how states evolved to provide these services. My work lies primarily in public economics and political economy, with further interests in development, urban, and history. I frequently combine big spatial data with both reduced-form and structural microeconomic methods.

I am an Assistant Professor in the [Economics Department](https://dornsife.usc.edu/econ/) at the University of Southern California. I am also a member of [NBER](https://www.nber.org/people/david_schonholzer_1), [CESifo](https://www.ifo.de/en/cesifo/network-member/schonholzer-david), and [CEGA](https://cega.berkeley.edu/person/david-schonholzer/). I completed my PhD in Economics at UC Berkeley in 2018. My [CV]({{ base_path }}/files/DavidSchonholzerCV.pdf) is here.

**Contact:** [dschonho@usc.edu](mailto:dschonho@usc.edu)<br>
USC Department of Economics, Kaprielian Hall Office 306C, 3620 S Vermont Ave, Los Angeles, CA 90089

{% include base_path %}

<img src="{{ base_path }}/images/leviathan_banner.jpg" alt="Detail from the frontispiece of Leviathan by Thomas Hobbes" style="width:100%; margin:1.8em 0;">

<span id="research"></span>

{% for category in site.publication_category %}{% assign title_shown = false %}{% for post in site.publications reversed %}{% if post.category != category[0] %}{% continue %}{% endif %}{% unless title_shown %}
<h3>{{ category[1].title }}</h3>
{% assign title_shown = true %}{% endunless %}{% include archive-single.html %}{% endfor %}{% endfor %}

<img src="{{ base_path }}/images/leviathan_bottom.jpg" alt="Detail from the frontispiece of Leviathan by Thomas Hobbes" style="width:100%; margin:2.5em 0 0.6em;">

<p style="font-size:0.72em; color:#888; text-align:center; margin-top:0;">Image credit: part of the frontispiece of <em>Leviathan</em> by Thomas Hobbes; engraving by Abraham Bosse. &ldquo;The skill of making, and maintaining Common-wealths, consisteth in certain Rules, as doth Arithmetique and Geometry.&rdquo;</p>
