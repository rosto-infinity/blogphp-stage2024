<?php

function render( string $path, array $variables = []){

// ['var1' => 1, 'var2' => 2, 'var3' => 3]
// 'var1'= 1
// 'var2'= 2
// 'var3'= 3

extract($variables); // Transforme les clés en variables et les assigne à la variable correspondante

ob_start(); // Démarre une nouvelle tamponnage

require"templates/" . $path. "_html.php"; // Charge le template HTML

$pageContent = ob_get_clean();
require"templates/layout_html.php";

}
function redirect(string $url){
  header("Location: $url");
  exit();
}