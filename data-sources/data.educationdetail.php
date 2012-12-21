<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceeducationdetail extends SectionDatasource{

		public $dsParamROOTELEMENT = 'educationdetail';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'yes';
		public $dsParamREQUIREDPARAM = '$url-title';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'29' => '{$url-title}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'qualification: formatted',
				'description: formatted',
				'date'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'educationdetail',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://localhost:8888/mimeithompson',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-08-21T19:02:08+00:00'
			);
		}

		public function getSource(){
			return '8';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
