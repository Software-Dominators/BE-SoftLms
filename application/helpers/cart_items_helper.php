<?php

function cart_items_add($type, $id, $remove_if_exists = false)
{
    $CI = &get_instance();

    $cart_items = $CI->session->userdata('cart_items') ?: [];

    $cart_item_index = cart_items_get_index($type, $id);

    $cart_item_exist = $cart_item_index !== null;
    if ($cart_item_exist) {
        if ($remove_if_exists) {
            unset($cart_items[$cart_item_index]);
        }
    } else {
        $cart_items[] = [
            'type' => $type,
            'id' => $id,
        ];
    }

    $cart_items = array_values($cart_items);

    $CI->session->set_userdata('cart_items', $cart_items);

    return $cart_items;
}

function cart_items_get_index($type, $id)
{
    $CI = &get_instance();

    $cart_items = $CI->session->userdata('cart_items') ?: [];

    foreach ($cart_items as $index => $cart_item) {
        if ($cart_item['type'] == $type && $cart_item['id'] == $id) {
            return $index;
        }
    }

    return null;
}

function cart_items_get_item_details($cart_item = null)
{
    $CI = &get_instance();

    if (is_null($cart_item)) {
        $cart_items = $CI->session->userdata('cart_items') ?: [];

        $cart_item = $cart_items[0] ?? null;
    }

    if (!$cart_item) {
        return null;
    }

    $course_details = null;
    $section_details = null;
    $lesson_details = null;
    $price = 0;

    if ($cart_item['type'] == 'course') {
        $course_details = $CI->crud_model->get_course_by_id($cart_item['id'])->row_array();
        $price = $course_details['discount_flag'] == 1 ? $course_details['discounted_price'] : $course_details['price'];
    }

    if ($cart_item['type'] == 'section') {
        $section_details = $CI->crud_model->get_section('section', $cart_item['id'])->row_array();
        $course_details = $CI->crud_model->get_course_by_id($section_details['course_id'])->row_array();
        $price = $course_details['section_price'];
    }

    if ($cart_item['type'] == 'lesson') {
        $lesson_details = $CI->crud_model->get_lessons('lesson', $cart_item['id'])->row_array();
        $section_details = $CI->crud_model->get_section('section', $lesson_details['section_id'])->row_array();
        $course_details = $CI->crud_model->get_course_by_id($lesson_details['course_id'])->row_array();
        $price = $course_details['lesson_price'];
    }

    return [
        'cart_item' => $cart_item,
        'course_details' => $course_details,
        'section_details' => $section_details,
        'lesson_details' => $lesson_details,
        'price' => $price,
    ];
}

function cart_items_get_first_item_course_id()
{
    $CI = &get_instance();

    $CI->session->userdata('cart_items') ?: [];

    $cart_item = cart_items_get_item_details();

    if (!$cart_item) null;

    return $cart_item['course_details']['id'];
}

function cart_items_get_total()
{
    $CI = &get_instance();

    $cart_items = $CI->session->userdata('cart_items') ?: [];

    $total = 0;
    foreach ($cart_items as $cart_item) {
        $cart_item_details = cart_items_get_item_details($cart_item);
        $total += $cart_item_details['price'];
    }

    return $total;
}
