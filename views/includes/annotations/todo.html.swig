{% if item.todo.length > 0 %}
  <div class="item__row-item">
  <h3 class="item__sub-heading">TODO's</h3>
  <div class="item__todo">
  <ul class="list-unstyled">
    {% for todo in item.todo %}
      <li>{{ todo|safe }}</li>
    {% endfor %}
  </ul>
  </div>
  </div>
{% endif %}
