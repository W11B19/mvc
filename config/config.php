<?php

Config::set('site_name', 'Your Site Name');

Config::set('languages', array('ru', 'en'));

// Routes. Route name => method prefix
Config::set('routes', array(
    'default' => '',
    'admin'   => 'admin_',
));

Config::set('default_route', 'default');
Config::set('default_language', 'ru');
Config::set('default_controller', 'home');
Config::set('default_action', 'index');

Config::set('db.host', 'localhost');
Config::set('db.user', 'root');
Config::set('db.password', '');
Config::set('db.db_name', 'mydata');
Config::set('db.db_prefix', 'h4t98hf47r_');

Config::set('salt', 'jd7sj3sdkd964he7e');
