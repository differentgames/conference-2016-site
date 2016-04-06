---
layout: page
title: Sponsors
permalink: /sponsors/
---

<p class="text-center">We sincerely thank our sponsors for 2016! Without them, Different Games Conference 2016 wouldn't have been possible.</p>


<section class="sponsors">
  {% for sponsor in site.sponsors %}
  <div class="row sponsor">
    <a href="{{ sponsor.website }}">
      <img class="img-responsive col-md-6 col-md-offset-3" alt="{{ sponsor.name}}" src="{{ sponsor.image }}" />
    </a>
  </div>
  {% endfor %}
</section>
