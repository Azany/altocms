<?php
/*---------------------------------------------------------------------------
 * @Project: Alto CMS
 * @Project URI: http://altocms.com
 * @Description: Advanced Community Engine
 * @Copyright: Alto CMS Team
 * @License: GNU GPL v2 & MIT
 *----------------------------------------------------------------------------
 */

/**
 * @package engine.modules
 * @since   1.0
 */
class ModuleViewerAsset_EntityPackageJs extends ModuleViewerAsset_EntityPackage {

    public function Init() {

        if (!$this->sOutType) {
            $this->sOutType = 'js';
        }
        if (!$this->sAssetType) {
            $this->sAssetType = 'js';
        }
        $this->aHtmlLinkParams = array(
            'tag'  => 'script',
            'attr' => array(
                'type' => 'text/javascript',
                'src'  => '@link',
            ),
            'pair' => true,
        );
    }

    public function PrepareFile($sFile, $sDestination) {

        $sContents = F::File_GetContents($sFile);
        return $this->PrepareContents($sContents, $sDestination);
    }

}

// EOF