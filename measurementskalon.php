<?php
 
class MeasurementsKalon extends Module{
	//here you make important initializations
	public function __construct()
	{
		$this->name = 'MeasurementsKalon'; //measurements kalon in the book
		$this->tab = 'front_office_features';
		$this->version = '1.0';
		$this->author = 'Evgeniya Bautina';
		#$this->controllers = array('account');
		//set the Bootsrap
		$this->bootstrap = true; 
		parent::__construct();
		$this->displayName = 'Measurements Kalon';
		$this->description = 'This module will save customers measurements and display them in comments';
	}
	public function install()
	{
		if (!parent::install() ||
			!$this->registerHook('displayCustomerAccount') ||
			!$this->registerHook('displayMyAccountBlock') ||
			!$this->registerHook('myNewCoolHook')) return false;

		
			$sql = 'CREATE TABLE IF NOT EXISTS `ps_measurementskalon`
				(
					`id_customer` int(10) unsigned NOT NULL,
					`bust` decimal(4,2) unsigned NOT NULL,
					`over_bust` decimal(4,2) unsigned NOT NULL,
					`under_bust` decimal(4,2) unsigned NOT NULL,
					`waist` decimal(4,2) unsigned NOT NULL,
					`high_hip` decimal(4,2) unsigned NOT NULL,
					`hip` decimal(4,2) unsigned NOT NULL,
					`height` decimal(4,2) unsigned NOT NULL,
					`isChecked` bool NOT NULL,
					PRIMARY KEY  (`id_customer`)
				) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci';

			if (!Db::getInstance()->execute($sql))
				return false;

		return true;
	}

	public function uninstall()
	{

			if (!Db::getInstance()->execute('DROP TABLE IF EXISTS `ps_measurementskalon`'))
				return false;
	
		return parent::uninstall();
	}

	public function reset()
	{
		if (!$this->uninstall(false))
			return false;
		if (!$this->install(false))
			return false;

		return true;
	}
	public function hookDisplayCustomerAccount($params)
	{
		return $this->display(__FILE__, 'my-account.tpl');
	}
	
	public function hookDisplayMyAccountBlock($params)
	{
		return $this->hookDisplayCustomerAccount($params);
	}
    public function hookmyNewCoolHook($params) {
    	$id_customer = $params['id_customer_comments'];
    	$measurements = Db::getInstance()->executeS('SELECT * FROM `ps_measurementskalon` WHERE `id_customer`='.(int)$id_customer.'');
    	$this->context->smarty->assign("measurements", $measurements);
    	return $this->display(__FILE__, 'measurementskalontabcomments.tpl');
    }
}
?>