<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcepastevents extends SectionDatasource{

		public $dsParamROOTELEMENT = 'pastevents';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'3' => 'end:earlier than {$today} ',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'short-description: formatted',
				'description: formatted',
				'date'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'pastevents',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://mimei.sumnoise.com',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-12-21T13:21:01+00:00'
			);
		}

		public function getSource(){
			return '1';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
