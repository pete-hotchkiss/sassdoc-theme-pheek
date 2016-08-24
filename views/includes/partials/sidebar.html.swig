<div class="sidebar__body">
  {# No item documented #}
  {% if data.length == 0 %}
    <p class="sidebar__item  sidebar__item--heading">No documented item.</p>

  {# Some items documented #}
  {% else %}
    <div class="sidebar__logo"><img src="assets/images/logo.png"/></div>
    {# <button type="button" class="btn-toggle  js-btn-toggle" data-alt="Open all">Close all</button> #}

    <div class="sassdoc__searchbar  searchbar">
       <label for="js-search-input" class="visually-hidden">Search</label>
       <div class="searchbar__form" id="js-search">
         <input name="search" type="search" class="searchbar__field" autocomplete="off" autofocus id="js-search-input" placeholder="Search" />
         <ul class="searchbar__suggestions" id="js-search-suggestions"></ul>
       </div>
     </div>

    {# Loop over the groups #}
    {% for group_name, group in data.byGroupAndType %}
    <div>
      <p class="sidebar__item  sidebar__item--heading" data-slug="{{ group_name }}"><a href="#{{ group_name }}">{{ groups[group_name] }}</a></p>

      {# Loop over the types #}
      {% for type, items in group %}
        {% if loop.first %}<div>{% endif %}

        {# If items to be displayed in type #}
        {% if items.length > 0 %}
          <p class="sidebar__item  sidebar__item--sub-heading" data-slug="{{ group_name + '-' + type }}"><a href="#{{ group_name }}-{{ type }}">{{ (type + 's') }}</a></p>

          {# Loop over the items #}
          {% for item in items %}
            {% if loop.first %}<ul class="list-unstyled">{% endif %}
            <li class="sidebar__item  sassdoc__item" data-group="{{ group_name }}" data-name="{{ item.context.name }}" data-type="{{ item.context.type }}"

            {% if group_name == 'colours' %}
            data-value="{{ item.item.resolvedValue }}"
            {% endif %} >
              <a href="#{{ group_name }}-{{ item.context.type }}-{{ item.context.name }}">{{ item.context.name }}
              {% if item.access[0] == "private" %}<span class="sidebar__annotation  sidebar__annotation--private">private</span>{% endif %}
              {% if item.alias != false %}<span class="sidebar__annotation  sidebar__annotation--alias">alias</span>{% endif %}
              </a>
              {% if group_name == 'colours' %}
              <div style="border-color: {{ item.resolvedValue }}" class="sidebar__color-preview" />
              {% endif %}
            </li>
            {% if loop.last %}</ul>{% endif %}
          {% endfor %}
        {% endif %}
        {% if loop.last %}</div>{% endif %}
      {% endfor %}
    </div>
    {% endfor %}
  {% endif %}
</div>
