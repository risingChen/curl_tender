<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace AppBundle\Controller;

use AppBundle\Curl\CurlTools;
use AppBundle\Entity\tender_detail;
use AppBundle\Entity\tender_info;
use DateTime;
use PHPExcel;
use PHPExcel_IOFactory;
use PHPExcel_Style_Fill;
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
                if ($this->issetLinkRecord($link, $title)) {
                    continue;
                }
                $tender_model->setLink($link);
                $tender_model->setTitle($title);
                $tender_model->setCreatetime(new DateTime(str_replace(".", "-", $infoResult[0])));
                $tender_model->setPurchase(str_replace("采购人：", "", $infoResult[1]));
                $tender_model->setOrganization(str_replace("代理机构：", "", $infoResult[2]));
                $tender_model->setArea($infoResult[3]);
                $this->em->persist($tender_model);
                $this->em->flush();
            }
        }
        echo "insert finish";
        die();
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
            if ($this->issetdetailRecord($id)) {
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
            foreach (array_chunk($tdArr, 2) as $v) {
                list($key, $value) = $v;
                $detailBean = new tender_detail();
                $detailBean->setField($key);
                $detailBean->setDetail($value);
                $detailBean->setParentid($id);
                $this->em->persist($detailBean);
                $this->em->flush();
            }
        }
        echo "insert finish";
        die();
    }

    /**
     * Matches /purchase exactly
     * 
     * @Route("/purchase/export",name = "purchase_export")
     */
    public function exportAction() {
        $result = $this->exportExecl();

        $execlObj = new PHPExcel();

        $titleStyle = array('font' => array('size' => 10,'bold' => true,'color' => array('rgb' => '000')));
        $execlObj->getActiveSheet()->getStyle('A1:Z1')->applyFromArray($titleStyle);
        $execlObj->setActiveSheetIndex(0)
                ->setCellValue("A1", "标题")
                ->setCellValue("B1", "链接")
                ->setCellValue("C1", "采购人")
                ->setCellValue("D1", "代理机构")
                ->setCellValue("E1", "采购项目名称")
                ->setCellValue("F1", "地区")
                ->setCellValue("G1", "行政区域")
                ->setCellValue("H1", "公告时间")
                ->setCellValue("I1", "开标时间")
                ->setCellValue("J1", "预算金额")
                ->setCellValue("K1", "项目联系电话")
                ->setCellValue("L1", "采购单位")
                ->setCellValue("M1", "采购单位地址")
                ->setCellValue("N1", "采购单位联系方式")
                ->setCellValue("O1", "代理机构名称")
                ->setCellValue("P1", "代理机构联系方式")
                ->setCellValue("Q1", "本项目招标公告日期")
                ->setCellValue("R1", "中标日期")
                ->setCellValue("S1", "评审专家名单")
                ->setCellValue("T1", "总中标金额")
                ->setCellValue("U1", "首次公告日期")
                ->setCellValue("V1", "更正日期")
                ->setCellValue("W1", "报名时间")
                ->setCellValue("X1", "报名地点")
                ->setCellValue("Y1", "成交日期")
                ->setCellValue("Z1", "总成交金额");
       
        foreach ($result as $key => $v) {
            $key = $key + 2;
            $execlObj->setActiveSheetIndex(0)
                    ->setCellValue("A" . $key, $v["Title"])
                    ->setCellValue("B" . $key, $v["link"])
                    ->setCellValue("C" . $key, $v["purchase"])
                    ->setCellValue("D" . $key, $v["organization"])
                    ->setCellValue("E" . $key, $v["采购项目名称"])
                    ->setCellValue("F" . $key, $v["area"])
                    ->setCellValue("G" . $key, $v["行政区域"])
                    ->setCellValue("H" . $key, $v["公告时间"])
                    ->setCellValue("I" . $key, $v["开标时间"])
                    ->setCellValue("J" . $key, $v["预算金额"])
                    ->setCellValue("K" . $key, $v["项目联系电话"])
                    ->setCellValue("L" . $key, $v["采购单位"])
                    ->setCellValue("M" . $key, $v["采购单位地址"])
                    ->setCellValue("N" . $key, $v["采购单位联系方式"])
                    ->setCellValue("O" . $key, $v["代理机构名称"])
                    ->setCellValue("P" . $key, $v["代理机构联系方式"])
                    ->setCellValue("Q" . $key, $v["本项目招标公告日期"])
                    ->setCellValue("R" . $key, $v["中标日期"])
                    ->setCellValue("S" . $key, $v["评审专家名单"])
                    ->setCellValue("T" . $key, $v["总中标金额"])
                    ->setCellValue("U" . $key, $v["首次公告日期"])
                    ->setCellValue("V" . $key, $v["更正日期"])
                    ->setCellValue("W" . $key, $v["报名时间"])
                    ->setCellValue("X" . $key, $v["报名地点"])
                    ->setCellValue("Y" . $key, $v["成交日期"])
                    ->setCellValue("Z" . $key, $v["总成交金额"]);
            if ($v["项目联系电话"] == "详见公告正文") {
                $execlObj->getActiveSheet()->getStyle("A" . $key . ":Z" . $key)->getFill()->applyFromArray(array(
                    'type' => PHPExcel_Style_Fill::FILL_SOLID,
                    'startcolor' => array(
                        'rgb' => 'F28A8C'
                    )
                ));
            }
        }

        $filename = urlencode('爬虫统计表') . '_' . date('Y-m-dHis');
        \header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        \header('Content-Disposition: attachment;filename="' . $filename . '.xlsx"');
        \header('Cache-Control: max-age=0');
        $objWriter = PHPExcel_IOFactory::createWriter($execlObj, 'Excel2007');
        \header('Content-Type: application/vnd.ms-excel');
        \header('Content-Disposition: attachment;filename="' . $filename . '.xls"');
        \header('Cache-Control: max-age=0');
        $objWriter = PHPExcel_IOFactory::createWriter($execlObj, 'Excel5');
        $objWriter->save('php://output');
        die();
    }

    private function issetLinkRecord($link, $title) {
        $linkResult = $this->em->getRepository('AppBundle:tender_info')->findOneByWhere($link, $title);
        return count($linkResult) > 0 ? true : false;
    }

    private function issetdetailRecord($parentid) {
        $linkResult = $this->em->getRepository('AppBundle:tender_detail')->findOneByParentId($parentid);
        return count($linkResult) > 0 ? true : false;
    }

    private function exportExecl() {
        $sql = "select a.Title,a.link,a.purchase,a.organization,b.采购项目名称,a.area,b.行政区域,b.公告时间,b.开标时间,b.预算金额,b.项目联系电话,b.采购单位,b.采购单位地址,b.采购单位联系方式,b.代理机构名称,
                b.代理机构联系方式,b.本项目招标公告日期,b.中标日期,b.评审专家名单,b.总中标金额,b.首次公告日期,b.更正日期,b.报名时间,b.报名地点,b.成交日期,b.总成交金额
                from tender_info as a INNER JOIN (
                    SELECT
                        parentid,
                        GROUP_CONCAT(if(field = '采购项目名称', detail, NULL)) AS '采购项目名称', 
                        GROUP_CONCAT(if(field = '行政区域', detail, NULL)) AS '行政区域',
                        GROUP_CONCAT(if(field = '公告时间', detail, NULL)) AS '公告时间',
                        GROUP_CONCAT(if(field = '开标时间', detail, NULL)) AS '开标时间',
                        GROUP_CONCAT(if(field = '预算金额', detail, NULL)) AS '预算金额',
                        GROUP_CONCAT(if(field = '项目联系电话', detail, NULL)) AS '项目联系电话',
                        GROUP_CONCAT(if(field = '采购单位', detail, NULL)) AS '采购单位',
                        GROUP_CONCAT(if(field = '采购单位地址', detail, NULL)) AS '采购单位地址',
                        GROUP_CONCAT(if(field = '采购单位联系方式', detail, NULL)) AS '采购单位联系方式',
                        GROUP_CONCAT(if(field = '代理机构名称', detail, NULL)) AS '代理机构名称',
                        GROUP_CONCAT(if(field = '代理机构联系方式', detail, NULL)) AS '代理机构联系方式',
                        GROUP_CONCAT(if(field = '本项目招标公告日期', detail, NULL)) AS '本项目招标公告日期',
                        GROUP_CONCAT(if(field = '中标日期', detail, NULL)) AS '中标日期',
                        GROUP_CONCAT(if(field = '评审专家名单', detail, NULL)) AS '评审专家名单',
                        GROUP_CONCAT(if(field = '总中标金额', detail, NULL)) AS '总中标金额',
                        GROUP_CONCAT(if(field = '首次公告日期', detail, NULL)) AS '首次公告日期',
                        GROUP_CONCAT(if(field = '更正日期', detail, NULL)) AS '更正日期',
                        GROUP_CONCAT(if(field = '报名时间', detail, NULL)) AS '报名时间',
                        GROUP_CONCAT(if(field = '报名地点', detail, NULL)) AS '报名地点',
                        GROUP_CONCAT(if(field = '成交日期', detail, NULL)) AS '成交日期',
                        GROUP_CONCAT(if(field = '总成交金额', detail, NULL)) AS '总成交金额'
                    FROM tender_detail GROUP BY parentid) 
                as b on a.id =b.parentid";

        $em = $this->getDoctrine()->getManager();
        $stmt = $em->getConnection()->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

}
