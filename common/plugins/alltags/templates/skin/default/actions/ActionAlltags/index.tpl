{include file='header.tpl'}
{literal}
<style type='text/css'>
.block.alltags { background: #fff; }
.block.alltags h1 { text-align:center; font-size: 27px; line-height: 1.1em; font-weight: normal; margin: 0 0 10px;}
.block.alltags ul.cloud { text-align: center; }
.block.alltags ul.cloud li { display: inline; margin-right: 5px; line-height: 22px; }
.block.alltags ul.cloud li a { color: #8b8b8b; text-decoration: none; font-size: 18px; }
.block.alltags ul.cloud li a:hover { background: #777; color: #fff; }
.block.alltags ul.cloud li a.w1 { font-size: 11px; }
.block.alltags ul.cloud li a.w2 { font-size: 12px; }
.block.alltags ul.cloud li a.w3 { font-size: 14px; }
.block.alltags ul.cloud li a.w4 { font-size: 16px; }
.block.alltags ul.cloud li a.w5 { font-size: 18px; }
.block.alltags ul.cloud li a.w6 { font-size: 20px; }
.block.alltags ul.cloud li a.w7 { font-size: 22px; }
.block.alltags ul.cloud li a.w8 { font-size: 24px; }
.block.alltags ul.cloud li a.w9 { font-size: 26px; }
.block.alltags ul.cloud li a.w10 { font-size: 28px; }
</style>
{/literal}

<div class="block alltags" style="padding:0px 20px 20px 20px;">
<h1>Все теги.</h1>
<ul class="cloud">                        
{foreach from=$aTags item=oTag}
<li><a class="w{$oTag->getSize()}" rel="tag" href="{router page='tag'}{$oTag->getText()|escape:'html'}/">{$oTag->getText()|escape:'html'}</a></li>	
{/foreach}
</ul>
</div>
{include file='footer.tpl'}

