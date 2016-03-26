---
layout: page
title: Arcade
permalink: /arcade/
---
<p class="text-center">
  <img src="/images/construction.gif" alt="still working"> Under construction - keep checking here for updates! <img src="/images/construction.gif" alt="come back soon">
</p>
<br>

<section class="arcade">
  {% for game in site.games %}
  <div class="game" id="{{ game.id }}">
    <a href="#{{ game.id }}" title="permalink">
      <small>
        <i class="text-muted glyphicon glyphicon-link"></i>
      </small>
    </a>

    {% capture default_link %}#{{ game.id }}{% endcapture %}
    <a href="{{ game.website | default: game.team_website | default: default_link }}">
      <strong>{{ game.title }}</strong>
    </a>
    by
    <a href="{{ game.team_website | default: default_link }}">
      {{ game.presenters }}
    </a>

    <p> {{ game.content }} </p>
  </div>
  <br>
  {% endfor %}
</section>
