<?php

require 'Zend/Locale.php';

$locale = new Zend_Locale();

$lang = 'en';

$countries = ($locale->getTranslationList('Territory', $lang, 2));
asort($countries, SORT_LOCALE_STRING);

foreach($countries as $code => $name) {
    print $code.'|'.$name."<br />\n";
}
