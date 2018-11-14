<?php
/*
Plugin Name: Songtute-cms
Plugin URI:
Description:  
Author: 
Version: 1.0
*/

class SongtuteCMS {
    function __construct() {
        add_action( 'admin_enqueue_scripts', array( $this, 'addScripts' ) );
        add_action( 'admin_enqueue_scripts', array( $this, 'addStyles' ) );

    }
    function addScripts()
    {
        $dir =  plugin_dir_url( __FILE__ );
        wp_enqueue_script( 'songtute-js', $dir. 'assets/js/admin.js', array('jquery'), FALSE, true );
    }
    function addStyles()
    {
        $dir =  plugin_dir_url( __FILE__ );
    	wp_enqueue_style( 'songtute-css',  $dir. 'assets/css/admin.css');
    }
}
new SongtuteCMS();