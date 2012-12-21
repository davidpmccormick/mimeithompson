<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceupcomingevents extends SectionDatasource{

		public $dsParamROOTELEMENT = 'upcomingevents';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'3' => 'start:later than {$today}',
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
				'name' => 'upcomingevents',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://localhost:8888/mimeithompson',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-08-20T15:20:52+00:00'
			);
		}

		public function getSource(){
			return '1';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
