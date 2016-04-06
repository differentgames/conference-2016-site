---
layout: page
title: Arcade
permalink: /arcade/
---
<section class="arcade">
  {% for game in site.games %}

  <div class="game media">
    <div class="media-left col-xs-4">
      <a href="{{ game.url }}">
        <img class="media-object image-responsive" src="{{ game.images | first | default: "/images/games/default.png" }}" alt="{{ game.title | escape }}" style="width: 100%;">
      </a>
    </div>
    <div class="media-body">
      <a href="{{ game.url }}">
        <h3 class="media-heading">{{ game.title }} <small>by {{ game.presenters }}</small></h3>
      </a>
      <p>
        {{ game.content | truncatewords: 30 }} <a href="{{ game.url }}">(read more)</a>
      </p>
    </div>
  </div>
  <br>

  {% endfor %}
</section>
