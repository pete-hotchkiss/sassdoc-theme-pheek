{% if 'content'|in(item) %}
<div class="item__row-item">
  <h3 class="item__sub-heading">Content</h3>

  <p>This mixin allows extra content to be passed (through the <code>@content</code> directive).{% if item.content !== "" %} Role: {{ item.content }}</p>
</div>
{% endif %}
