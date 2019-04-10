<?php

class mSlideSize extends ObjectModel
{
    public $width;
    public $height;

    /**
	* @see ObjectModel::$definition
	*/
	public static $definition = array(
		'table' => 'mslider_sizes',
		'primary' => 'id_size',
		'fields' => array(
            'width' => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
            'height' => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
        ),
    );

    /**
    * @see ObjectModel::add()
    */
    public function add($autodate = true, $null_values = false)
    {
        
        if(!$this->getSizeByParams())
            if (!parent::add($autodate, $null_values)) {
                return false;
            }

        return true;
    }

    public function delete() {

       parent::delete();
    }

    public static function all() {
        return Db::getInstance()->executeS('SELECT * FROM `'._DB_PREFIX_.'mslider_sizes`');
    }

    public function getSizeByParams() {
        return Db::getInstance()->getRow('SELECT * FROM `'._DB_PREFIX_.'mslider_sizes` where width = '.$this->width.($this->height ? ' AND height = '.(int)$this->height : ''));
    }
}