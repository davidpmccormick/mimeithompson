<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcecollection extends SectionDatasource{

		public $dsParamROOTELEMENT = 'collection';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'yes';
		public $dsParamREQUIREDPARAM = '$url-title';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'6' => '{$url-title}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'artworks: title',
				'artworks: artwork',
				'artworks: caption',
				'description: formatted'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'collection',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://localhost:8888/mimeithompson',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-08-18T11:45:10+00:00'
			);
		}

		public function getSource(){
			return '2';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
