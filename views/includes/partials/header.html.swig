<header class="header" role="banner">
  <div class="push-right brand__heading">
    <div class="sidebar__logo"><img src="/assets/images/{{ brand_logo }}"/></div>
    <div class="project--header">
      <h1 class="sidebar__title">
        {% if package.homepage %}
          <a href="{{ package.homepage }}">{{ project_title }}{% if package.version %} - v{{ package.version }}{% endif %}</a>
        {% else %}
      {{ sass_title }}{% if package.version %} - <span class="versionno">{{ package.version }}</span>{% endif %}
        {% endif %}
      </h1>
    </div>
    {# <div class="sassdoc__searchbar  searchbar">
       <label for="js-search-input" class="visually-hidden">Search</label>
       <div class="searchbar__form" id="js-search">
         <input name="search" type="search" class="searchbar__field" autocomplete="off" autofocus id="js-search-input" placeholder="Search" />
         <ul class="searchbar__suggestions" id="js-search-suggestions"></ul>
       </div>
     </div> #}
  </div>
</header>
