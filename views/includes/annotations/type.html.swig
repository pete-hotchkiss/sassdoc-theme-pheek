{% if item.type %}
    <div class="item__row-item">
  <h3 class="item__sub-heading">Type</h3>

  <p>
  {% if item.type == "*" %}
    Any
  {% else %}
    <code>{{ item.type | display_as_type }}</code>
  {% endif %}
  </p>
  </div>
{% endif %}
