<a class="item__name" href="#{{ item.context.type }}-{{ item.context.name }}"></a>
<h3 class="item__heading">
  {% if item.access != "public" %}
    <span class="item__access">[{{ item.access }}]</span>
  {% endif %}

<div class="item__name">{% if item.context.type == 'variable' %}${% endif %}{{ item.context.name }}</div>

  {% if display.alias and item.aliased.length > 0 %}
    <span class="item__aliased">aliased as
    {% if item.aliasedgroup %}
      {% for alias in item.aliasedgroup %}
        <a href="#{{ alias.group }}-{{ item.context.type }}-{{ alias.name }}"><code>{{ alias.name }}</code></a>
      {% endfor %}
    {% else %}
      {% for alias in item.aliased %}
        <a href="#{{ alias.group }}-{{ item.context.type }}-{{ alias.name }}"><code>{{ alias.name }}</code></a>
      {% endfor %}
    {% endif %}
    </span>
  {% endif %}

  {% if item.alias %}
    <span class="item__alias">alias for <a href="#{{ item.context.type }}-{{ item.alias }}"><code>{{ item.alias }}</code></a> </span>
  {% endif %}
</h3>

{% if item.since.length == 1 %}
<span class="item__since">Added in version: {{ item.since[0].version }}{% if item.since[0].description %} &mdash; {{ item.since[0].description }}{% endif %}</span>
{% endif %}
