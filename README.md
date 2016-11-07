Symfony Standard Edition
========================

Welcome to the Symfony Standard Edition - a fully-functional Symfony
application that you can use as the skeleton for your new applications.

For details on how to download and get started with Symfony, see the
[Installation][1] chapter of the Symfony Documentation.

What's inside?
--------------

The Symfony Standard Edition is configured with the following defaults:

  * An AppBundle you can use to start coding;

  * Twig as the only configured template engine;

  * Doctrine ORM/DBAL;

  * Swiftmailer;

  * Annotations enabled for everything.

It comes pre-configured with the following bundles:

  * **FrameworkBundle** - The core Symfony framework bundle

  * [**SensioFrameworkExtraBundle**][6] - Adds several enhancements, including
    template and routing annotation capability

  * [**DoctrineBundle**][7] - Adds support for the Doctrine ORM

  * [**TwigBundle**][8] - Adds support for the Twig templating engine

  * [**SecurityBundle**][9] - Adds security by integrating Symfony's security
    component

  * [**SwiftmailerBundle**][10] - Adds support for Swiftmailer, a library for
    sending emails

  * [**MonologBundle**][11] - Adds support for Monolog, a logging library

  * **WebProfilerBundle** (in dev/test env) - Adds profiling functionality and
    the web debug toolbar

  * **SensioDistributionBundle** (in dev/test env) - Adds functionality for
    configuring and working with Symfony distributions

  * [**SensioGeneratorBundle**][13] (in dev/test env) - Adds code generation
    capabilities

  * **DebugBundle** (in dev/test env) - Adds Debug and VarDumper component
    integration

All libraries and bundles included in the Symfony Standard Edition are
released under the MIT or BSD license.

Enjoy!

[1]:  https://symfony.com/doc/3.0/book/installation.html
[6]:  https://symfony.com/doc/current/bundles/SensioFrameworkExtraBundle/index.html
[7]:  https://symfony.com/doc/3.0/book/doctrine.html
[8]:  https://symfony.com/doc/3.0/book/templating.html
[9]:  https://symfony.com/doc/3.0/book/security.html
[10]: https://symfony.com/doc/3.0/cookbook/email.html
[11]: https://symfony.com/doc/3.0/cookbook/logging/monolog.html
[13]: https://symfony.com/doc/3.0/bundles/SensioGeneratorBundle/index.html


SELECT
		parentid,
		GROUP_CONCAT(if(field = '采购项目名称', detail, NULL)) AS '采购项目名称', 
		GROUP_CONCAT(if(field = '品目', detail, NULL)) AS '品目', 
		GROUP_CONCAT(if(field = '行政区域', detail, NULL)) AS '行政区域',
		GROUP_CONCAT(if(field = '公告时间', detail, NULL)) AS '公告时间',
		GROUP_CONCAT(if(field = '获取招标文件时间', detail, NULL)) AS '获取招标文件时间',
		GROUP_CONCAT(if(field = '招标文件售价', detail, NULL)) AS '招标文件售价',
		GROUP_CONCAT(if(field = '获取招标文件的地点', detail, NULL)) AS '获取招标文件的地点',
		GROUP_CONCAT(if(field = '开标时间', detail, NULL)) AS '开标时间',
		GROUP_CONCAT(if(field = '开标地点', detail, NULL)) AS '开标地点',
		GROUP_CONCAT(if(field = '预算金额', detail, NULL)) AS '预算金额',
		GROUP_CONCAT(if(field = '项目联系人', detail, NULL)) AS '项目联系人',
		GROUP_CONCAT(if(field = '项目联系电话', detail, NULL)) AS '项目联系电话',
		GROUP_CONCAT(if(field = '采购单位', detail, NULL)) AS '采购单位',
		GROUP_CONCAT(if(field = '采购单位地址', detail, NULL)) AS '采购单位地址',
		GROUP_CONCAT(if(field = '采购单位联系方式', detail, NULL)) AS '采购单位联系方式',
		GROUP_CONCAT(if(field = '代理机构名称', detail, NULL)) AS '代理机构名称',
		GROUP_CONCAT(if(field = '代理机构联系方式', detail, NULL)) AS '代理机构联系方式',
        GROUP_CONCAT(if(field = '附件1', detail, NULL)) AS '附件1',
        GROUP_CONCAT(if(field = '本项目招标公告日期', detail, NULL)) AS '本项目招标公告日期',
        GROUP_CONCAT(if(field = '中标日期', detail, NULL)) AS '中标日期',
        GROUP_CONCAT(if(field = '评审专家名单', detail, NULL)) AS '评审专家名单',
        GROUP_CONCAT(if(field = '总中标金额', detail, NULL)) AS '总中标金额',
        GROUP_CONCAT(if(field = '首次公告日期', detail, NULL)) AS '首次公告日期',
        GROUP_CONCAT(if(field = '更正日期', detail, NULL)) AS '更正日期',
        GROUP_CONCAT(if(field = '附件2', detail, NULL)) AS '附件2',
        GROUP_CONCAT(if(field = '获取谈判文件的地点', detail, NULL)) AS '获取谈判文件的地点',
        GROUP_CONCAT(if(field = '获取谈判文件的时间', detail, NULL)) AS '获取谈判文件的时间',
        GROUP_CONCAT(if(field = '报名时间', detail, NULL)) AS '报名时间',
        GROUP_CONCAT(if(field = '报名地点', detail, NULL)) AS '报名地点',
        GROUP_CONCAT(if(field = '成交日期', detail, NULL)) AS '成交日期',
        GROUP_CONCAT(if(field = '谈判小组、询价小组成员、磋商小组成员名单及单一来源采购人员名单', detail, NULL)) AS '谈判小组、询价小组成员、磋商小组成员名单及单一来源采购人员名单',
        GROUP_CONCAT(if(field = '总成交金额', detail, NULL)) AS '总成交金额'
FROM tender_detail GROUP BY parentid