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
      <h2 id="{{ session.id }}" class="session-title">{{ session.title }}</h2>
      <h3 class="session-time">{{ session.time }}</h3> <h3 class="session-room">{{ session.room }}</h3>
    </hgroup>
    <ul class="talks">
      {% for talkName in session.talks %}
      {% assign talk = site.talks | where: "title", talkName | first %}
      <li class="talk-listing">
        <h3 class="talk-title">{{ talk.title }}</h3>
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