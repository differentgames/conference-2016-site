---
layout: page
title: Full Schedule
permalink: /schedule/
---
{% assign sessions = site.sessions %}
{% for session in sessions %}
  <h2 id="{{ session.id }}">{{ session.title }}, {{ session.time }}, {{ session.room }}</h2>
  <ul>
    {% for talkName in session.talks %}
    {% assign talk = site.talks | where: "title", talkName | first %}
    <li>
      <h3>{{ talk.title }}</h3>
      <ul>
        {% for presenter in talk.presenters %}
          <li>{{ presenter }}</li>
        {% endfor %}
      </ul>
      <p> {{ talk.content }}</p>
    </li>
    {% endfor %}
  </ul>
{% endfor %}

