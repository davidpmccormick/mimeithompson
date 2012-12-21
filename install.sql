
-- *** STRUCTURE: `mmt_fields_author` ***
DROP TABLE IF EXISTS`tbl_fields_author`;
CREATE TABLE`tbl_fields_author` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') collate utf8_unicode_ci NOT NULL,
  `allow_multiple_selection` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `default_to_current_user` enum('yes','no') collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_author` ***

-- *** STRUCTURE: `mmt_fields_checkbox` ***
DROP TABLE IF EXISTS`tbl_fields_checkbox`;
CREATE TABLE`tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') collate utf8_unicode_ci NOT NULL default 'on',
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_checkbox` ***

-- *** STRUCTURE: `mmt_fields_date` ***
DROP TABLE IF EXISTS`tbl_fields_date`;
CREATE TABLE`tbl_fields_date` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_date` ***

-- *** STRUCTURE: `mmt_fields_datetime` ***
DROP TABLE IF EXISTS`tbl_fields_datetime`;
CREATE TABLE`tbl_fields_datetime` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `prepopulate` tinyint(1) default '1',
  `time` tinyint(1) default '1',
  `multiple` tinyint(1) default '1',
  `range` tinyint(1) default '1',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_datetime` ***
INSERT INTO`tbl_fields_datetime` (`id`, `field_id`, `prepopulate`, `time`, `multiple`, `range`) VALUES (64, 3, 0, 0, 0, 1);
INSERT INTO`tbl_fields_datetime` (`id`, `field_id`, `prepopulate`, `time`, `multiple`, `range`) VALUES (28, 30, 0, 0, 0, 1);

-- *** STRUCTURE: `mmt_fields_image_upload` ***
DROP TABLE IF EXISTS`tbl_fields_image_upload`;
CREATE TABLE`tbl_fields_image_upload` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) collate utf8_unicode_ci NOT NULL,
  `validator` varchar(50) collate utf8_unicode_ci default NULL,
  `unique` varchar(50) collate utf8_unicode_ci default NULL,
  `min_width` int(11) unsigned default NULL,
  `min_height` int(11) unsigned default NULL,
  `max_width` int(11) unsigned default NULL,
  `max_height` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_image_upload` ***
INSERT INTO`tbl_fields_image_upload` (`id`, `field_id`, `destination`, `validator`, `unique`, `min_width`, `min_height`, `max_width`, `max_height`) VALUES (42, 9, '/workspace/assets/images', '/\\.(?:bmp|gif|jpe?g|png)$/i', 'yes', 0, 0, 928, 0);
INSERT INTO`tbl_fields_image_upload` (`id`, `field_id`, `destination`, `validator`, `unique`, `min_width`, `min_height`, `max_width`, `max_height`) VALUES (35, 16, '/workspace/assets/images', '/\\.(?:bmp|gif|jpe?g|png)$/i', 'yes', 0, 0, 288, 0);
INSERT INTO`tbl_fields_image_upload` (`id`, `field_id`, `destination`, `validator`, `unique`, `min_width`, `min_height`, `max_width`, `max_height`) VALUES (43, 28, '/workspace/assets/images', '/\\.(?:bmp|gif|jpe?g|png)$/i', 'yes', 0, 0, 928, 0);

-- *** STRUCTURE: `mmt_fields_input` ***
DROP TABLE IF EXISTS`tbl_fields_input`;
CREATE TABLE`tbl_fields_input` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_input` ***
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (181, 1, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (146, 6, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (175, 8, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (176, 12, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (151, 76, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (152, 78, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (81, 29, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (118, 57, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (182, 63, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');

-- *** STRUCTURE: `mmt_fields_order_entries` ***
DROP TABLE IF EXISTS`tbl_fields_order_entries`;
CREATE TABLE`tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') default 'no',
  `hide` enum('yes','no') default 'no',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- *** DATA: `mmt_fields_order_entries` ***
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (37, 22, 'yes', 'yes');
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (45, 23, 'yes', 'yes');
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (23, 35, 'yes', 'yes');
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (39, 79, 'yes', 'yes');

-- *** STRUCTURE: `mmt_fields_select` ***
DROP TABLE IF EXISTS`tbl_fields_select`;
CREATE TABLE`tbl_fields_select` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `show_association` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'yes',
  `sort_options` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `static_options` text collate utf8_unicode_ci,
  `dynamic_options` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_select` ***

-- *** STRUCTURE: `mmt_fields_selectbox_link` ***
DROP TABLE IF EXISTS`tbl_fields_selectbox_link`;
CREATE TABLE`tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `show_association` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'yes',
  `related_field_id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL default '20',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_selectbox_link` ***
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `related_field_id`, `limit`) VALUES (11, 87, 'no', 'no', 8, 100);

-- *** STRUCTURE: `mmt_fields_subsectionmanager` ***
DROP TABLE IF EXISTS`tbl_fields_subsectionmanager`;
CREATE TABLE`tbl_fields_subsectionmanager` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `filter_tags` text collate utf8_unicode_ci,
  `caption` text collate utf8_unicode_ci,
  `droptext` text collate utf8_unicode_ci,
  `create` tinyint(1) default '1',
  `remove` tinyint(1) default '1',
  `allow_multiple` tinyint(1) default '1',
  `edit` tinyint(1) default '1',
  `sort` tinyint(1) default '1',
  `drop` tinyint(1) default '1',
  `show_search` tinyint(1) default '1',
  `show_preview` tinyint(1) default '0',
  `recursion_levels` tinyint(4) default '0',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_subsectionmanager` ***
INSERT INTO`tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `create`, `remove`, `allow_multiple`, `edit`, `sort`, `drop`, `show_search`, `show_preview`, `recursion_levels`) VALUES (21, 11, 3, NULL, '{$title}<br /> <em>{$artwork}</em>', NULL, 1, 1, 1, 1, 1, 0, 1, 1, 0);
INSERT INTO`tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `create`, `remove`, `allow_multiple`, `edit`, `sort`, `drop`, `show_search`, `show_preview`, `recursion_levels`) VALUES (25, 88, 3, NULL, '{$title} {$caption}', NULL, 1, 1, 1, 1, 1, 0, 1, 1, 0);

-- *** STRUCTURE: `mmt_fields_subsectiontabs` ***
DROP TABLE IF EXISTS`tbl_fields_subsectiontabs`;
CREATE TABLE`tbl_fields_subsectiontabs` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `static_tabs` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_subsectiontabs` ***

-- *** STRUCTURE: `mmt_fields_taglist` ***
DROP TABLE IF EXISTS`tbl_fields_taglist`;
CREATE TABLE`tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) collate utf8_unicode_ci default NULL,
  `pre_populate_source` varchar(15) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_taglist` ***

-- *** STRUCTURE: `mmt_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) collate utf8_unicode_ci default NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_textarea` ***
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (132, 2, 'markdown', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (134, 4, 'markdown', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (133, 5, 'markdown', 5);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (118, 18, 'markdown', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (129, 15, 'markdown', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (121, 77, 'markdown', 6);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (64, 31, 'markdown', 15);

-- *** STRUCTURE: `mmt_fields_textbox` ***
DROP TABLE IF EXISTS`tbl_fields_textbox`;
CREATE TABLE`tbl_fields_textbox` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `column_length` int(11) unsigned default '75',
  `text_size` enum('single','small','medium','large','huge') default 'medium',
  `text_formatter` varchar(255) default NULL,
  `text_validator` varchar(255) default NULL,
  `text_length` int(11) unsigned default '0',
  `text_cdata` enum('yes','no') default 'no',
  `text_handle` enum('yes','no') default 'no',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- *** DATA: `mmt_fields_textbox` ***
INSERT INTO`tbl_fields_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`) VALUES (50, 41, 100, 'single', 'none', NULL, 100, 'no', 'no');
INSERT INTO`tbl_fields_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`) VALUES (17, 43, 200, 'small', 'markdown', NULL, 200, 'no', 'no');

-- *** STRUCTURE: `mmt_fields_upload` ***
DROP TABLE IF EXISTS`tbl_fields_upload`;
CREATE TABLE`tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) collate utf8_unicode_ci NOT NULL,
  `validator` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_fields_upload` ***

-- *** STRUCTURE: `mmt_entries_data_1` ***
DROP TABLE IF EXISTS`tbl_entries_data_1`;
CREATE TABLE`tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) collate utf8_unicode_ci default NULL,
  `value` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_1` ***
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (94, 83, 'the-count-of-monte-cristo-father-and-son', 'The Count of Monte Cristo, Father and Son');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (142, 84, 'now-the-dream-is-over', 'Now the dream is over');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (95, 85, 'apophenia', 'Apophenia');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (96, 86, 'if-on-a-lonely-night-a-traveller', 'If on a lonely night, a traveller');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (100, 87, 'the-count-of-monte-cristo-the-treasure', 'The Count of Monte Cristo- The Treasure');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (101, 88, 'the-count-of-monte-cristo-the-unknown', 'The Count of Monte Cristo- The Unknown');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (99, 89, 'pulp-fictions', 'Pulp Fictions');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (102, 90, 1111, 11.11);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (103, 91, 'interspaces', 'Interspaces');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (104, 92, 'the-lions-den', 'The Lion\'s Den');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (105, 93, 'freies-material', 'Freies Material');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (97, 94, 'the-count-of-monte-christo-conspiracy', 'The Count of Monte Christo- Conspiracy');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (106, 95, 'marmite-painting-prize-exhibition-london', 'Marmite Painting Prize Exhibition- London');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (107, 96, 'the-island-of-true-stories', 'The Island of True Stories');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (98, 97, 'marmite-painting-prize-exhibition-coventry', 'Marmite Painting Prize Exhibition- Coventry');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (110, 98, 'marmite-painting-prize-exhibition-tameside', 'Marmite Painting Prize Exhibition- Tameside');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 106, 'art-blitz', 'Art Blitz');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (108, 107, 'icons', 'Icons');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (109, 108, 'jerwood-contemporary-painters-durham', 'Jerwood Contemporary Painters- Durham');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (111, 109, 'exeter-contemporary-open', 'Exeter Contemporary Open');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (112, 110, 'jerwood-contemporary-painters-leeds', 'Jerwood Contemporary Painters- Leeds');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (113, 111, 'jerwood-contemporary-painters', 'Jerwood Contemporary Painters');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (114, 112, 'journey-to-the-centre-of-the-earth', 'Journey to the Centre of the Earth');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (115, 113, 'drawing-2009', 'Drawing 2009');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (116, 114, 'o-a-stiff-bandeau', 'O / A Stiff Bandeau');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (117, 115, 'drawings-with-dolphins', 'Drawings With Dolphins');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 116, 'internal-geometry', 'Internal Geometry');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 117, 'future50', 'Future50');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (92, 118, 'mime-1', 'Mime 1');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (118, 119, 'drawings', 'Drawings');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 120, 'these-living-walls-of-jet', 'These Living Walls of Jet');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (119, 121, 'divination', 'Divination');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (120, 122, '00-nature', '\'00 Nature');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (121, 123, 'the-painting-room', 'The Painting Room');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (123, 126, 'cut-and-colour', 'Cut and Colour');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (122, 125, 'studio-voltaire-open', 'Studio Voltaire Open');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (124, 127, 'flora', 'Flora');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (125, 128, 'slippery-slope-at-the-eagle-gallery', 'Slippery Slope at the Eagle Gallery');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (126, 129, 'through-the-large-glass', 'Through the Large Glass');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (127, 130, 'the-shaman-project-ii', 'The Shaman Project II');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (128, 131, 'baroque-my-world', 'Baroque My World');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (129, 132, 'territory', 'Territory');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (130, 133, 'acid-drops-and-sugar-candy', 'Acid Drops and Sugar Candy');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (131, 134, 'second-nature', 'Second Nature');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (132, 135, 'invasions-of-piquancy', 'Invasions of Piquancy');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (133, 136, 'goth-moth', 'Goth Moth');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (134, 137, 'art-futures', 'Art Futures');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (140, 138, 'the-painting-class', 'The Painting Class');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (136, 139, 'the-horizon-of-expectation', 'The Horizon of Expectation');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (141, 163, 'wanderlust', 'Wanderlust');

