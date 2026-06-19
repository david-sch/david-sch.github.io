---
permalink: /
author_profile: true
redirect_from: 
  - /about/
  - /about.html
  - /publications/
  - /publications.html
---

<h3>Assistant Professor of Economics, USC</h3>

I study how public goods such as schools, roads, public safety, or public transit can be provided efficiently. I also investigate how states evolved to provide these services. My work lies primarily in public economics and political economy, with further interests in development, urban, and history. I frequently combine big spatial data with both reduced-form and structural microeconomic methods.

I am an Assistant Professor in the [Economics Department](https://dornsife.usc.edu/econ/) at the University of Southern California. I am also a member of [NBER](https://www.nber.org/people/david_schonholzer_1), [CESifo](https://www.ifo.de/en/cesifo/network-member/schonholzer-david), and [CEGA](https://cega.berkeley.edu/person/david-schonholzer/). I completed my PhD in Economics at UC Berkeley in 2018. My [CV]({{ base_path }}/files/DavidSchonholzerCV.pdf) is here.

**Contact:** [dschonho@usc.edu](mailto:dschonho@usc.edu)<br>
USC Department of Economics, [Kaprielian Hall Office 306C, 3620 S Vermont Ave, Los Angeles, CA 90089](https://www.google.com/maps/search/?api=1&query=Kaprielian+Hall+USC+3620+S+Vermont+Ave+Los+Angeles)

{% include base_path %}

<span id="research"></span>

{% for category in site.publication_category %}<section class="pub-section pub-{{ category[0] }}">
<h3>{{ category[1].title }}</h3>
{% for post in site.publications reversed %}{% if post.category == category[0] %}{% include archive-single.html %}{% endif %}{% endfor %}
</section>
{% endfor %}
