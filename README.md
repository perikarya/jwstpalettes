# jwstpalettes

jwstpalettes is an r package of colour palettes inspired by images from nasa's james webb space telescope. v0.1.0, more palettes and features will be added soon.

<h1>installation</h1>
install using devtools <br><br>

```
devtools::install_github("perikarya/jwstpalettes")
```

<h1>usage</h1>
<b>jwstpalette(name, n, type):</b> where name is the name of the palette, n is the number of colours, and type can be "discrete" or "continuous" <br><br>

<h1>examples</h1>

```
library(jwst_palettes)
plot(dist ~ speed, data = cars, pch = 19, col = jwst_palette("carina", 3))
```
<img width="300" alt="image" src="https://user-images.githubusercontent.com/40226185/201569100-782bc3a9-ba4a-4f4a-b739-200977d41ad8.png">

```
hist(cars$speed, breaks = 25, main = "", xlab = "Speed", col = jwst_palette("tarantula2", 25, type = "continuous"))
```
<img width="300" alt="image" src="https://user-images.githubusercontent.com/40226185/201570499-720ed992-ce81-4cf8-a436-a5fc4f079542.png">

```
levelplot(volcano, col.regions = jwst_palette("dimorphos", 100, type = "continuous"))
```
<img width="300" alt="image" src="https://user-images.githubusercontent.com/40226185/201571760-4940f14a-f161-4066-88d2-af7fe19049c2.png">

```
ggplot(data = diamonds, aes(x = cut, group = clarity, fill = clarity)) +
geom_density(adjust = 3, position = "stack", alpha = 0.8, color = NA) +
scale_fill_discrete(type = jwst_palette("neptune")) + 
theme(panel.grid.minor = element_blank())
```
<img width="300" alt="image" src="https://user-images.githubusercontent.com/40226185/201614015-0e45ad64-1b03-49e6-a864-044c701094d6.png">

<h1>current palettes</h1>

neptune <br/>
<img width="394" alt="image" src="https://user-images.githubusercontent.com/40226185/198862767-c4871c62-b075-4ffc-9b63-c2e63fc14594.png">

dimorphos <br/>
<img width="394" alt="image" src="https://user-images.githubusercontent.com/40226185/198862770-1db034a7-c574-4dd3-ba36-bbd37546c73d.png">

carina <br/>
<img width="394" alt="image" src="https://user-images.githubusercontent.com/40226185/198862789-2774392a-7afa-46b9-886f-e8ea35176f44.png">

dustring <br/>
<img width="394" alt="image" src="https://user-images.githubusercontent.com/40226185/198862803-e71830b3-07e3-41de-bc41-a6134044e14a.png">

tarantula1 <br/>
<img width="394" alt="image" src="https://user-images.githubusercontent.com/40226185/198862830-19dc647a-63ca-4051-a8bd-1f60b1f18172.png">

tarantula2 <br/>
<img width="394" alt="image" src="https://user-images.githubusercontent.com/40226185/198862818-b405df6a-ffdf-4096-80f2-dbd228ca3552.png">

tarantula3 <br/>
<img width="394" alt="image" src="https://user-images.githubusercontent.com/40226185/198862856-86a870c1-17a7-4ee9-9a0d-7d3bff417df9.png">
