<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <title>Ihor Rusenko. Full stack WEB developer</title>

	<meta itemprop="name" content="Ihor Rusenko. Full stack WEB developer">
	<meta itemprop="description" content="Site about me, my hobbies and my little tools">
	<meta itemprop="image" content="/images/socimg.jpg">

	{% if false %}
		<meta property="og:url" content="https://rim.lv/" />
		<meta property="og:type" content="website" />
		<meta property="og:title" content="Site about me, my hobbies and my little tools" />
		<meta property="og:description" content="Сайт портфолио front-end разработчика сайтов, я веб-разработчик фрилансер специализация front-end developer,а также на сайте есть мой блог веб разработчика!" />
		<meta property="og:image" content="/images/socimg.jpg" />        
    {% endif %}

    <link rel="preload" href="{{ url('css/fonts.min.css') }}" as="style" onload="this.rel='stylesheet'"/>
    <link rel="stylesheet" href="{{ url('css/style.css') }}" />
  </head>
  <body>
    <div class="container">
      <header>Ihor Rusenko</header>
      <section>

	  	{{ content() }}

      </section>
      <footer>Copyright &copy; {{ date('Y') }} by Ihor Rusenko.</footer>
    </div>
  </body>
</html>
