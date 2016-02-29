<?php

class MeasurementsKalonAccountModuleFrontController extends ModuleFrontController
{
	 public function initContent(){
	 	parent::initContent();
	 	if (!Context::getContext()->customer->isLogged())
			Tools::redirect('index.php?controller=authentication&redirect=module&module=measurementskalon&action=account');
		if (Context::getContext()->customer->id)
		{
		$id_customer=$this->context->customer->id;
	 	//Get measurments
	 	$measurements = Db::getInstance()->executeS('SELECT * FROM `ps_measurementskalon` WHERE `id_customer`='.$id_customer.'');
	 	$this->context->smarty->assign('measurements', $measurements);
	 	$this->context->smarty->assign('id_customer', $id_customer);

	 	$this->setTemplate('measurementskalon.tpl');
		}

	 }	
	   public function setMedia() {
	 	parent::setMedia();
	 	$this->path = __PS_BASE_URI__.'modules/measurementskalon/';
	 	$this->context->controller->addCSS($this->path.'views/css/measurementskalon.css', 'all');
		$this->context->controller->addJS($this->path.'views/js/measurementskalon.js');
	 }
}
?>