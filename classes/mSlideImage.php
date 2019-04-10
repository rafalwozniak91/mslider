<?php

class mSlideImage extends ObjectModel
{
    public $id_slide;
    public $id_size;
    public $url;

    /**
	* @see ObjectModel::$definition
	*/
	public static $definition = array(
		'table' => 'mslider_images',
		'primary' => 'id_image',
		'fields' => array(
            'id_slide' => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedId'),
            'id_size' => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedId'),
            'url' => array('type' => self::TYPE_STRING, 'lang' => true, 'validate' => 'isUrl', 'required' => true, 'size' => 255),
        ),
        'associations' => array(
            'size' => array('type' => self::HAS_ONE, 'field' => 'id_size', 'object' => 'mSlideSize'),
        ),
    );

}