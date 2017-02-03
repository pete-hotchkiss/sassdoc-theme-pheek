<header class="header" role="banner">
  <div class="push-right brand__heading">
    <div class="sidebar__logo"><img src="/assets/images/{{ brand_logo }}"/></div>
    <div class="project--header">
      <h1 class="sidebar__title">

      {{ sass_title }}{% if package.version %} <span class="versionno">{{ package.version }}</span>{% endif %}
      </h1>
    </div>
  </div>
</header>
