# Scrapper for y0utub3

This is a simple script for scrapping youtube channel/list ids in RSS based response
The RSS data will be converted to the format required for the downloader

```
<entry>
<id>yt:video:XlCQGjcPIiA</id>
<yt:videoId>XlCQGjcPIiA</yt:videoId>
<yt:channelId>UCdulIs-x_xrRd1ezwJZR9ww</yt:channelId>
<title>Curso Excel 2010 Básico. Presentación.</title>
<link rel="alternate" href="https://www.youtube.com/watch?v=XlCQGjcPIiA"/>
<author>
<name>pildorasinformaticas</name>
<uri>
https://www.youtube.com/channel/UCdulIs-x_xrRd1ezwJZR9ww
</uri>
</author>
<published>2013-12-18T16:08:35+00:00</published>
<updated>2017-05-06T02:36:15+00:00</updated>
<media:group>
<media:title>Curso Excel 2010 Básico. Presentación.</media:title>
<media:content url="https://www.youtube.com/v/XlCQGjcPIiA?version=3" type="application/x-shockwave-flash" width="640" height="390"/>
<media:thumbnail url="https://i1.ytimg.com/vi/XlCQGjcPIiA/hqdefault.jpg" width="480" height="360"/>
<media:description>
Comenzamos un nuevo curso de Excel 2010 Básico. Este curso comienza desde 0 y es apto para personas con nulos o muy pocos conocimientos del programa.
</media:description>
<media:community>
<media:starRating count="1350" average="4.94" min="1" max="5"/>
<media:statistics views="306872"/>
</media:community>
</media:group>
</entry>
```

is transformed to
```

https://www.youtube.com/watch?v=XlCQGjcPIiA,Curso_Excel_2010_Basico._Presentacion.
```
