---
layout: page
title: Arcade
permalink: /arcade/
---
<p class="text-center">
  <img src="/images/construction.gif" alt="still working"> Under construction - keep checking here for updates! <img src="/images/construction.gif" alt="come back soon">
</p>
<br>

<section class="arcade" id="arcade">
  {% for game in site.games %}
  <div class="game">
    <a href="{{ game.website | default: game.team_website | default: "#arcade" }}">
      <strong>{{ game.title }}</strong>
    </a>
    by
    <a href="{{ game.team_website | default: "#arcade" }}">
      {{ game.presenters }}
    </a>

    <p> {{ game.content }} </p>
  </div>
  <br>
  {% endfor %}
</section>
