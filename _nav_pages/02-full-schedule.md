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

<!-- 
{% assign sessions = site.sessions | sort: "title" %}
{% for session in sessions %}
  <h2 id="{{ session.id }}">{{ session.title }}</h2>
  <h3>Presented by {{session.presenters | array_to_sentence_string }}</h3>
  {{ session.content }}
  {% for presenterName in session.presenters %}
    {% assign presenter = site.presenters | where: "name", presenterName | first %}
    <div class="media">
      <div class="media-left"><img class="media-object" src="{{ presenter.image }}"></img></div>
      <div class="media-body">
        <h4 class="media-heading">{{ presenter.name }}</h4>
        {{ presenter.content }}
      </div>
    </div>
  {% endfor %}
{% endfor %} -->