{* не отображать силу пользователя
<div class="visible-xxs hif last-div rating-value {if $oUserList->getSkill() < 0}red{/if}" style="display: none;">{$aLang.user_skill}: {$oUserList->getSkill()|number_format:{Config::Get('view.skill_length')}}</div>
*}
<div class="visible-xxs hif last-div rating-value {if $oUserList->getRating() < 0}red{/if}" style="display: none;">{$aLang.user_rating}: {$oUserList->getRating()|number_format:{Config::Get('view.rating_length')}}</div>