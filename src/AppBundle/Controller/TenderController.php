<?php

namespace AppBundle\Controller;

use AppBundle\Entity\link_collection;
use phpQuery;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use function pq;

class TenderController extends Controller {

    private $em;

    /**
     * Matches /tender exactly
     * 
     * @Route("/tender",name = "tender_index")
     */
    public function indexAction($number) {
        $number = mt_rand(0, 100);
    }

    /**
     * Matches /tender exactly
     * 
     * @Route("/tender/link",name = "tender_link")
     */
    public function curl_link() {
        set_time_limit(0);
        $this->em = $this->getDoctrine()->getManager();
        $domain = $this->container->getParameter('host');
        $firstPage = $this->container->getParameter('firstpage');
        $curl_target = $domain . $firstPage . "1";
        $doc = phpQuery::newDocumentFile($curl_target);
        phpQuery::selectDocument($doc);
        $totalPageStr = pq(".pg .last")->attr("href");
        $totalPage = $this->formatTotalPage($totalPageStr);
        //catch  page
        for ($i = 1; $i <= $totalPage; $i++) {
            $curl_target = $domain . $firstPage . $i;
            $doc = phpQuery::newDocumentFile($curl_target);
            phpQuery::selectDocument($doc);
            foreach (pq("#threadlisttableid .xst") as $key => $dom) {
                if ($i == 0 && $key == 0) {
                    continue;
                }
                $target_child_link = pq($dom)->attr("href");
                $target_child_title = pq($dom)->html();
                $issetData = $this->issetLinkRecord($target_child_link, $target_child_title);
                if ($issetData) {
                    continue;
                }
                $link_obj = new link_collection();
                $link_obj->setLink($target_child_link);
                $link_obj->setTitle($target_child_title);
                $this->em->persist($link_obj);
                $this->em->flush();
            }
            echo $curl_target . "<br />";
        }
    }

    /**
     * Matches /tender exactly
     * 
     * @Route("/tender/info",name = "tender_info")
     */
    public function curl_info() {
        set_time_limit(0);
        $this->em = $this->getDoctrine()->getManager();
        $link_collection = $this->getDoctrine()->getRepository("AppBundle:link_collection")->findAll();
        foreach($link_collection as $info){
            echo $info->getTitle();
        }
        $domain = $this->container->getParameter('host');
        die();
    }
    
    
    
    
    private function issetLinkRecord($link, $title) {
        $flag = false;
        $linkResult = $this->em->getRepository('AppBundle:link_collection')->findOneByWhere($link, $title);
        return count($linkResult) > 0 ? true : false;
    }

    private function formatTotalPage($totalPageStr) {
        $pageinfo = split("&", $totalPageStr);
        foreach ($pageinfo as $value) {
            $v = split("=", $value);
            if ($v[0] == "page") {
                $totalPage = $v[1];
            }
        }
        return $totalPage;
    }

}
