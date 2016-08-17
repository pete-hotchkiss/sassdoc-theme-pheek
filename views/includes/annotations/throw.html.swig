{% if item.throw.length > 0 %}
<div class="item__row-item">
  <h3 class="item__sub-heading">Throws</h3>
  <div class="item__throw">
  <ul class="list-unstyled">
    {% for _throw in item.throw %}
      <li>{{ _throw|safe }}</li>
    {% endfor %}
  </ul>
  </div>
<div>
{% endif %}
