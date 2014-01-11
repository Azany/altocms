<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="ru"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="ru"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="ru"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="ru"> <!--<![endif]-->

<head>
{hook run='html_head_begin'}

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>{$sHtmlTitle}</title>

    <meta name="description" content="{$sHtmlDescription}">
    <meta name="keywords" content="{$sHtmlKeywords}">

    <meta name="viewport" content="width=device-width,initial-scale=1">

	{$aHtmlHeadFiles.css}

    <link href="{Config::Get('path.static.skin')}assets/img/favicon.ico?v1" rel="shortcut icon"/>
    <link rel="search" type="application/opensearchdescription+xml" href="{router page='search'}opensearch/"
          title="{Config::Get('view.name')}"/>

{if $aHtmlRssAlternate}
    <link rel="alternate" type="application/rss+xml" href="{$aHtmlRssAlternate.url}" title="{$aHtmlRssAlternate.title}">
{/if}

{if $sHtmlCanonical}
    <link rel="canonical" href="{$sHtmlCanonical}"/>
{/if}

{if $bRefreshToHome}
    <meta HTTP-EQUIV="Refresh" CONTENT="3; URL={Config::Get('path.root.url')}">
{/if}


    <script type="text/javascript">
        var DIR_WEB_ROOT = '{Config::Get("path.root.web")}';
        var DIR_STATIC_SKIN = '{Config::Get("path.static.skin")}';
        var DIR_ROOT_ENGINE_LIB = '{Config::Get("path.root.engine_lib")}';
        var ALTO_SECURITY_KEY = '{$ALTO_SECURITY_KEY}';
        var LIVESTREET_SECURITY_KEY = '{$ALTO_SECURITY_KEY}';
        var SESSION_ID = '{$_sPhpSessionId}';
        var WYSIWYG = {if Config::Get("view.wysiwyg")}true{else}false{/if};

        var l10n = {
            'date_format': '{Config::Get("l10n.date_format")}',
            'week_start': {cfg name="l10n.week_start" default=0}
        };

        var TINYMCE_LANG = 'en';
        {if Config::Get('lang.current') == 'russian'}
        TINYMCE_LANG = 'ru';
        {/if}

        var aRouter = new Array();
        {foreach from=$aRouter key=sPage item=sPath}
        aRouter['{$sPage}'] = '{$sPath}';
        {/foreach}
    </script>

	<style>
	@font-face {
		font-family:'Icons Halflings';src:url('{Config::Get('path.static.skin')}assets/css/fonts/icons-halflings-regular.eot');src:url('{Config::Get('path.static.skin')}assets/css/fonts/icons-halflings-regular.eot?#iefix') format('embedded-opentype'),url('{Config::Get('path.static.skin')}assets/css/fonts/icons-halflings-regular.woff') format('woff'),url('{Config::Get('path.static.skin')}assets/css/fonts/icons-halflings-regular.ttf') format('truetype'),url('{Config::Get('path.static.skin')}assets/css/fonts/icons-halflings-regular.svg#icons-halflingsregular') format('svg');
	}
	</style>
	
{$aHtmlHeadFiles.js}


    <script type="text/javascript">
        var tinyMCE = false;
        ls.lang.load({json var = $aLangJs});
        //ls.registry.set('comment_max_tree', '{Config::Get("module.comment.max_tree")}');
    </script>

{hook run='html_head_end'}
</head>

<body class="{$body_classes}">
{hook run='body_begin'}

<!-- NAVBAR -->
<div class="navbar navbar-inverse navbar-fixed-top">
<div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
        <ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
			<a data-toggle="dropdown" class="dropdown-toggle" href="#">
			<img src="{$oUserCurrent->getAvatarUrl(24)}" alt="avatar" class="avatar"/>
			{$oUserCurrent->getLogin()}
			</a>
			
			<ul class="dropdown-menu">
				<li><a href="{$oUserCurrent->getUserUrl()}"><i class="icon icon-user"></i> {$aLang.user_menu_profile}</a></li>
				<li><a href="/settings/profile/"><i class="icon icon-cog"></i> {$aLang.settings_menu}</a></li>
				<li><a href="{router page='login'}exit/?security_key={$ALTO_SECURITY_KEY}"><i class="icon icon-off"></i> {$aLang.exit}</a></li>
				</ul>
			</li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
			<li>
			<a href="/"><i class="icon icon-home"></i> {$aLang.action.admin.goto_site}</a></li>
			<li>

            <li>
              <a href="#" data-toggle="dropdown">
                <i class="icon icon-send"></i> Онлайн <span class="badge badge-success">178</span> 
              </a>
            </li>

			<li>
			<a href="{router page='talk'}">
			<i class="icon icon-envelope"></i>
                {$aLang.user_privat_messages}
                {if $iUserCurrentCountTalkNew}
				<span class="badge badge-important">{$iUserCurrentCountTalkNew}</span>
                {/if}
               </a>
            </li>

            <li>
              <a href="{router page='feed'}track/">
                <i class="icon icon-bell"></i> {$aLang.subscribe_menu} {if $iUserCurrentCountTrack}<span class="badge badge-important">{$iUserCurrentCountTrack}</span>{/if}
              </a>
            </li>
	
        </ul>
</nav>
</div>

<div class="container">
<!-- SIDEBAR -->
<div id="sidebar" class="b-sidebar">
{block name="sidebar"}{/block}
    <div class="b-sidebar-top">
        <!--Action: [{$sAction}], Event: [{$sEvent}]--><br/>
        <span id="window-width"></span>
    </div>
</div>

<!-- CONTENT -->
<div id="content" class="b-content">

{block name="content"}
    <div id="sticknote" class="b-sticknote">wait...</div>
    <div id="content-header" class="b-content-header">
        <h1 class="b-content-header-title">{$sPageTitle}</h1>
    </div>
    <div id="breadcrumb" class="b-content-breadcrumb">
        <a href="#" ><i class="icon icon-asterisk"></i> {$aLang.action.admin.title}</a>
        <a href="#" class="current">{$sPageTitle}</a>
    </div>

    <div class="container-fluid">
        {block name="sysmessage"}{/block}

        <div class="row-fluid">
            <div class="span12">
            {block name="content-bar"}
            {/block}
            </div>

            <div class="span12">
            {block name="content-body"}
            {/block}
            </div>
        </div>

    </div>
{/block}

</div>

</div>

{hook run='body_end'}

</body>
</html>