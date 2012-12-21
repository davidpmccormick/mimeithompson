<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcecurrentevents extends SectionDatasource{

		public $dsParamROOTELEMENT = 'currentevents';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'3' => '{$today}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'description: formatted',
				'date',
				'short-description: formatted'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'currentevents',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://localhost:8888/mimeithompson',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-08-20T15:20:32+00:00'
			);
		}

		public function getSource(){
			return '1';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
