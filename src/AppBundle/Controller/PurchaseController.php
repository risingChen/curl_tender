<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace AppBundle\Controller;

use AppBundle\Curl\Api;
use AppBundle\Curl\CurlTools;
use AppBundle\Entity\tender_detail;
use AppBundle\Entity\tender_info;
use DateTime;
use phpQuery;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use function pq;

/**
 * Description of PurchaseController
 *
 * @author Administrator
 */
class PurchaseController extends Controller {

    //put your code here
    private $em;

    /**
     * Matches / exactly
     * 
     * @Route("/",name = "purchase_index")
     */
    public function indexAction($number) {
        return $this->render('purchase/index.html.twig');
    }

    /**
     * Matches /purchase exactly
     * 
     * @Route("/purchase/list",name = "purchase_list")
     */
    public function listAction(Request $request) {
        
        $keyword = $request->request->get('keyword');
        $starttime = $request->request->get("start");
        $endtime = $request->request->get("end");
        $pagesize = $request->request->get("pagesize");
        set_time_limit(0);
        $this->em = $this->getDoctrine()->getManager();
        $domain = $this->container->getParameter('second_host');
        for ($i = 1; $i <= $pagesize; $i++) {
            $curl_target = $domain . "dataB.jsp?searchtype=2&bidSort=0&buyerName=&projectId=&pinMu=0&bidType=0&dbselect=bidx&kw={$keyword}&start_time={$starttime}&end_time={$endtime}&timeType=3&displayZone=&zoneId=&pppStatus=&agentName=&page_index={$i}";
            $purContent = CurlTools::get($curl_target);
            $doc = phpQuery::newDocumentHTML($purContent);
            phpQuery::selectDocument($doc);
            $searchList = pq(".vT-srch-result-list-bid li");
            foreach ($searchList as $index) {
                $tender_model = new tender_info();
                $title = strip_tags(pq($index)->find("a")->html());
                $link = pq($index)->find("a")->attr("href");
                $info = strip_tags(pq($index)->find("span")->html());
                $infoResult = explode("|", $info);
                if($this->issetLinkRecord($link,$title)){
                    continue;
                }
                $tender_model->setLink($link);
                $tender_model->setTitle($title);
                $tender_model->setCreatetime(new DateTime(str_replace(".", "-", $infoResult[0])));
                $tender_model->setPurchase($infoResult[1]);
                $tender_model->setOrganization($infoResult[2]);
                $tender_model->setArea($infoResult[3]);
                $this->em->persist($tender_model);
                $this->em->flush();
            }
        }
       echo "insert finish";die();
    }

    /**
     * Matches /purchase exactly
     * 
     * @Route("/purchase/info",name = "purchase_info")
     */
    public function infoAction() {
        set_time_limit(0);
        $this->em = $this->getDoctrine()->getManager();
        $link_collection = $this->getDoctrine()->getRepository("AppBundle:tender_info")->findAll();
        foreach ($link_collection as $info) {
            $id = $info->getId();
            if($this->issetdetailRecord($id)){
                continue;
            }
            $purContent = CurlTools::get($info->getLink());
            $doc = phpQuery::newDocumentHTML($purContent);
            phpQuery::selectDocument($doc);
            $table = pq("div.table")->find("table")->find("tr");
            $tdArr = array();
            foreach ($table as $tr) {
                $td = pq($tr)->find("td");
                foreach ($td as $v) {
                    $tdindex = pq($v)->html();
                    if (strpos($tdindex, "<b>") > -1) {
                        continue;
                    } else {
                        $tdArr[] = strip_tags(pq($v)->html());
                    }
                }
            }
            foreach(array_chunk($tdArr, 2) as $v){
                list($key,$value) = $v;
                $detailBean = new tender_detail();
                $detailBean->setField($key);
                $detailBean->setDetail($value);
                $detailBean->setParentid($id);
                $this->em->persist($detailBean);
                $this->em->flush();
            }
        }
       echo "insert finish";die();
    }

    private function issetLinkRecord($link, $title) {
        $linkResult = $this->em->getRepository('AppBundle:tender_info')->findOneByWhere($link, $title);
        return count($linkResult) > 0 ? true : false;
    }
    
    private function issetdetailRecord($parentid) {
        $linkResult = $this->em->getRepository('AppBundle:tender_detail')->findOneByParentId($parentid);
        return count($linkResult) > 0 ? true : false;
    }

}
