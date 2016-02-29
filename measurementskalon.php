<?php
 
class MeasurementsKalon extends Module{
	public function __construct()
	{
		$this->name = 'MeasurementsKalon';
		$this->tab = 'front_office_features';
		$this->version = '1.0';
		$this->author = 'Evgeniya Bautina';
		#$this->controllers = array('account');
		$this->bootstrap = true;
		parent::__construct();
		$this->displayName = 'Measurements Kalon';
		$this->description = 'Save customers Measurements';
	}
	public function install()
	{
		if (!parent::install() ||
			!$this->registerHook('displayCustomerAccount') ||
			!$this->registerHook('displayMyAccountBlock'))

			return false;

		
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
		$this->processProductTabContent();
		$this->assingProductTabContent();
		return $this->display(__FILE__, 'my-account.tpl');
	}
	
	public function hookDisplayMyAccountBlock($params)
	{
		return $this->hookDisplayCustomerAccount($params);
	}
	public function processProductTabContent(){
			if(Tools::isSubmit('measurementskalon_submit')) {
				$id_customer = $this->context->customer->id;
				$over_bust = Tools::getValue('over_bust');
				$bust = Tools::getValue('bust');
				$under_bust = Tools::getValue('under_bust');
				$waist = Tools::getValue('waist');
				$high_hip = Tools::getValue('high_hip');
				$hip = Tools::getValue('hip');
				$height = Tools::getValue('height');
				if ()
				$insert = array('id_customer' => (int)$id_customer, 'over_bust' =>(float)pSQL($over_bust), 'bust' =>(float)pSQL($bust), 'under_bust' => (float)pSQL($under_bust), 'waist' => (float)$waist, 'high_hip'=>(float)pSQL($high_hip), 'hip'=>(float)pSQL($hip), 'height' => (float)pSQL($height));
				Db::getInstance()->insert('measurementskalon', $insert);
			}
	}
	public function assingProductTabContent(){
		$id_customer = $this->context->customer->id;
		$measurements = Db::getInstance()->executeS('SELECT * FROM `ps_measurementskalon` WHERE `id_customer`='.(int)$id_customer.'');
		$this->context->smarty->assign("measurements", $measurements);
		$this->context->smarty->assign("measurementskalon", $measurementskalon);
	}


}
?>