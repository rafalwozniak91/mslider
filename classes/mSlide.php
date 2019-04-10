<?php

class mSlide extends ObjectModel
{
	public $title;
	public $description;
	public $legend;
	public $active;
	public $position;

    /**
	* @see ObjectModel::$definition
	*/
	public static $definition = array(
		'table' => 'mslider',
		'primary' => 'id_slide',
		'fields' => array(
            'title' =>	array('type' => self::TYPE_STRING, 'lang' => true, 'validate' => 'isCleanHtml', 'required' => true, 'size' => 255),
            'legend' =>	array('type' => self::TYPE_STRING, 'lang' => true, 'validate' => 'isCleanHtml', 'required' => true, 'size' => 255),
            'description' => array('type' => self::TYPE_HTML, 'lang' => true, 'validate' => 'isCleanHtml', 'size' => 4000),
			'active' =>	array('type' => self::TYPE_BOOL, 'validate' => 'isBool', 'required' => true),
			'position' => array('type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => true),
        ),
        'associations' => array(
            'images' => array('type' => self::HAS_MANY, 'field' => 'id_slide', 'object' => 'mSlideImage', 'association' => 'mslider_images'),
        ),
    );

}