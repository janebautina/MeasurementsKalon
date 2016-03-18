<?php

class MeasurementsKalonAccountModuleFrontController extends ModuleFrontController
{
	 //adds content to display to the user
	 public function initContent(){
	 	parent::initContent();
	 	if (!Context::getContext()->customer->isLogged())
			Tools::redirect('index.php?controller=authentication&redirect=module&module=measurementskalon&action=account');
		if (Context::getContext()->customer->id)
		{
			$this->processDisplayCustomerAccount();
		    $this->assingDisplayCustomerAccount();
			$this->setTemplate('measurementskalon.tpl');
		}

	 }	
	 public function setMedia() {
	 	parent::setMedia();
	 	$this->path = __PS_BASE_URI__.'modules/measurementskalon/';
	 	$this->context->controller->addCSS($this->path.'views/css/measurementskalon.css', 'all');
		$this->context->controller->addJS($this->path.'views/js/measurementskalon.js');
	 }
	 
	 public function processDisplayCustomerAccount(){
	 	if(Tools::isSubmit('measurementskalon_submit')) {
				$id_customer = $this->context->customer->id;
				$over_bust = Tools::getValue('over_bust');
				$bust = Tools::getValue('bust');
				$under_bust = Tools::getValue('under_bust');
				$waist = Tools::getValue('waist');
				$high_hip = Tools::getValue('high_hip');
				$hip = Tools::getValue('hip');
				$height = Tools::getValue('height');
				$isChecked = Tools::getValue('yesmeasurementssubmit');
				Db::getInstance()->executeS('SELECT * FROM `ps_measurementskalon` WHERE `id_customer`='.(int)$id_customer.'');
				$insert = array('id_customer' => (int)$id_customer, 'over_bust' =>(float)pSQL($over_bust), 'bust' =>(float)pSQL($bust), 'under_bust' => (float)pSQL($under_bust), 'waist' => (float)$waist, 'high_hip'=>(float)pSQL($high_hip), 'hip'=>(float)pSQL($hip), 'height' => (float)pSQL($height),'isChecked'=>(boolean)pSQL($isChecked));
				Db::getInstance()->insert('measurementskalon', $insert);
		}

		if(Tools::isSubmit('measurementskalon_edit_submit')) {
				$id_customer = $this->context->customer->id;
				$over_bust = Tools::getValue('over_bust_edit');
				$bust = Tools::getValue('bust_edit');
				$under_bust = Tools::getValue('under_bust_edit');
				$waist = Tools::getValue('waist_edit');
				$high_hip = Tools::getValue('high_hip_edit');
				$hip = Tools::getValue('hip_edit');
				$height = Tools::getValue('height_edit');
				$isChecked = Tools::getValue('yesmeasurementsedit');
				Db::getInstance()->delete('ps_measurementskalon', '`id_customer`=' .(int)$id_customer.'');
				$insert = array('id_customer' => (int)$id_customer, 'over_bust' =>(float)pSQL($over_bust), 'bust' =>(float)pSQL($bust), 'under_bust' => (float)pSQL($under_bust), 'waist' => (float)$waist, 'high_hip'=>(float)pSQL($high_hip), 'hip'=>(float)pSQL($hip), 'height' => (float)pSQL($height), 'isChecked'=>(boolean)pSQL($isChecked));
				Db::getInstance()->insert('measurementskalon', $insert);

		}
	 }
	 public function assingDisplayCustomerAccount(){
		$id_customer = $this->context->customer->id;
		$measurements = Db::getInstance()->executeS('SELECT * FROM `ps_measurementskalon` WHERE `id_customer`='.(int)$id_customer.'');
		$this->context->smarty->assign("measurements", $measurements);
		$this->context->smarty->assign("id_customer", $id_customer);
	}
}
?>