-- *** STRUCTURE: `mmt_entries_data_11` ***
DROP TABLE IF EXISTS`tbl_entries_data_11`;
CREATE TABLE`tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_11` ***
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (146, 6, 73);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (145, 6, 72);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (144, 6, 71);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (149, 20, 23);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (148, 20, 22);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (147, 20, 21);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (34, 25, 26);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (35, 25, 27);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (36, 32, 28);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (37, 32, 29);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (38, 32, 30);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (39, 32, 31);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (132, 34, 42);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (131, 34, 41);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (130, 34, 44);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (129, 34, 40);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (128, 34, 39);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (127, 34, 38);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (126, 34, 37);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (125, 34, 36);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (124, 34, 35);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (123, 34, 33);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (133, 34, 43);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (122, 50, 49);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (121, 50, 48);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (120, 50, 47);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (119, 50, 46);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (118, 50, 45);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (61, 56, 51);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (62, 56, 52);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (63, 56, 53);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (64, 56, 54);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (65, 56, 55);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (143, 6, 70);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (142, 6, 69);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (141, 6, 68);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (140, 6, 67);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (139, 6, 66);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (138, 6, 65);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (137, 6, 64);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (136, 6, 63);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (135, 6, 62);
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `relation_id`) VALUES (134, 6, 61);

-- *** STRUCTURE: `mmt_entries_data_12` ***
DROP TABLE IF EXISTS`tbl_entries_data_12`;
CREATE TABLE`tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) collate utf8_unicode_ci default NULL,
  `value` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_12` ***
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (71, 9, 'oil-on-canvas-76x61cm', 'oil on canvas, 76x61cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (72, 21, 'oil-on-canvas-2010-100x80cm', 'oil on canvas, 2010, 100x80cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 22, 'oil-on-canvas-2010-76x61cm', 'oil on canvas, 2010, 76x61cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 23, 'oil-on-canvas-2010-61x76cm', 'oil on canvas, 2010, 61x76cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (75, 26, 'oil-on-canvas-50x60cm', 'oil on canvas, 50x60cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (76, 27, 'oil-on-canvas-2009-80x100cm', 'oil on canvas, 2009, 80x100cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 28, 'oil-on-canvas-2008-50x60cm', 'oil on canvas 2008 50x60cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 29, 'oil-on-canvas-2008-80x100cm', 'oil on canvas 2008 80x100cm ');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 30, 'oil-on-canvas-2008-80x100cm', 'oil on canvas 2008 80x100cm ');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 31, 'oil-on-canvas-2008-50x60cm', 'oil on canvas 2008 50x60cm ');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 33, 'oil-on-canvas-2007-50x60cm', 'oil on canvas 2007 50x60cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 35, 'oil-on-canvas-2007-60-x-75cm', 'Oil on canvas 2007 60 x 75cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 36, 'oil-on-canvas-2007-50-x-60', 'Oil on canvas 2007 50 x 60');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 37, 'oil-on-canvas-2007-50-x-60', 'Oil on canvas 2007 50 x 60');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 38, '2007-oil-on-canvas-100x140cm', '2007, oil on canvas 100x140cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 39, 'oil-on-canvas-2007-40x50cm', 'oil on canvas, 2007, 40x50cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 40, '2007-oil-on-canvas-40x51cm', '2007, oil on canvas, 40x51cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 41, 'oil-on-canvas-2006-153x102', 'Oil on canvas 2006 153x102');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 42, 'oil-on-canvas-50-x-40-cm-2006', 'oil on canvas 50 x 40 cm 2006');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 43, 'oil-on-linen-on-panel-2006', 'oil on linen on panel 2006');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 44, '2004-acrylic-on-panel-60x40cm', '2004, acrylic on panel, 60x40cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 45, '2004-acrylic-on-panel-60x40cm', '2004, acrylic on panel, 60x40cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 46, '2005-oil-on-panel-100x100cm', '2005, oil on panel, 100x100cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 47, '2005-oil-on-panel-40x40cm', '2005, oil on panel, 40x40cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 48, '2005-oil-on-panel-40x40cm', '2005, oil on panel, 40x40cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 49, '2004-acrylic-on-panel-200x100cm', '2004, acrylic on panel, 200x100cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 51, '2002-photogramme-90x70cm', '2002, photogramme, 90x70cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 52, 'acrylic-on-canvas-220x150cm-2002', 'acrylic on canvas, 220x150cm, 2002');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 53, '2002-acrylic-on-panel-70x50cm', '2002, acrylic on panel, 70x50cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 54, '2000-acrylic-and-enamel-on-panel-120x86cm', '2000, acrylic and enamel on panel, 120x86cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 55, 'acrylic-on-canvas-2003-40x40cm', 'acrylic on canvas, 2003, 40x40cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 61, 'oil-on-canvas-2011-80x100cm', 'oil on canvas, 2011, 80x100cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 62, 'oil-on-canvas-76x61cm', 'oil on canvas, 76x61cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 63, 'oil-on-canvas-80x160cm', 'oil on canvas, 80x160cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 64, 'oil-on-canvas-50x40cm', 'oil on canvas, 50x40cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 65, 'oil-on-canvas-50x40cm', 'oil on canvas, 50x40cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 66, 'oil-on-canvas-50x40cm', 'oil on canvas, 50x40cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 67, 'oil-on-canvas-76x61cm', 'oil on canvas, 76x61cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 68, 'oil-on-canvas-76x61cm', 'Oil on canvas, 76x61cm');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 69, 'digital-print', 'Digital Print');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 70, 'digital-print', 'Digital Print');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 71, 'digital-print', 'Digital Print');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 72, 'digital-print', 'Digital Print');
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 73, 'digital-print', 'Digital Print');

