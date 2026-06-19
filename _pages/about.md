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

<h2 id="research" style="border-bottom: 2px solid #ddd; padding-bottom: 0.3em;">Research</h2>

{% for category in site.publication_category %}
  {% assign title_shown = false %}
  {% for post in site.publications reversed %}
    {% if post.category != category[0] %}{% continue %}{% endif %}
    {% unless title_shown %}<h3>{{ category[1].title }}</h3>{% assign title_shown = true %}{% endunless %}
    {% include archive-single.html %}
  {% endfor %}
{% endfor %}
