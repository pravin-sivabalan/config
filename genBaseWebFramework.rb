puts "What is the name of the folder?"
folder = gets.chomp

`mkdir #{folder} #{folder}/css #{folder}/js #{folder}/res #{folder}/res/img`

`touch #{folder}/index.html #{folder}/css/style.scss #{folder}/js/script.js`

html = "<!DOCTYPE html>
<html>
<head>
	<meta charset=\"utf-8\">

	<title></title>

	<link rel=\"stylesheet\" href=\"./css/style.min.css\">
	<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css\" integrity=\"sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd\" crossorigin=\"anonymous\">	<script src=\"./js/script.js\"></script>
  <script src=\"js/script.js\"></script>
</head>
<body>

</body>
</html>"

File.open("#{folder}/index.html", 'w') {
  |file| file.write("#{html}")
}