-- *** STRUCTURE: `mmt_entries_data_15` ***
DROP TABLE IF EXISTS`tbl_entries_data_15`;
CREATE TABLE`tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext collate utf8_unicode_ci,
  `value_formatted` mediumtext collate utf8_unicode_ci,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_15` ***
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (68, 9, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (69, 21, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (70, 22, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (71, 23, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (72, 26, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (73, 27, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (74, 28, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (75, 29, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (77, 30, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 31, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 33, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 35, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (47, 36, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (48, 37, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (23, 38, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (49, 39, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (50, 40, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (26, 41, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 42, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (28, 43, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (29, 44, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 45, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (31, 46, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (32, 47, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 48, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (34, 49, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 51, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 52, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (51, 53, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (52, 54, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (53, 55, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (67, 61, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (55, 62, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (56, 63, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 64, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 65, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (59, 66, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 67, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 68, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (62, 69, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (63, 70, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (64, 71, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (65, 72, NULL, NULL);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (66, 73, NULL, NULL);

-- *** STRUCTURE: `mmt_entries_data_16` ***
DROP TABLE IF EXISTS`tbl_entries_data_16`;
CREATE TABLE`tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) collate utf8_unicode_ci default NULL,
  `size` int(11) unsigned default NULL,
  `mimetype` varchar(50) collate utf8_unicode_ci default NULL,
  `meta` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_16` ***
INSERT INTO`tbl_entries_data_16` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (31, 20, '/assets/images/080310-054359-i-feeder-1345373828.jpeg', 35090, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T11:57:09+01:00\";s:5:\"width\";i:288;s:6:\"height\";i:363;}');
INSERT INTO`tbl_entries_data_16` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (17, 25, '/assets/images/270109-095032-i-underground_owljpg-1345408101.jpeg', 14722, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:28:21+01:00\";s:5:\"width\";i:288;s:6:\"height\";i:347;}');
INSERT INTO`tbl_entries_data_16` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (18, 32, '/assets/images/250908-160713-i-dripping_brainjpg-1345408605.jpeg', 22779, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:36:45+01:00\";s:5:\"width\";i:288;s:6:\"height\";i:344;}');
INSERT INTO`tbl_entries_data_16` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (29, 34, '/assets/images/yelloweyes-1345409208.jpeg', 15975, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:46:48+01:00\";s:5:\"width\";i:288;s:6:\"height\";i:343;}');
INSERT INTO`tbl_entries_data_16` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (28, 50, '/assets/images/cuckoo-1345410442.jpeg', 21035, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:07:22+01:00\";s:5:\"width\";i:288;s:6:\"height\";i:290;}');
INSERT INTO`tbl_entries_data_16` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (23, 56, '/assets/images/englishrose-1345410944.jpeg', 20416, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:15:44+01:00\";s:5:\"width\";i:288;s:6:\"height\";i:199;}');
INSERT INTO`tbl_entries_data_16` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (30, 6, '/assets/images/untitled_cave_8-1345461653.jpeg', 20126, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:20:53+01:00\";s:5:\"width\";i:288;s:6:\"height\";i:229;}');

-- *** STRUCTURE: `mmt_entries_data_18` ***
DROP TABLE IF EXISTS`tbl_entries_data_18`;
CREATE TABLE`tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext collate utf8_unicode_ci,
  `value_formatted` mediumtext collate utf8_unicode_ci,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_18` ***
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (23, 6, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (24, 20, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 25, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 32, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 34, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 50, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 56, NULL, NULL);

-- *** STRUCTURE: `mmt_entries_data_2` ***
DROP TABLE IF EXISTS`tbl_entries_data_2`;
CREATE TABLE`tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext collate utf8_unicode_ci,
  `value_formatted` mediumtext collate utf8_unicode_ci,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_2` ***
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (94, 83, NULL, NULL);
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (142, 84, 'group show of 23 artists ', '<p>group show of 23 artists </p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (95, 85, 'group painting show Curated by Phoebe Mitchell & Charles Robinson, Lindsey Bull, Maria Högbacke, Tom Howse, Phoebe Mitchell, Joanna Phelps, Charles Robinson, Lucy Smallbone, Mimei Thompson', '<p>group painting show Curated by Phoebe Mitchell &amp; Charles Robinson, Lindsey Bull, Maria Högbacke, Tom Howse, Phoebe Mitchell, Joanna Phelps, Charles Robinson, Lucy Smallbone, Mimei Thompson</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (96, 86, 'group show with Darren Marshall, Helen Maurer, Mimei Thompson and Dafna Talmor.\r\nOrganised by Mimei Thompson', '<p>group show with Darren Marshall, Helen Maurer, Mimei Thompson and Dafna Talmor.\nOrganised by Mimei Thompson</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (100, 87, 'Group show with Annabel Dover, Alex Pearl, Hayley Lock and Cathy Lomax', '<p>Group show with Annabel Dover, Alex Pearl, Hayley Lock and Cathy Lomax</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (101, 88, 'Group show with Annabel Dover, Alex Pearl, Hayley Lock and Cathy Lomax', '<p>Group show with Annabel Dover, Alex Pearl, Hayley Lock and Cathy Lomax</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (99, 89, 'group show, works on paper by 32 artists', '<p>group show, works on paper by 32 artists</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (102, 90, 'group show, curated by Infinity Bunce, Russell Chater and Richard Stone', '<p>group show, curated by Infinity Bunce, Russell Chater and Richard Stone</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (103, 91, 'Group show with Ville Kylätasku, Michael Lawton, Juliette Losq, Phoebe Mitchell and Mimei Thompson.\r\npart of the Embassy Annuale 2011 festival (festival of independent practice that for a month freely associates a group of artist-led projects in Edinburgh).\r\n\r\nmid show event on Sunday 26th June', '<p>Group show with Ville Kylätasku, Michael Lawton, Juliette Losq, Phoebe Mitchell and Mimei Thompson.\npart of the Embassy Annuale 2011 festival (festival of independent practice that for a month freely associates a group of artist-led projects in Edinburgh).</p>\n\n<p>mid show event on Sunday 26th June</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (104, 92, 'The Count of Monte Cristo showing with Transition Gallery as part of Influx, an event bringing together 14 artist-led project spaces from Ireland and Europe', '<p>The Count of Monte Cristo showing with Transition Gallery as part of Influx, an event bringing together 14 artist-led project spaces from Ireland and Europe</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (105, 93, 'Group show with Caroline Achaintre, Rupert Ackroyd, Vanessa Billy, Matt Golden, Anthea Hamilton, Martina Schmuecker, Mimei Thompson, and Douglas White with a text by David Lillington, funded by the British Council.\r\n\r\nA  limited edition multiple with work by all artists and a text by David Lillington is available for 120€/£100 at the opening and throughout the exhibition.\r\n\r\nPlease email  Martina Schmücker: tina.2@gmx.de if you would like to purchase a multiple', '<p>Group show with Caroline Achaintre, Rupert Ackroyd, Vanessa Billy, Matt Golden, Anthea Hamilton, Martina Schmuecker, Mimei Thompson, and Douglas White with a text by David Lillington, funded by the British Council.</p>\n\n<p>A  limited edition multiple with work by all artists and a text by David Lillington is available for 120€/£100 at the opening and throughout the exhibition.</p>\n\n<p>Please email  Martina Schmücker: tina.2@gmx.de if you would like to purchase a multiple</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (97, 94, 'Group show with Annabel Dover, Hayley Lock, Cathy Lomax, and Alex Pearl', '<p>Group show with Annabel Dover, Hayley Lock, Cathy Lomax, and Alex Pearl</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (106, 95, NULL, NULL);
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (107, 96, 'group show with Annabel Dover, Hayley Lock, Cathy Lomaz and Alex Pearl', '<p>group show with Annabel Dover, Hayley Lock, Cathy Lomaz and Alex Pearl</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (98, 97, NULL, NULL);
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (110, 98, 'Biennial open submission painting exhibition, curated by Stephanie Moran and Marcus Cope', '<p>Biennial open submission painting exhibition, curated by Stephanie Moran and Marcus Cope</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 106, 'Fundraising art auction for Transition Gallery', '<p>Fundraising art auction for Transition Gallery</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (108, 107, 'A silent auction of contemporary art in aid of St Joseph\'s Hospice ', '<p>A silent auction of contemporary art in aid of St Joseph\'s Hospice </p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (109, 108, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (111, 109, 'Selectors:\r\nMatt Burrows, Cathy Lomax and Domo Baal \r\nSelected artists: Henny Acloque, Kirsty Buchanan, Maia Conran, Ellie Davies, Tracey Eastham, Dan Ford, Rebecca Griffiths, Barbara Howey, Robert Lang, Mahali O\'Hare, Alli Sharma, David Theobald, Mimei Thompson, David Webb', '<p>Selectors:\nMatt Burrows, Cathy Lomax and Domo Baal \nSelected artists: Henny Acloque, Kirsty Buchanan, Maia Conran, Ellie Davies, Tracey Eastham, Dan Ford, Rebecca Griffiths, Barbara Howey, Robert Lang, Mahali O\'Hare, Alli Sharma, David Theobald, Mimei Thompson, David Webb</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (112, 110, NULL, NULL);
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (113, 111, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (114, 112, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (115, 113, 'Drawing Room London biennale fundraising exhibtion and auction', '<p>Drawing Room London biennale fundraising exhibtion and auction</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (116, 114, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (117, 115, 'Group drawing show of 61 artists', '<p>Group drawing show of 61 artists</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 116, 'Launching the Drawing Room at St George\'s Hall', '<p>Launching the Drawing Room at St George\'s Hall</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 117, 'New Axis organised selling show at PSL [Project Space Leeds]', '<p>New Axis organised selling show at PSL [Project Space Leeds]</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (92, 118, 'Solo exhibition of new work at Transition gallery, London', '<p>Solo exhibition of new work at Transition gallery, London</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (118, 119, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 120, 'Inaugural exhibition at Ceri Hand Gallery, Liverpool', '<p>Inaugural exhibition at Ceri Hand Gallery, Liverpool</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (119, 121, 'Group show curated by E.M.C. Collard', '<p>Group show curated by E.M.C. Collard</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (120, 122, 'Group show in two parts. Mimei\'s work is in part one, April through till mid-May', '<p>Group show in two parts. Mimei\'s work is in part one, April through till mid-May</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (121, 123, 'Salon-style showcase of new painting', '<p>Salon-style showcase of new painting</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (123, 126, 'collage show, curated by Sarah Gillham', '<p>collage show, curated by Sarah Gillham</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (124, 127, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (125, 128, 'four painters and a sculptor', '<p>four painters and a sculptor</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (126, 129, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (122, 125, 'Studio Voltaire Annual Members\' Exhibition\r\nselected by:\r\nStuart Comer, Curator - Film, Tate Modern\r\nPolly Staple, Writer and Curator\r\nChristabel Stewart, Co-Director, HOTEL', '<p>Studio Voltaire Annual Members\' Exhibition\nselected by:\nStuart Comer, Curator - Film, Tate Modern\nPolly Staple, Writer and Curator\nChristabel Stewart, Co-Director, HOTEL</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (127, 130, 'group show curated by Elinor Evans\r\n', '<p>group show curated by Elinor Evans</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (128, 131, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (129, 132, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (130, 133, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (131, 134, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (132, 135, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (133, 136, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (134, 137, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (140, 138, NULL, NULL);
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (136, 139, 'group show', '<p>group show</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (141, 163, NULL, NULL);

-- *** STRUCTURE: `mmt_entries_data_22` ***
DROP TABLE IF EXISTS`tbl_entries_data_22`;
CREATE TABLE`tbl_entries_data_22` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- *** DATA: `mmt_entries_data_22` ***
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (21, 20, 6);
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (7, 25, 8);
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (8, 32, 9);
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (19, 34, 10);
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (18, 50, 12);
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (13, 56, 14);
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (20, 6, 1);

-- *** STRUCTURE: `mmt_entries_data_23` ***
DROP TABLE IF EXISTS`tbl_entries_data_23`;
CREATE TABLE`tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- *** DATA: `mmt_entries_data_23` ***
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (65, 9, 2);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (66, 21, 4);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (67, 22, 5);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (68, 23, 6);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (69, 26, 7);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (70, 27, 8);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (71, 28, 9);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (72, 29, 10);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (74, 30, 11);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (43, 31, 12);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (15, 33, 13);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (16, 35, 14);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (44, 36, 15);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (45, 37, 16);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (20, 38, 17);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (46, 39, 18);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (47, 40, 19);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (23, 41, 20);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (24, 42, 21);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (25, 43, 22);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (26, 44, 23);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (27, 45, 24);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (28, 46, 25);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (29, 47, 26);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (30, 48, 27);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (31, 49, 28);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (33, 51, 29);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (34, 52, 30);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (48, 53, 31);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (49, 54, 32);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (50, 55, 33);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (64, 61, 34);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (52, 62, 36);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (53, 63, 37);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (54, 64, 38);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (55, 65, 39);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (56, 66, 40);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (57, 67, 41);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (58, 68, 42);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (59, 69, 43);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (60, 70, 44);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (61, 71, 45);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (62, 72, 46);
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (63, 73, 47);

-- *** STRUCTURE: `mmt_entries_data_28` ***
DROP TABLE IF EXISTS`tbl_entries_data_28`;
CREATE TABLE`tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) collate utf8_unicode_ci default NULL,
  `size` int(11) unsigned default NULL,
  `mimetype` varchar(50) collate utf8_unicode_ci default NULL,
  `meta` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_28` ***
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (9, 24, '/assets/images/homepage-1345376204.png', 528272, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T12:36:44+01:00\";s:5:\"width\";i:928;s:6:\"height\";i:385;}');

-- *** STRUCTURE: `mmt_entries_data_29` ***
DROP TABLE IF EXISTS`tbl_entries_data_29`;
CREATE TABLE`tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) collate utf8_unicode_ci default NULL,
  `value` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_29` ***
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 74, 'royal-college-of-art', 'Royal College of Art');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 75, 'central-st-martins-college-of-art-and-design', 'Central St Martins College of Art and Design');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 76, 'glasgow-school-of-art', 'Glasgow School of Art');

-- *** STRUCTURE: `mmt_entries_data_3` ***
DROP TABLE IF EXISTS`tbl_entries_data_3`;
CREATE TABLE`tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_3` ***
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (92, 83, '2012-09-15 17:54:13', '2012-09-16 17:54:13');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (93, 85, '2012-07-07 16:26:09', '2012-08-15 16:26:09');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (98, 87, '2011-08-26 16:44:18', '2011-08-28 16:44:18');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (94, 86, '2012-07-05 16:27:29', '2012-07-15 16:27:29');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (140, 84, '2012-10-10 00:00:00', '2012-11-09 00:00:00');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (99, 88, '2011-08-26 16:43:41', '2011-08-28 16:43:41');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (97, 89, '2011-09-03 16:48:01', '2011-09-25 16:48:01');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (100, 90, '2011-06-17 17:33:32', '2011-06-22 17:33:32');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (101, 91, '2011-06-15 18:26:59', '2011-07-15 18:26:59');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (102, 92, '2011-05-26 18:30:09', '2011-05-28 18:30:09');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (103, 93, '2011-04-29 18:33:02', '2011-05-10 18:33:02');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (95, 94, '2012-04-28 18:37:34', '2012-05-07 18:37:34');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (104, 95, '2011-04-07 18:40:01', '2011-05-01 18:40:01');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (105, 96, '2011-03-31 18:42:01', '2011-05-05 18:42:01');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (96, 97, '2012-03-03 18:44:11', '2012-04-02 18:44:11');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (108, 98, '2010-10-08 18:45:58', '2011-02-26 18:45:58');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (44, 106, '2010-11-25 19:58:15', '2010-11-27 19:58:15');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (106, 107, '2010-11-19 19:59:45', '2010-11-20 19:59:45');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (107, 108, '2010-10-23 20:01:03', '2010-11-28 20:01:03');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (109, 109, '2010-09-16 20:02:38', '2010-11-03 20:02:38');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (110, 110, '2010-07-22 20:03:52', '2010-09-19 20:03:52');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (111, 111, '2010-04-21 20:05:13', '2010-05-30 20:05:13');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (112, 112, '2009-07-18 20:06:19', '2009-11-07 20:06:19');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (113, 113, '2009-04-30 20:08:01', '2009-05-20 20:08:01');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (114, 114, '2009-03-16 20:09:10', '2009-04-12 20:09:10');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (115, 115, '2009-02-14 20:11:51', '2009-03-08 20:11:51');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (55, 116, '2009-01-23 20:12:59', '2009-03-08 20:12:59');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (56, 117, '2008-11-21 20:14:18', '2008-11-23 20:14:18');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (90, 118, '2008-09-12 00:00:00', '2008-10-01 00:00:00');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (116, 119, '2008-07-11 20:29:42', '2008-07-13 20:29:42');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (59, 120, '2008-07-04 20:30:43', '2008-08-02 20:30:43');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (117, 121, '2008-06-21 20:31:49', '2008-06-28 20:31:49');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (118, 122, '2008-04-10 20:33:26', '2008-06-15 20:33:26');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (119, 123, '2008-01-12 20:35:45', '2008-02-10 20:35:45');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (121, 126, '2007-05-09 20:40:03', '2007-05-31 20:40:03');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (120, 125, '2007-11-24 20:38:14', '2008-01-13 20:38:14');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (122, 127, '2007-04-06 20:41:09', '2007-04-05 20:41:09');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (123, 128, '2007-02-01 20:42:08', '2007-02-28 20:42:08');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (124, 129, '2006-10-06 20:44:18', '2006-10-29 20:44:18');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (125, 130, '2006-09-02 20:45:48', '2006-09-10 20:45:48');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (126, 131, '2006-04-08 20:46:50', '2006-05-07 20:46:50');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (127, 132, '2006-03-08 20:47:49', '2006-04-21 20:47:49');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (128, 133, '2005-11-19 20:48:48', '2005-12-18 20:48:48');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (129, 134, '2005-09-28 20:49:31', '2005-10-30 20:49:31');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (130, 135, '2005-09-07 20:52:04', '2005-10-01 20:52:04');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (131, 136, '2004-11-20 20:53:18', '2004-12-19 20:53:18');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (132, 137, '2003-11-01 20:54:01', '2003-12-01 20:54:01');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (138, 138, '2002-10-31 00:00:00', '2002-12-13 00:00:00');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (134, 139, '1991-01-01 00:00:00', '1991-01-01 00:00:00');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `start`, `end`) VALUES (139, 163, '2013-03-13 00:00:00', '2013-03-13 00:00:00');

-- *** STRUCTURE: `mmt_entries_data_30` ***
DROP TABLE IF EXISTS`tbl_entries_data_30`;
CREATE TABLE`tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_30` ***
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `start`, `end`) VALUES (15, 74, '2003-09-01 00:00:00', '2005-06-30 00:00:00');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `start`, `end`) VALUES (16, 75, '2000-09-01 00:00:00', '2002-06-30 00:00:00');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `start`, `end`) VALUES (17, 76, '1990-09-01 00:00:00', '2004-06-30 00:00:00');

-- *** STRUCTURE: `mmt_entries_data_31` ***
DROP TABLE IF EXISTS`tbl_entries_data_31`;
CREATE TABLE`tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext collate utf8_unicode_ci,
  `value_formatted` mediumtext collate utf8_unicode_ci,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_31` ***
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 75, NULL, NULL);
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 76, NULL, NULL);
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 74, 'Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Etiam porta sem malesuada magna mollis euismod. Maecenas sed diam eget risus varius blandit sit amet non magna.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper nulla non metus auctor fringilla. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.', '<p>Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Etiam porta sem malesuada magna mollis euismod. Maecenas sed diam eget risus varius blandit sit amet non magna.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper nulla non metus auctor fringilla. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.</p>\n');

-- *** STRUCTURE: `mmt_entries_data_35` ***
DROP TABLE IF EXISTS`tbl_entries_data_35`;
CREATE TABLE`tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- *** DATA: `mmt_entries_data_35` ***
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `value`) VALUES (15, 74, 1);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `value`) VALUES (16, 75, 11);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `value`) VALUES (17, 76, 14);

-- *** STRUCTURE: `mmt_entries_data_4` ***
DROP TABLE IF EXISTS`tbl_entries_data_4`;
CREATE TABLE`tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext collate utf8_unicode_ci,
  `value_formatted` mediumtext collate utf8_unicode_ci,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_4` ***
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (94, 83, '<a href=\"http://www.portsmouthmuseums.co.uk/museum-service/The-Round-Tower\">more info</a>', '<p><a href=\"http://www.portsmouthmuseums.co.uk/museum-service/The-Round-Tower\">more info</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (142, 84, NULL, NULL);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (95, 85, '<a href=\"http://www.thechinashopgallery.co.uk/exhibitions/Apophenia\">more info</a>', '<p><a href=\"http://www.thechinashopgallery.co.uk/exhibitions/Apophenia\">more info</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (96, 86, '<a href=\"www.transitiongallery.co.uk\">more info</a>', '<p><a href=\"www.transitiongallery.co.uk\">more info</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (100, 87, '<a href=\"http://asylum-arts.co.uk/\">more info</a>', '<p><a href=\"http://asylum-arts.co.uk/\">more info</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (101, 88, '<a href=\"http://asylum-arts.co.uk/\">more info</a>', '<p><a href=\"http://asylum-arts.co.uk/\">more info</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (99, 89, '<a href=\"http://www.transitiongallery.co.uk/htmlpages/pulp_fictions/home.html\">more info</a>', '<p><a href=\"http://www.transitiongallery.co.uk/htmlpages/pulp_fictions/home.html\">more info</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (102, 90, '[more info…](http://1111art.weebly.com/index.html)\r\n', '<p><a href=\"http://1111art.weebly.com/index.html\">more info…</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (103, 91, '[http://sunbear.org.uk/](http://sunbear.org.uk/)', '<p><a href=\"http://sunbear.org.uk/\">http://sunbear.org.uk/</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (104, 92, NULL, NULL);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (105, 93, 'http://www.britishcouncil.de/e/events/material11.htm', '<p>http://www.britishcouncil.de/e/events/material11.htm</p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (97, 94, '[www.rogueartistsstudios.co.uk/projectspace.asp](www.rogueartistsstudios.co.uk/projectspace.asp)', '<p><a href=\"www.rogueartistsstudios.co.uk/projectspace.asp\">www.rogueartistsstudios.co.uk/projectspace.asp</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (106, 95, '[http://http//www.marmiteprize.org](http://http//www.marmiteprize.org)\r\n[http://www.bowarts.org/thenunnery/index.php?code=41](http://www.bowarts.org/thenunnery/index.php?code=41)', '<p><a href=\"http://http//www.marmiteprize.org\">http://http//www.marmiteprize.org</a>\n<a href=\"http://www.bowarts.org/thenunnery/index.php?code=41\">http://www.bowarts.org/thenunnery/index.php?code=41</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (107, 96, '[http://www.exeterphoenix.org.uk/](http://www.exeterphoenix.org.uk/)', '<p><a href=\"http://www.exeterphoenix.org.uk/\">http://www.exeterphoenix.org.uk/</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (98, 97, '[http://www.marmiteprize.org/](http://www.marmiteprize.org/)', '<p><a href=\"http://www.marmiteprize.org/\">http://www.marmiteprize.org/</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (110, 98, '[http://www.marmiteprize.org/](http://www.marmiteprize.org/)', '<p><a href=\"http://www.marmiteprize.org/\">http://www.marmiteprize.org/</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 106, '[www.transitiongallery.co.uk](www.transitiongallery.co.uk)', '<p><a href=\"www.transitiongallery.co.uk\">www.transitiongallery.co.uk</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (108, 107, 'Private View 18 November\r\n\r\n[http://www.givinglots.co.uk/event/icons http://www.stjh.org.uk/](http://www.givinglots.co.uk/event/icons http://www.stjh.org.uk/)', '<p>Private View 18 November</p>\n\n<p>[http://www.givinglots.co.uk/event/icons http://www.stjh.org.uk/](http://www.givinglots.co.uk/event/icons http://www.stjh.org.uk/)</p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (109, 108, 'www.durham.gov.uk/dli', '<p>www.durham.gov.uk/dli</p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (111, 109, '[www.exeterphoenix.org.uk](www.exeterphoenix.org.uk)', '<p><a href=\"www.exeterphoenix.org.uk\">www.exeterphoenix.org.uk</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (112, 110, '[www.projectspaceleeds.org.uk](www.projectspaceleeds.org.uk)', '<p><a href=\"www.projectspaceleeds.org.uk\">www.projectspaceleeds.org.uk</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (113, 111, '[http://www.jerwoodvisualarts.org/contemporarypainters/](http://www.jerwoodvisualarts.org/contemporarypainters/)', '<p><a href=\"http://www.jerwoodvisualarts.org/contemporarypainters/\">http://www.jerwoodvisualarts.org/contemporarypainters/</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (114, 112, '[www.northlincs.gov.uk/NorthLincs/Leisure/arts/20-21VisualArtsCentre/](www.northlincs.gov.uk/NorthLincs/Leisure/arts/20-21VisualArtsCentre/)', '<p><a href=\"www.northlincs.gov.uk/NorthLincs/Leisure/arts/20-21VisualArtsCentre/\">www.northlincs.gov.uk/NorthLincs/Leisure/arts/20-21VisualArtsCentre/</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (115, 113, '[www.drawingroom.org.uk/drawing2009](www.drawingroom.org.uk/drawing2009)', '<p><a href=\"www.drawingroom.org.uk/drawing2009\">www.drawingroom.org.uk/drawing2009</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (116, 114, 'A group show organised by Nicholas Byrne and Gareth Bell Jones', '<p>A group show organised by Nicholas Byrne and Gareth Bell Jones</p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (117, 115, '[www.crimestown.co.uk](www.crimestown.co.uk)', '<p><a href=\"www.crimestown.co.uk\">www.crimestown.co.uk</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 116, '[www.stgeorgeshall.eu](www.stgeorgeshall.eu)', '<p><a href=\"www.stgeorgeshall.eu\">www.stgeorgeshall.eu</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 117, '[www.axisweb.org/future50.aspx](www.axisweb.org/future50.aspx)', '<p><a href=\"www.axisweb.org/future50.aspx\">www.axisweb.org/future50.aspx</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (92, 118, '[www.transitiongallery.co.uk](www.transitiongallery.co.uk)', '<p><a href=\"www.transitiongallery.co.uk\">www.transitiongallery.co.uk</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (118, 119, 'Opens Friday 11th of July between 6-10\r\n\r\nPeacock Projects is an artist run studio space which organises exhibitions and events on a regular basis.', '<p>Opens Friday 11th of July between 6-10</p>\n\n<p>Peacock Projects is an artist run studio space which organises exhibitions and events on a regular basis.</p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 120, '[www.cerihand.co.uk](www.cerihand.co.uk)', '<p><a href=\"www.cerihand.co.uk\">www.cerihand.co.uk</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (119, 121, '[www.divination.org.uk](www.divination.org.uk)', '<p><a href=\"www.divination.org.uk\">www.divination.org.uk</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (120, 122, '[www.commentart.com/gallery/Contemporary_Art_Projects](www.commentart.com/gallery/Contemporary_Art_Projects)\r\n\r\ninfo@caprojects.com', '<p><a href=\"www.commentart.com/gallery/Contemporary_Art_Projects\">www.commentart.com/gallery/Contemporary<em>Art</em>Projects</a></p>\n\n<p>info@caprojects.com</p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (121, 123, '[www.transitiongallery.co.uk](www.transitiongallery.co.uk)', '<p><a href=\"www.transitiongallery.co.uk\">www.transitiongallery.co.uk</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (123, 126, '[www.re-title.com/exhibitions/BlythGallery.asp](www.re-title.com/exhibitions/BlythGallery.asp)', '<p><a href=\"www.re-title.com/exhibitions/BlythGallery.asp\">www.re-title.com/exhibitions/BlythGallery.asp</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (122, 125, '[www.studiovoltaire.org](www.studiovoltaire.org)', '<p><a href=\"www.studiovoltaire.org\">www.studiovoltaire.org</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (124, 127, '[www.emmahilleagle.com](www.emmahilleagle.com)', '<p><a href=\"www.emmahilleagle.com\">www.emmahilleagle.com</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (125, 128, NULL, NULL);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (126, 129, NULL, NULL);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (127, 130, '[http://www.elinorevans.net/the.htm](http://www.elinorevans.net/the.htm)', '<p><a href=\"http://www.elinorevans.net/the.htm\">http://www.elinorevans.net/the.htm</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (128, 131, 'www.transitiongallery.co.uk/htmlpages/baroque/bmw_pr.html', '<p>www.transitiongallery.co.uk/htmlpages/baroque/bmw_pr.html</p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (129, 132, '[www.arts.ac.uk/territory.htm](www.arts.ac.uk/territory.htm)', '<p><a href=\"www.arts.ac.uk/territory.htm\">www.arts.ac.uk/territory.htm</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (130, 133, '[www.transitiongallery.co.uk/htmlpages/acid_drops/pr.html](www.transitiongallery.co.uk/htmlpages/acid_drops/pr.html)', '<p><a href=\"www.transitiongallery.co.uk/htmlpages/acid_drops/pr.html\">www.transitiongallery.co.uk/htmlpages/acid_drops/pr.html</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (131, 134, NULL, NULL);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (132, 135, 'Kenny Schacter ROVE Hoxton', '<p>Kenny Schacter ROVE Hoxton</p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (133, 136, '[www.transitiongallery.co.uk/htmlpages/gothmoth/gothmoth_pr2.html](www.transitiongallery.co.uk/htmlpages/gothmoth/gothmoth_pr2.html)', '<p><a href=\"www.transitiongallery.co.uk/htmlpages/gothmoth/gothmoth_pr2.html\">www.transitiongallery.co.uk/htmlpages/gothmoth/gothmoth_pr2.html</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (134, 137, NULL, NULL);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (140, 138, 'www.arts.ac.uk/events/5106.htm', '<p>www.arts.ac.uk/events/5106.htm</p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (136, 139, '[www.theempirestudios.co.uk/html/thehorizonofexpectation.html](www.theempirestudios.co.uk/html/thehorizonofexpectation.html)', '<p><a href=\"www.theempirestudios.co.uk/html/thehorizonofexpectation.html\">www.theempirestudios.co.uk/html/thehorizonofexpectation.html</a></p>\n');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (141, 163, NULL, NULL);

-- *** STRUCTURE: `mmt_entries_data_41` ***
DROP TABLE IF EXISTS`tbl_entries_data_41`;
CREATE TABLE`tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) collate utf8_unicode_ci default NULL,
  `value` text collate utf8_unicode_ci,
  `value_formatted` text collate utf8_unicode_ci,
  `word_count` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_41` ***
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (125, 84, 'group-show-at-blyth-gallery-imperial-college-london-organised-by-mimei-thompson', 'group show at Blyth Gallery, Imperial College London, organised by Mimei Thompson', 'group show at Blyth Gallery, Imperial College London, organised by Mimei Thompson', 12);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (78, 85, 'group-show', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (79, 86, 'group-show-2', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (83, 87, 'group-show-with-annabel-dover-alex-pearl-hayley-lock-and-cathy-lomax', 'Group show with Annabel Dover, Alex Pearl, Hayley Lock and Cathy Lomax', 'Group show with Annabel Dover, Alex Pearl, Hayley Lock and Cathy Lomax', 12);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (84, 88, 'group-show-with-annabel-dover-alex-pearl-hayley-lock-and-cathy-lomax-2', 'Group show with Annabel Dover, Alex Pearl, Hayley Lock and Cathy Lomax', 'Group show with Annabel Dover, Alex Pearl, Hayley Lock and Cathy Lomax', 12);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (82, 89, 'group-show-works-on-paper-by-32-artists', 'group show, works on paper by 32 artists', 'group show, works on paper by 32 artists', 7);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (85, 90, 'group-show-curated-by-infinity-bunce-russell-chater-and-richard-stone', 'group show, curated by Infinity Bunce, Russell Chater and Richard Stone ', 'group show, curated by Infinity Bunce, Russell Chater and Richard Stone ', 11);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (77, 83, 'group-show-3', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (86, 91, 'group-show-with-ville-kylaetasku-michael-lawton-juliette-losq-phoebe-mitchell-and-mimei-thompson', 'Group show with Ville Kylätasku, Michael Lawton, Juliette Losq, Phoebe Mitchell and Mimei Thompson.', 'Group show with Ville Kylätasku, Michael Lawton, Juliette Losq, Phoebe Mitchell and Mimei Thompson.', 14);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (87, 92, 'group-show-4', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (88, 93, 'group-show-5', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (80, 94, 'group-show-6', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (89, 95, 'group-show-7', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (90, 96, 'group-show-8', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (81, 97, 'group-show-9', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (93, 98, 'group-show-10', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (29, 106, 'fundraising-art-auction-for-transition-gallery', 'Fundraising art auction for Transition Gallery', 'Fundraising art auction for Transition Gallery', 6);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (91, 107, 'group-show-11', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (92, 108, 'group-show-12', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (94, 109, 'group-show-13', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (95, 110, 'group-show-14', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (96, 111, 'group-show-15', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (97, 112, 'group-show-16', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (98, 113, 'group-show-17', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (99, 114, 'group-show-18', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (100, 115, 'group-show-19', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (40, 116, 'launching-the-drawing-room-at-st-georges-hall', 'Launching the Drawing Room at St George\'s Hall', 'Launching the Drawing Room at St George\'s Hall', 8);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (41, 117, 'new-axis-organised-selling-show-at-psl-project-space-leeds', 'New Axis organised selling show at PSL [Project Space Leeds]', 'New Axis organised selling show at PSL [Project Space Leeds]', 10);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (75, 118, 'solo-show', 'solo show', 'solo show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (101, 119, 'group-show-20', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (44, 120, 'inaugural-exhibition-at-ceri-hand-gallery-liverpool', 'Inaugural exhibition at Ceri Hand Gallery, Liverpool', 'Inaugural exhibition at Ceri Hand Gallery, Liverpool', 7);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (102, 121, 'group-show-21', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (103, 122, 'group-show-22', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (104, 123, 'group-show-23', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (106, 126, 'group-show-25', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (105, 125, 'group-show-24', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (107, 127, 'group-show-26', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (108, 128, 'group-show-27', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (109, 129, 'group-show-28', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (110, 130, 'group-show-29', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (111, 131, 'group-show-30', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (112, 132, 'group-show-31', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (113, 133, 'group-show-32', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (114, 134, 'group-show-33', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (115, 135, 'group-show-34', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (116, 136, 'group-show-35', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (117, 137, 'group-show-36', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (123, 138, 'group-show-37', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (119, 139, 'group-show-38', 'group show', 'group show', 2);
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (124, 163, 'contemporary-art-society-annual-fundraiser', 'Contemporary Art Society Annual Fundraiser', 'Contemporary Art Society Annual Fundraiser', 5);

-- *** STRUCTURE: `mmt_entries_data_43` ***
DROP TABLE IF EXISTS`tbl_entries_data_43`;
CREATE TABLE`tbl_entries_data_43` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) collate utf8_unicode_ci default NULL,
  `value` text collate utf8_unicode_ci,
  `value_formatted` text collate utf8_unicode_ci,
  `word_count` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_43` ***
INSERT INTO`tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (12, 75, 'ma-fine-art', 'MA Fine Art', '<p>MA Fine Art</p>\n', 3);
INSERT INTO`tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (13, 76, 'ba-fine-art-photography', 'BA Fine Art Photography', '<p>BA Fine Art Photography</p>\n', 4);
INSERT INTO`tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (11, 74, 'ma-painting', 'MA Painting', '<p>MA Painting</p>\n', 2);

-- *** STRUCTURE: `mmt_entries_data_5` ***
DROP TABLE IF EXISTS`tbl_entries_data_5`;
CREATE TABLE`tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext collate utf8_unicode_ci,
  `value_formatted` mediumtext collate utf8_unicode_ci,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_5` ***
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (93, 83, 'The Round Tower Broad Street, Old Portsmouth, Hampshire, PO1 2JE', '<p>The Round Tower Broad Street, Old Portsmouth, Hampshire, PO1 2JE</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (141, 84, 'The Blyth Centre, level 5 of the Sherfield Building, Imperial College London, South Kensington Campus, London SW7 2AZ', '<p>The Blyth Centre, level 5 of the Sherfield Building, Imperial College London, South Kensington Campus, London SW7 2AZ</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (94, 85, 'The China Shop Gallery 37a St Mary\'s Road, Oxford, OX4 1PY Open - Saturdays 10am - 4pm', '<p>The China Shop Gallery 37a St Mary\'s Road, Oxford, OX4 1PY Open - Saturdays 10am - 4pm</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (95, 86, 'Transition Gallery, Unit 25a Regent Studios, 8 Andrews Road, London E8 4QN', '<p>Transition Gallery, Unit 25a Regent Studios, 8 Andrews Road, London E8 4QN</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (99, 87, 'Asylum, Caroline Gardens Chapel Asylum Road SE15 2SQ', '<p>Asylum, Caroline Gardens Chapel Asylum Road SE15 2SQ</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (100, 88, 'Asylum, Caroline Gardens Chapel Asylum Road SE15 2SQ', '<p>Asylum, Caroline Gardens Chapel Asylum Road SE15 2SQ</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (98, 89, 'Transition Gallery Unit 25a Regent Studios 8 Andrews Road London E8 4QN', '<p>Transition Gallery Unit 25a Regent Studios 8 Andrews Road London E8 4QN</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (101, 90, 'East Gallery 214 Brick Lane London E1 6SA\r\n\r\n', '<p>East Gallery 214 Brick Lane London E1 6SA</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (102, 91, 'Sun Bear Gallery, hosted at Patriothall Gallery, Edinburgh 1D Patriothall Off Hamilton Place Stockbridge Edinburgh EH3 5AY', '<p>Sun Bear Gallery, hosted at Patriothall Gallery, Edinburgh 1D Patriothall Off Hamilton Place Stockbridge Edinburgh EH3 5AY</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (103, 92, 'Occupy Space Thomas Street Limerick Ireland', '<p>Occupy Space Thomas Street Limerick Ireland</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (104, 93, 'Weltraum Gallery, Rumfordstr.26 80469 München Munich, Germany', '<p>Weltraum Gallery, Rumfordstr.26 80469 München Munich, Germany</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (96, 94, 'Rogue Project Space, 66-72 Chapeltown Street, Piccadilly, Manchester, M1 2WH', '<p>Rogue Project Space, 66-72 Chapeltown Street, Piccadilly, Manchester, M1 2WH</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (105, 95, 'Nunnery Gallery Bow Arts Trust 183 Bow Road E3 2SJ London', '<p>Nunnery Gallery Bow Arts Trust 183 Bow Road E3 2SJ London</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (106, 96, 'Exeter Phoenix Gallery', '<p>Exeter Phoenix Gallery</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (97, 97, 'Lanchester Gallery Projects, Coventry', '<p>Lanchester Gallery Projects, Coventry</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (109, 98, 'Central Art Gallery Tameside, Old Street, Ashton-under-Lyne OL6 7SG', '<p>Central Art Gallery Tameside, Old Street, Ashton-under-Lyne OL6 7SG</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (45, 106, 'Transition Gallery Unit 25a Regent Studios, 8 Andrews Road London, E8 4QN', '<p>Transition Gallery Unit 25a Regent Studios, 8 Andrews Road London, E8 4QN</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (107, 107, 'St Botolph-without-Aldgate, Aldgate High Street, London EC3N 1AB', '<p>St Botolph-without-Aldgate, Aldgate High Street, London EC3N 1AB</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (108, 108, 'DLI Museum & Durham Art Gallery Aykley Heads Durham DH1 5TU', '<p>DLI Museum &amp; Durham Art Gallery Aykley Heads Durham DH1 5TU</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (110, 109, 'Exeter Phoenix Gallery Bradninch Place Gandy Street Exeter Devon EX4 3LS', '<p>Exeter Phoenix Gallery Bradninch Place Gandy Street Exeter Devon EX4 3LS</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (111, 110, 'PSL [Project Space Leeds] Whitehall Waterfront 2 Riverside Way Leeds LS1 4EH', '<p>PSL [Project Space Leeds] Whitehall Waterfront 2 Riverside Way Leeds LS1 4EH</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (112, 111, 'Jerwood Space 171 Union Street London SE1 0LN', '<p>Jerwood Space 171 Union Street London SE1 0LN</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (113, 112, '20-21 Visual Arts Centre St John\'s Church Church Square Scunthorpe North Lincolnshire DN15 6TB', '<p>20-21 Visual Arts Centre St John\'s Church Church Square Scunthorpe North Lincolnshire DN15 6TB</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (114, 113, 'The Drawing Room Tannery Arts, Brunswick Wharf, 55 Laburnum Street, London E2 8BD 020 7729 5333', '<p>The Drawing Room Tannery Arts, Brunswick Wharf, 55 Laburnum Street, London E2 8BD 020 7729 5333</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (115, 114, 'Tricycle Theatre gallery, London', '<p>Tricycle Theatre gallery, London</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (116, 115, 'Crimes Town gallery, Yoakley road, Stoke Newington, London N16 OJX', '<p>Crimes Town gallery, Yoakley road, Stoke Newington, London N16 OJX</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (56, 116, 'The Drawing Room at St Georges Hall, Liverpool', '<p>The Drawing Room at St Georges Hall, Liverpool</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 117, 'PSL [Project Space Leeds] Whitehall Waterfront 2 Riverside Way Leeds LS1 4EH', '<p>PSL [Project Space Leeds] Whitehall Waterfront 2 Riverside Way Leeds LS1 4EH</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (91, 118, 'Transition Gallery, London', '<p>Transition Gallery, London</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (117, 119, 'Peacock Projects 13 Peacock Yard, Iliffe Street, London SE17 3LH', '<p>Peacock Projects 13 Peacock Yard, Iliffe Street, London SE17 3LH</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 120, 'Ceri Hand Gallery, Liverpool', '<p>Ceri Hand Gallery, Liverpool</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (118, 121, 'Brunswick Centre Gallery, Brunswick Centre, London WC1', '<p>Brunswick Centre Gallery, Brunswick Centre, London WC1</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (119, 122, 'Contemporary Art Projects 20 Rivington St London EC2A 3DU 020 7739 1743', '<p>Contemporary Art Projects 20 Rivington St London EC2A 3DU 020 7739 1743</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (120, 123, 'Transition Gallery Unit 25a Regent Studios, 8 Andrews Road, London E8 4QN', '<p>Transition Gallery Unit 25a Regent Studios, 8 Andrews Road, London E8 4QN</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (122, 126, 'Blyth gallery, Level 5, Sherfield Building Imperial College, London, SW7 2AZ', '<p>Blyth gallery, Level 5, Sherfield Building Imperial College, London, SW7 2AZ</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (121, 125, '1a Nelson\'s Row, London SW4 7JR', '<p>1a Nelson\'s Row, London SW4 7JR</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (123, 127, 'Eagle Gallery 159 Farringdon Road London EC1R 3AL', '<p>Eagle Gallery 159 Farringdon Road London EC1R 3AL</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (124, 128, 'Eagle Gallery, Farringdon, London', '<p>Eagle Gallery, Farringdon, London</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (125, 129, 'THREE COLTS GALLERY Three Colts Gallery 2nd flr, Greenheath Business, Centre,Three Colts Lane, E2 6JB', '<p>THREE COLTS GALLERY Three Colts Gallery 2nd flr, Greenheath Business, Centre,Three Colts Lane, E2 6JB</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (126, 130, 'Bilbao, Spain', '<p>Bilbao, Spain</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (127, 131, 'Unit 25a Regent Studios, 8 Andrews Road London E8', '<p>Unit 25a Regent Studios, 8 Andrews Road London E8</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (128, 132, 'Gallery of the University of the Arts 65 Davies St London W1K 5DA', '<p>Gallery of the University of the Arts 65 Davies St London W1K 5DA</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (129, 133, 'Transition and Foster Art galleries', '<p>Transition and Foster Art galleries</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (130, 134, 'Blythe Gallery, Imperial College, London', '<p>Blythe Gallery, Imperial College, London</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (131, 135, '33-34 Hoxton Square, London N1 6NN', '<p>33-34 Hoxton Square, London N1 6NN</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (132, 136, 'Transition Gallery, 10a Lauriston Road London E9\r\n', '<p>Transition Gallery, 10a Lauriston Road London E9</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (133, 137, 'Contemporary Art Society', '<p>Contemporary Art Society</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (139, 138, 'Central Saint Martins College of Art and Design, Southampton Row, London WC1B 4AP', '<p>Central Saint Martins College of Art and Design, Southampton Row, London WC1B 4AP</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (135, 139, 'Empire Studios, 33a Wadeson Street London E2 9DR', '<p>Empire Studios, 33a Wadeson Street London E2 9DR</p>\n');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (140, 163, 'Old Vic Tunnels in Waterloo, London', '<p>Old Vic Tunnels in Waterloo, London</p>\n');

-- *** STRUCTURE: `mmt_entries_data_6` ***
DROP TABLE IF EXISTS`tbl_entries_data_6`;
CREATE TABLE`tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) collate utf8_unicode_ci default NULL,
  `value` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_6` ***
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 6, 'recent-work', 'recent work');
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 20, 2010, 2010);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 25, 2009, 2009);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 32, 2008, 2008);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 34, '2006-2007', '2006–2007');
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 50, '2004-2006', '2004–2006');
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 56, 'older-work', 'Older work');

-- *** STRUCTURE: `mmt_entries_data_63` ***
DROP TABLE IF EXISTS`tbl_entries_data_63`;
CREATE TABLE`tbl_entries_data_63` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) collate utf8_unicode_ci default NULL,
  `value` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_63` ***
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 163, 'http-wwwcontemporaryartsocietyorguk-annual-fundraiser', 'http://www.contemporaryartsociety.org.uk/annual-fundraiser');
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 84, 'http-www3imperialacuk-arts-visualart-blythgaller', 'http://www3.imperial.ac.uk/arts/visualart/blythgaller');

-- *** STRUCTURE: `mmt_entries_data_76` ***
DROP TABLE IF EXISTS`tbl_entries_data_76`;
CREATE TABLE`tbl_entries_data_76` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) collate utf8_unicode_ci default NULL,
  `value` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_76` ***

-- *** STRUCTURE: `mmt_entries_data_77` ***
DROP TABLE IF EXISTS`tbl_entries_data_77`;
CREATE TABLE`tbl_entries_data_77` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext collate utf8_unicode_ci,
  `value_formatted` mediumtext collate utf8_unicode_ci,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_77` ***

-- *** STRUCTURE: `mmt_entries_data_78` ***
DROP TABLE IF EXISTS`tbl_entries_data_78`;
CREATE TABLE`tbl_entries_data_78` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) collate utf8_unicode_ci default NULL,
  `value` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_78` ***

-- *** STRUCTURE: `mmt_entries_data_79` ***
DROP TABLE IF EXISTS`tbl_entries_data_79`;
CREATE TABLE`tbl_entries_data_79` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `mmt_entries_data_79` ***

-- *** STRUCTURE: `mmt_entries_data_8` ***
DROP TABLE IF EXISTS`tbl_entries_data_8`;
CREATE TABLE`tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) collate utf8_unicode_ci default NULL,
  `value` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_8` ***
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (71, 9, 'untitled-cave-painting-7', 'Untitled Cave Painting (7)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (72, 21, 'vacant-lot-rubbish-eaters', 'Vacant Lot (Rubbish Eaters)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 22, 'forest-bonsai', 'Forest Bonsai');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 23, 'feeder', 'Feeder');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (75, 26, 'underground-owl', 'Underground Owl');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (76, 27, 'yellow-tree', 'Yellow Tree');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 28, 'dripping-brain', 'Dripping Brain');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 29, 'twin-face-constellation', 'Twin-face constellation');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 30, 'constellation-with-yellow-eyes', 'Constellation with Yellow Eyes');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 31, 'monkey-face-constellation', 'Monkey-face Constellation  ');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 33, 'yellow-eyes', 'Yellow Eyes');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 35, 'little-emperor', 'Little Emperor');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 36, 'pink-lips-the-duck-story', 'Pink lips- the duck story');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 37, 'francis', 'Francis');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 38, 'the-way-it-goes', 'The way it goes');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 39, 'organic-electric-a-new-beginning', 'organic/electric- a new beginning');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 40, 'swamp-fur', 'Swamp fur');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 41, 'lets-start-something-rose-garden', 'Lets start something (rose garden)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 42, 'our-friends', 'Our Friends');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 43, 'entanglement-centre', 'Entanglement (centre)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 44, 'grotto', 'Grotto');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 45, 'guard', 'Guard');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 46, 'insect-bouquet', 'Insect Bouquet');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 47, 'cuckoo', 'Cuckoo');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 48, 'untitled-autumn-05', 'Untitled (autumn 05)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 49, 'rose-garden', 'Rose Garden');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 51, 'into-the-woods', 'Into the Woods');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 52, 'blossom', 'Blossom');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 53, 'bungalow', 'Bungalow');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 54, 'english-rose', 'English Rose');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 55, 'out-of-the-woods', 'Out of the Woods');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 61, 'untitled-cave-painting-8', 'Untitled Cave Painting (8)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 62, 'untitled-cave-painting-7', 'Untitled Cave Painting (7)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 63, 'cave-panorama', 'Cave (Panorama)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 64, 'untitled-cave-painting-6', 'Untitled Cave Painting (6)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 65, 'untitled-cave-painting-5', 'Untitled Cave Painting (5)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 66, 'untitled-cave-painting-4', 'Untitled Cave Painting (4)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 67, 'untitled-cave-painting-1', 'Untitled Cave Painting (1)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 68, 'untitled-cave-painting-2', 'Untitled Cave Painting (2)');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 69, 'the-walk-bordering-the-pool-of-the-swiss-guards-versailles', 'The Walk Bordering the Pool of the Swiss Guards, Versailles');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 70, 'terrace-of-the-latona-fountain-versailles', 'Terrace of the Latona Fountain, Versailles');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 71, 'orangerie-parterre-versailles', 'Orangerie Parterre, Versailles');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 72, 'parterre-du-midi-versailles', 'Parterre du Midi, Versailles');
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 73, 'the-queens-hamlet-versailles', 'The Queen\'s Hamlet, Versailles');

-- *** STRUCTURE: `mmt_entries_data_87` ***
DROP TABLE IF EXISTS`tbl_entries_data_87`;
CREATE TABLE`tbl_entries_data_87` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_87` ***
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `relation_id`) VALUES (2, 24, 29);

-- *** STRUCTURE: `mmt_entries_data_88` ***
DROP TABLE IF EXISTS`tbl_entries_data_88`;
CREATE TABLE`tbl_entries_data_88` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_88` ***
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `relation_id`) VALUES (13, 175, 63);
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `relation_id`) VALUES (12, 175, 53);
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `relation_id`) VALUES (11, 175, 52);

-- *** STRUCTURE: `mmt_entries_data_9` ***
DROP TABLE IF EXISTS`tbl_entries_data_9`;
CREATE TABLE`tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) collate utf8_unicode_ci default NULL,
  `size` int(11) unsigned default NULL,
  `mimetype` varchar(50) collate utf8_unicode_ci default NULL,
  `meta` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `mmt_entries_data_9` ***
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (71, 9, '/assets/images/250311-103433-i-untitled_cave_painting_7-1345307063.jpeg', 34052, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-18T17:24:23+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:398;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (72, 21, '/assets/images/110610-063922-i-vacant_lot-1345374648.jpeg', 34644, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T12:10:48+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:398;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (73, 22, '/assets/images/110610-070443-i-forest_bonsai-1345374957.jpeg', 35982, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T12:15:57+01:00\";s:5:\"width\";i:499;s:6:\"height\";i:400;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (74, 23, '/assets/images/080310-054359-i-feeder-1345375035.jpeg', 60603, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T12:17:15+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:631;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (75, 26, '/assets/images/270109-095032-i-underground_owljpg-1345408160.jpeg', 25897, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:29:20+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:603;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (76, 27, '/assets/images/020712-044905-i-mimei_thompson_yellow_tr-1345408282.jpeg', 25836, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:31:22+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:400;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (77, 28, '/assets/images/250908-160713-i-dripping_brainjpg-1345408413.jpeg', 46670, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:33:33+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:597;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (78, 29, '/assets/images/190608-064028-i-twin-face_constellationj-1345408469.jpeg', 34338, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:34:29+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:623;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (80, 30, '/assets/images/190608-063836-i-constellation_with_yellow-1345408543.jpeg', 35570, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:35:43+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:624;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (49, 31, '/assets/images/190608-063021-i-monkey_face_constellation-1345408601.jpeg', 29519, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:36:41+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:600;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (21, 33, '/assets/images/yelloweyes-1345409198.jpeg', 29059, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:46:38+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:595;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (22, 35, '/assets/images/littleemperor-1345409273.jpeg', 24595, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:47:53+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:396;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (50, 36, '/assets/images/pinklips-1345409330.jpeg', 30282, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:48:50+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:591;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (51, 37, '/assets/images/francis-1345409381.jpeg', 39156, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:49:41+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:595;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (26, 38, '/assets/images/thewayitgoes-1345409461.jpeg', 57403, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:51:01+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:705;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (52, 39, '/assets/images/organicelectric-1345409526.jpeg', 62168, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:52:06+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:629;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (53, 40, '/assets/images/swampfur-1345409577.jpeg', 58570, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:52:57+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:600;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (29, 41, '/assets/images/letsstartsomething-1345409623.jpeg', 86806, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:53:43+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:748;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (30, 42, '/assets/images/ourfriends-1345409681.jpeg', 76062, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:54:41+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:626;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (31, 43, '/assets/images/entanglement-1345409741.jpeg', 47303, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T21:55:41+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:736;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (32, 44, '/assets/images/grotto-1345410033.jpeg', 30791, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:00:33+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:332;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (33, 45, '/assets/images/guard-1345410102.jpeg', 31342, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:01:42+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:321;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (34, 46, '/assets/images/insectbouquet-1345410155.jpeg', 64013, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:02:35+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:496;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (35, 47, '/assets/images/cuckoo-1345410248.jpeg', 34302, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:04:08+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:503;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (36, 48, '/assets/images/utautumn05-1345410350.jpeg', 42805, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:05:50+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:505;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (37, 49, '/assets/images/rosegarden-1345410434.jpeg', 28863, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:07:14+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:248;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (39, 51, '/assets/images/intothewoods-1345410662.jpeg', 40841, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:11:02+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:373;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (40, 52, '/assets/images/blossom-1345410704.jpeg', 40874, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:11:44+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:344;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (54, 53, '/assets/images/bungalow-1345410762.jpeg', 33624, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:12:42+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:433;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (55, 54, '/assets/images/englishrose-1345410832.jpeg', 39295, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:13:52+01:00\";s:5:\"width\";i:499;s:6:\"height\";i:345;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (56, 55, '/assets/images/outofthewoods-1345410924.jpeg', 69968, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-19T22:15:24+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:505;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (70, 61, '/assets/images/untitled_cave_8-1345460998.jpeg', 39146, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:09:58+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:398;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (58, 62, '/assets/images/untitled_cave_painting_7-1345461050.jpeg', 34052, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:10:50+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:398;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (59, 63, '/assets/images/cave_panorama-1345461091.jpeg', 27532, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:11:31+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:246;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (60, 64, '/assets/images/untitled_cave_painting_6-1345461117.jpeg', 41748, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:11:57+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:400;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (61, 65, '/assets/images/untitled_cave_painting_5-1345461148.jpeg', 40454, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:12:28+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:400;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (62, 66, '/assets/images/untitled_cave_painting_4-1345461185.jpeg', 38504, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:13:05+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:398;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (63, 67, '/assets/images/untitled_cave_painting_1-1345461216.jpeg', 38781, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:13:36+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:394;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (64, 68, '/assets/images/untitled_cave_painting_2-1345461493.jpeg', 41315, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:18:13+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:401;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (65, 69, '/assets/images/the_walk_bordering_the_po-1345461519.jpeg', 47026, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:18:39+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:353;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (66, 70, '/assets/images/terrace_of_the_latona_fou-1345461543.jpeg', 34483, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:19:03+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:353;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (67, 71, '/assets/images/orangerie_parterre_versa-1345461575.jpeg', 34417, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:19:35+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:374;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (68, 72, '/assets/images/parterre_du_midi_versail-1345461601.jpeg', 34009, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:20:01+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:353;}');
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (69, 73, '/assets/images/the_queens_hamlet_vers-1345461642.jpeg', 34831, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-08-20T12:20:42+01:00\";s:5:\"width\";i:500;s:6:\"height\";i:367;}');

-- *** DATA: `mmt_entries` ***
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (74, 8, 1, '2012-08-20 13:41:33', '2012-08-20 12:41:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (73, 3, 1, '2012-08-20 12:20:42', '2012-08-20 11:20:42');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (72, 3, 1, '2012-08-20 12:20:01', '2012-08-20 11:20:01');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (71, 3, 1, '2012-08-20 12:19:35', '2012-08-20 11:19:35');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (70, 3, 1, '2012-08-20 12:19:03', '2012-08-20 11:19:03');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (6, 2, 1, '2012-08-17 08:27:27', '2012-08-17 07:27:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (69, 3, 1, '2012-08-20 12:18:39', '2012-08-20 11:18:39');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (9, 3, 1, '2012-08-18 17:24:23', '2012-08-18 16:24:23');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (68, 3, 1, '2012-08-20 12:18:13', '2012-08-20 11:18:13');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (67, 3, 1, '2012-08-20 12:13:36', '2012-08-20 11:13:36');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (66, 3, 1, '2012-08-20 12:13:05', '2012-08-20 11:13:05');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (65, 3, 1, '2012-08-20 12:12:28', '2012-08-20 11:12:28');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (64, 3, 1, '2012-08-20 12:11:57', '2012-08-20 11:11:57');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (63, 3, 1, '2012-08-20 12:11:31', '2012-08-20 11:11:31');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (62, 3, 1, '2012-08-20 12:10:50', '2012-08-20 11:10:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (61, 3, 1, '2012-08-20 12:09:58', '2012-08-20 11:09:58');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (20, 2, 1, '2012-08-19 11:57:08', '2012-08-19 10:57:08');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (21, 3, 1, '2012-08-19 12:10:48', '2012-08-19 11:10:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (22, 3, 1, '2012-08-19 12:15:57', '2012-08-19 11:15:57');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (23, 3, 1, '2012-08-19 12:17:15', '2012-08-19 11:17:15');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (24, 7, 1, '2012-08-19 12:36:44', '2012-08-19 11:36:44');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (25, 2, 1, '2012-08-19 21:28:21', '2012-08-19 20:28:21');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (26, 3, 1, '2012-08-19 21:29:20', '2012-08-19 20:29:20');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (27, 3, 1, '2012-08-19 21:31:22', '2012-08-19 20:31:22');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (28, 3, 1, '2012-08-19 21:33:33', '2012-08-19 20:33:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (29, 3, 1, '2012-08-19 21:34:29', '2012-08-19 20:34:29');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (30, 3, 1, '2012-08-19 21:35:43', '2012-08-19 20:35:43');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (31, 3, 1, '2012-08-19 21:36:41', '2012-08-19 20:36:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (32, 2, 1, '2012-08-19 21:36:45', '2012-08-19 20:36:45');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (33, 3, 1, '2012-08-19 21:46:38', '2012-08-19 20:46:38');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (34, 2, 1, '2012-08-19 21:46:48', '2012-08-19 20:46:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (35, 3, 1, '2012-08-19 21:47:53', '2012-08-19 20:47:53');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (36, 3, 1, '2012-08-19 21:48:50', '2012-08-19 20:48:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (37, 3, 1, '2012-08-19 21:49:41', '2012-08-19 20:49:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (38, 3, 1, '2012-08-19 21:51:01', '2012-08-19 20:51:01');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (39, 3, 1, '2012-08-19 21:52:06', '2012-08-19 20:52:06');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (40, 3, 1, '2012-08-19 21:52:57', '2012-08-19 20:52:57');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (41, 3, 1, '2012-08-19 21:53:43', '2012-08-19 20:53:43');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (42, 3, 1, '2012-08-19 21:54:41', '2012-08-19 20:54:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (43, 3, 1, '2012-08-19 21:55:41', '2012-08-19 20:55:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (44, 3, 1, '2012-08-19 22:00:33', '2012-08-19 21:00:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (45, 3, 1, '2012-08-19 22:01:42', '2012-08-19 21:01:42');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (46, 3, 1, '2012-08-19 22:02:35', '2012-08-19 21:02:35');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (47, 3, 1, '2012-08-19 22:04:08', '2012-08-19 21:04:08');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (48, 3, 1, '2012-08-19 22:05:50', '2012-08-19 21:05:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (49, 3, 1, '2012-08-19 22:07:14', '2012-08-19 21:07:14');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (50, 2, 1, '2012-08-19 22:07:22', '2012-08-19 21:07:22');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (51, 3, 1, '2012-08-19 22:11:02', '2012-08-19 21:11:02');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (52, 3, 1, '2012-08-19 22:11:44', '2012-08-19 21:11:44');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (53, 3, 1, '2012-08-19 22:12:42', '2012-08-19 21:12:42');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (54, 3, 1, '2012-08-19 22:13:52', '2012-08-19 21:13:52');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (55, 3, 1, '2012-08-19 22:15:24', '2012-08-19 21:15:24');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (56, 2, 1, '2012-08-19 22:15:44', '2012-08-19 21:15:44');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (75, 8, 1, '2012-08-20 13:42:52', '2012-08-20 12:42:52');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (76, 8, 1, '2012-08-20 13:43:48', '2012-08-20 12:43:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (85, 1, 1, '2012-08-20 16:26:09', '2012-08-20 15:26:09');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (84, 1, 1, '2012-08-20 16:13:41', '2012-08-20 15:13:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (83, 1, 1, '2012-08-20 16:12:38', '2012-08-20 15:12:38');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (86, 1, 1, '2012-08-20 16:27:29', '2012-08-20 15:27:29');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (87, 1, 1, '2012-08-20 16:42:06', '2012-08-20 15:42:06');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (88, 1, 1, '2012-08-20 16:43:41', '2012-08-20 15:43:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (89, 1, 1, '2012-08-20 16:48:01', '2012-08-20 15:48:01');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (90, 1, 1, '2012-08-20 16:52:05', '2012-08-20 15:52:05');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (91, 1, 1, '2012-08-20 18:26:59', '2012-08-20 17:26:59');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (92, 1, 1, '2012-08-20 18:29:11', '2012-08-20 17:29:11');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (93, 1, 1, '2012-08-20 18:32:42', '2012-08-20 17:32:42');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (94, 1, 1, '2012-08-20 18:36:38', '2012-08-20 17:36:38');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (95, 1, 1, '2012-08-20 18:39:12', '2012-08-20 17:39:12');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (96, 1, 1, '2012-08-20 18:42:01', '2012-08-20 17:42:01');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (97, 1, 1, '2012-08-20 18:44:11', '2012-08-20 17:44:11');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (98, 1, 1, '2012-08-20 18:45:58', '2012-08-20 17:45:58');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (106, 1, 2, '2012-08-22 19:58:15', '2012-08-22 18:58:15');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (107, 1, 2, '2012-08-22 19:59:45', '2012-08-22 18:59:45');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (108, 1, 2, '2012-08-22 20:01:03', '2012-08-22 19:01:03');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (109, 1, 2, '2012-08-22 20:02:38', '2012-08-22 19:02:38');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (110, 1, 2, '2012-08-22 20:03:52', '2012-08-22 19:03:52');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (111, 1, 2, '2012-08-22 20:05:13', '2012-08-22 19:05:13');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (112, 1, 2, '2012-08-22 20:06:19', '2012-08-22 19:06:19');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (113, 1, 2, '2012-08-22 20:07:51', '2012-08-22 19:07:51');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (114, 1, 2, '2012-08-22 20:09:10', '2012-08-22 19:09:10');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (115, 1, 2, '2012-08-22 20:11:51', '2012-08-22 19:11:51');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (116, 1, 2, '2012-08-22 20:12:59', '2012-08-22 19:12:59');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (117, 1, 2, '2012-08-22 20:14:18', '2012-08-22 19:14:18');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (118, 1, 2, '2012-08-22 20:28:36', '2012-08-22 19:28:36');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (119, 1, 2, '2012-08-22 20:29:42', '2012-08-22 19:29:42');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (120, 1, 2, '2012-08-22 20:30:43', '2012-08-22 19:30:43');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (121, 1, 2, '2012-08-22 20:31:49', '2012-08-22 19:31:49');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (122, 1, 2, '2012-08-22 20:33:26', '2012-08-22 19:33:26');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (123, 1, 2, '2012-08-22 20:35:45', '2012-08-22 19:35:45');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (126, 1, 2, '2012-08-22 20:40:03', '2012-08-22 19:40:03');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (125, 1, 2, '2012-08-22 20:38:14', '2012-08-22 19:38:14');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (127, 1, 2, '2012-08-22 20:41:09', '2012-08-22 19:41:09');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (128, 1, 2, '2012-08-22 20:42:08', '2012-08-22 19:42:08');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (129, 1, 2, '2012-08-22 20:44:18', '2012-08-22 19:44:18');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (130, 1, 2, '2012-08-22 20:45:47', '2012-08-22 19:45:47');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (131, 1, 2, '2012-08-22 20:46:50', '2012-08-22 19:46:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (132, 1, 2, '2012-08-22 20:47:49', '2012-08-22 19:47:49');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (133, 1, 2, '2012-08-22 20:48:48', '2012-08-22 19:48:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (134, 1, 2, '2012-08-22 20:49:31', '2012-08-22 19:49:31');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (135, 1, 2, '2012-08-22 20:52:04', '2012-08-22 19:52:04');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (136, 1, 2, '2012-08-22 20:53:12', '2012-08-22 19:53:12');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (137, 1, 2, '2012-08-22 20:54:01', '2012-08-22 19:54:01');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (138, 1, 2, '2012-08-22 20:55:15', '2012-08-22 19:55:15');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (139, 1, 2, '2012-08-22 20:56:38', '2012-08-22 19:56:38');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (175, 18, 1, '2012-11-26 15:51:57', '2012-11-26 15:51:57');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (163, 1, 1, '2012-11-17 12:36:36', '2012-11-17 12:36:36');

-- *** DATA: `mmt_extensions` ***
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'debugdevkit', 'enabled', '1.2.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'export_ensemble', 'enabled', '2.0.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'jit_image_manipulation', 'enabled', 1.15);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'maintenance_mode', 'enabled', 1.6);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'markdown', 'enabled', 1.14);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'profiledevkit', 'enabled', 1.1);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'selectbox_link_field', 'enabled', 1.23);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'xssfilter', 'enabled', '1.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'datetime', 'enabled', '3.0.5');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'image_upload', 'enabled', '1.2.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'subsectionmanager', 'enabled', '3.0beta2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'textboxfield', 'enabled', 2.3);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (13, 'order_entries', 'enabled', '1.10.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'limit_section_entries', 'enabled', '1.0.1');

-- *** DATA: `mmt_extensions_delegates` ***
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 1, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 1, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 2, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 3, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 3, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 4, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 4, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 4, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 4, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 4, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 4, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 4, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 6, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 6, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 8, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 8, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (17, 8, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (18, 9, '/system/preferences/', 'AddCustomPreferenceFieldsets', '__addPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 9, '/system/preferences/', 'Save', '__savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (36, 11, '/blueprints/datasources/', 'DatasourcePreDelete', '__clearSubsectionCache');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (35, 11, '/blueprints/datasources/', 'DatasourcePostEdit', '__clearSubsectionCache');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (34, 11, '/blueprints/datasources/', 'DatasourcePostCreate', '__clearSubsectionCache');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (33, 11, '/backend/', 'AdminPagePreGenerate', '__appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (26, 13, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (27, 14, '/backend/', 'InitaliseAdminPageHead', 'dInitaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (28, 14, '/backend/', 'AdminPagePreGenerate', 'dAdminPagePreGenerate');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (29, 14, '/blueprints/sections/', 'AddSectionElements', 'dAddSectionElements');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (30, 14, '/blueprints/sections/', 'SectionPreCreate', 'dSaveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (31, 14, '/blueprints/sections/', 'SectionPreEdit', 'dSaveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (37, 11, '/frontend/', 'DataSourceEntriesBuilt', '__prepareSubsection');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (38, 11, '/publish/', 'Delete', '__deleteTabs');

-- *** DATA: `mmt_fields` ***
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Title', 'title', 'input', 1, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Description', 'description', 'textarea', 1, 'no', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Date', 'date', 'datetime', 1, 'yes', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Further info', 'further-info', 'textarea', 1, 'no', 5, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Address', 'address', 'textarea', 1, 'no', 4, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Title', 'title', 'input', 2, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (76, 'Title', 'title', 'input', 16, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Title', 'title', 'input', 3, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Artwork', 'artwork', 'image_upload', 3, 'yes', 1, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'Artworks', 'artworks', 'subsectionmanager', 2, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'Caption', 'caption', 'input', 3, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (16, 'Cover artwork', 'cover-artwork', 'image_upload', 2, 'yes', 2, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (15, 'Description', 'description', 'textarea', 3, 'no', 3, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Description', 'description', 'textarea', 2, 'no', 4, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (78, 'Link (including http://)', 'link', 'input', 16, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (77, 'Description', 'description', 'textarea', 16, 'no', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (22, 'Order', 'order', 'order_entries', 2, 'no', 5, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Order', 'order', 'order_entries', 3, 'no', 4, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Artwork', 'artwork', 'image_upload', 7, 'yes', 0, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Title', 'title', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Date', 'date', 'datetime', 8, 'no', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Description', 'description', 'textarea', 8, 'no', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Order', 'order', 'order_entries', 8, 'no', 4, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Short description', 'short-description', 'textbox', 1, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'Qualification', 'qualification', 'textbox', 8, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (63, 'Link (including http://)', 'link', 'input', 1, 'no', 7, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (79, 'Order', 'order', 'order_entries', 16, 'no', 3, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (88, 'Artwork', 'artwork', 'subsectionmanager', 18, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (87, 'link', 'link', 'selectbox_link', 7, 'no', 1, 'main', 'yes');

-- *** DATA: `mmt_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'home', 'home', NULL, NULL, 'currentevents,homepage,navigation,upcomingevents', NULL, 2);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, NULL, 'work', 'work', NULL, NULL, 'navigation,recentwork', NULL, 3);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, NULL, 'about', 'about', NULL, NULL, 'currentevents,education,navigation,pastevents,upcomingevents', NULL, 4);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (5, 2, 'archive', 'archive', 'work', NULL, 'collections,navigation', NULL, 6);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (6, 2, 'view', 'view', 'work', 'url-title', 'artworkview,navigation', NULL, 7);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (7, 5, 'collection', 'collection', 'work/archive', 'url-title', 'collection,navigation', NULL, 8);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (8, 4, 'events', 'events', 'about', 'url-title', 'event,navigation', NULL, 9);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (16, 4, 'residencies', 'residencies', 'about', 'url-title', 'navigation', NULL, 13);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (10, NULL, 'contact', 'contact', NULL, NULL, 'navigation,externallinks', NULL, 5);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (17, 4, 'collections', 'collections', 'about', 'url-title', 'navigation', NULL, 14);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (12, 4, 'education', 'education', 'about', 'url-title', 'educationdetail,navigation', NULL, 10);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (13, 4, 'press', 'press', 'about', 'url-title', 'navigation', NULL, 11);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (14, 4, 'awards', 'awards', 'about', 'url-title', 'navigation', NULL, 12);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (18, 4, 'publications', 'publications', 'about', 'url-title', 'navigation', NULL, 15);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (19, 4, 'other', 'other', 'about', 'url-title', 'navigation', NULL, 16);

-- *** DATA: `mmt_pages_types` ***
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (18, 1, 'index');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (9, 5, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (12, 6, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (13, 7, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (37, 8, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (38, 16, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (39, 17, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (28, 12, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (31, 13, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (33, 14, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (40, 18, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (41, 19, 'hidden');

-- *** DATA: `mmt_sections` ***
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `max_entries`, `navigation_group`) VALUES (1, 'Events', 'events', 1, NULL, 'asc', 'no', 0, 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `max_entries`, `navigation_group`) VALUES (2, 'Categories', 'categories', 3, NULL, 'asc', 'no', 0, 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `max_entries`, `navigation_group`) VALUES (3, 'Artworks', 'artworks', 4, NULL, 'asc', 'yes', 0, 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `max_entries`, `navigation_group`) VALUES (16, 'External links', 'external-links', 7, NULL, 'asc', 'no', 0, 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `max_entries`, `navigation_group`) VALUES (7, 'Homepage', 'homepage', 5, NULL, 'asc', 'no', 1, 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `max_entries`, `navigation_group`) VALUES (8, 'Education', 'education', 6, NULL, 'asc', 'no', 0, 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `max_entries`, `navigation_group`) VALUES (18, 'Recent work', 'recent-work', 2, NULL, 'asc', 'no', 1, 'Content');

-- *** DATA: `mmt_sections_association` ***
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (30, 2, 11, 3, 11, 'yes');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (37, 3, 8, 7, 87, 'yes');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (36, 18, 88, 3, 88, 'yes');
