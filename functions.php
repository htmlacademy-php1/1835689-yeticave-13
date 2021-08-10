<?php

function formate_cost($form_cost) {
    $form_cost = ceil($form_cost);
    $form_cost = ($form_cost < 1000) ? $form_cost : number_format($form_cost, 0, '', ' ');
    return $form_cost . ' ' . '&#8381';
};
?>