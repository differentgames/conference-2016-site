---
layout: page
title: Full Schedule
permalink: /schedule/
---
{% assign sessions = site.sessions | sort: "title" %}
{% for session in sessions %}
  <h2 id="{{ session.id }}">{{ session.title }}</h2>
  {% for talk in talks %}
    <h3>Talk title: {{ talk.title }}</h3>
  {% endfor %}
{% endfor %}

