<?php
/**
 *		All Tags
 *		a LiveStreet plugin
 *		by Em (http://emg-dev.com)
 *		
 *		Анекдоты:
 *		xxx: кстати, с тех пор как мы живем вместе, я совершенно разучился готовить на одного, поэтому я пожарил картошки на двоих И СОЖРАЛ ВСЕ САМ МУХАХАХАХАХА!!!
 *  
*/

$config = array ();

Config::Set('router.page.alltags', 'PluginAlltags_ActionAlltags');

$config ['maxtags'] = 1000;
$config ['pagetags'] = 'alltags';

return $config;
?>
