{% if item.todo.length > 0 %}
  <div class="item__todos">
    <strong>TODO's</strong>
    <ul class="list-unstyled">
      {% for todo in item.todo %}
        <li>{{ todo|safe }}</li>
      {% endfor %}
    </ul>
  </div>
{% endif %}
