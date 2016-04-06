---
layout: page
title: Full Schedule
permalink: /schedule/
---
<section class="full-schedule">
  {% assign sessions = site.sessions %}
  {% for session in sessions %}
  <div class="session">
    <hgroup>
      <h2 id="{{ session.anchor }}" class="session-title">{{ session.title }}</h2>
      <h3 class="session-time">{{ session.time }}</h3>
      <h3 class="session-room">{{ session.room }}</h3>
      {% if session.track == "Affective Play" %}
        <h3 class='affective-play'>{{session.track}}</h3>
      {% endif %}
      {% if session.track == "Race and Culture in Games" %}
        <h3 class='race-culture-games'>{{session.track}}</h3>
      {% endif %}
      {% if session.track == "Player Agency, Mods, and Glitches" %}
        <h3 class='player-agency-mods-glitches'>{{session.track}}</h3>
      {% endif %}
      {% if session.track == "Video Games in Latin America" %}
        <h3 class='video-games-in-latin-america'>{{session.track}}</h3>
      {% endif %}
      {% if session.track == "Video Games & Indigenous Culture" %}
        <h3 class='video-games-and-indigenous-culture'>{{session.track}}</h3>
      {% endif %}
      {% if session.track == "Participatory Game Design" %}
        <h3 class='participatory-game-design'>{{session.track}}</h3>
      {% endif %}
      {% if session.track == "Accessible Game Design" %}
        <h3 class='accessible-game-design'>{{session.track}}</h3>
      {% endif %}
      {% if session.track == "General" %}
        <h3 class='general'>{{session.track}}</h3>
      {% endif %}
    </hgroup>
    <ul class="talks">
      {% for talkName in session.talks %}
      {% assign talk = site.talks | where: "title", talkName | first %}
      <li class="talk-listing">
        <a href="{{ talk.url }}"><h3 class="talk-title">{{ talk.title }}</h3></a>
        <ul class="presenters">
          {% for presenter in talk.presenters %}
            <li class="presenter">{{ presenter }}</li>
          {% endfor %}
        </ul>
        <div class="talk-content"> {{ talk.content }}</div>
      </li>
      {% endfor %}
    </ul>
  </div>
  <hr>
  {% endfor %}

</section>
