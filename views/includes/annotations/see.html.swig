{% set title_displayed = false %}
{% for see in item.see %}

{% if not title_displayed %}
  {% set title_displayed = true %}
  <div class="item__row-item">
    <h3 class="item__sub-heading">See</h3>
      <div class="item__description">
      <ul class="list-unstyled list-unstyled--narrow">
{% endif %}
  {% if (display.access.indexOf(see.access) != -1) and not (not display.alias and see.alias) %}


        <li><span class="item__cross-type">[{{ see.context.type }}]</span> <a href="#{{ see.group }}-{{ see.context.type }}-{{ see.context.name }}"><code>{{ see.context.name }}</code></a></li>
  {% endif %}

{% endfor %}

{% if title_displayed %}
</ul>
</div>
</div>
{% endif %}
