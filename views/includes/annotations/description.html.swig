{% if item.description %}
<div class="item__row-item">
  <h3 class="item__sub-heading">Description</h3>
  <div class="item__description">{{ item.description|safe }}</div>
</div>
{% endif %}
