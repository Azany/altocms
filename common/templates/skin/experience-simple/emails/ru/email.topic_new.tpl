 {* Тема оформления Experience v.1.0  для Alto CMS      *}
 {* @licence     CC Attribution-ShareAlike   *}

Пользователь <a href="{$oUserTopic->getProfileUrl()}">{$oUserTopic->getDisplayName()}</a> опубликовал в блоге
<b>«{$oBlog->getTitle()|escape:'html'}»</b> новый пост -  <a href="{$oTopic->getUrl()}">{$oTopic->getTitle()|escape:'html'}</a><br>

<br><br>
С уважением, администрация сайта <a href="{Config::Get('path.root.url')}">{Config::Get('view.name')}</a>