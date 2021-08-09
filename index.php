<?php

require_once('helpers.php');
require_once('data.php');
require_once('functions.php');

$page_content = include_template('main.php', [
    'categories' => $categories,
    'lots' => $lots
]);

$layout_content = include_template('layout.php', [
    'content' => $page_content,
    'title' => 'YetiCave',
    'categories' => $categories,
    'is_auth' => $is_auth,
    'user_name' => $user_name
    ]);

    print($layout_content);
    ?>