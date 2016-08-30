{% set title_displayed = false %}

{% for usedBy in item.usedBy %}
  {% if not title_displayed %}
    {% set title_displayed = true %}
    <div class="item__row-item">
      <h3 class="item__sub-heading">Used by</h3>
      <div class="item__description">
        <ul class="list-unstyled">
  {% endif %}

  {% if (display.access.indexOf(usedBy.access) != -1) and not (not display.alias and usedBy.alias) %}



    <li><span class="item__cross-type">[{{ usedBy.context.type }}]</span> <a href="#{{ usedBy.group }}-{{ usedBy.context.type }}-{{ usedBy.context.name }}"><code>{{ usedBy.context.name }}</code></a></li>
  {% endif %}

{% endfor %}

{% if title_displayed %}
</ul>
</div></div>
{% endif %}
