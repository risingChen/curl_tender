<?php

namespace AppBundle\Repository;

use Doctrine\ORM\EntityRepository;

/**
 * tender_infoRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class tender_infoRepository extends EntityRepository
{
    public function findOneByWhere($link,$title) {
        $query = $this->getEntityManager()->createQuery('SELECT a FROM AppBundle:tender_info a  WHERE a.link = :link and a.title = :Title')
            ->setParameter("link", $link)
            ->setParameter("Title",  $title)
            ->getResult();
        return $query ;
    }
}
