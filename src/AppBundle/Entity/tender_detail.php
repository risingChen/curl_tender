<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * tender_detail
 *
 * @ORM\Table(name="tender_detail")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\tender_detailRepository")
 */
class tender_detail
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="field", type="string", length=255)
     */
    private $field;

    /**
     * @var string
     *
     * @ORM\Column(name="detail", type="string", length=255)
     */
    private $detail;
    
    /**
     * @var string
     *
     * @ORM\Column(name="parentid", type="integer")
     */
    private $parentid;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set field
     *
     * @param string $field
     *
     * @return tender_detail
     */
    public function setField($field)
    {
        $this->field = $field;

        return $this;
    }

    /**
     * Get field
     *
     * @return string
     */
    public function getField()
    {
        return $this->field;
    }

    /**
     * Set detail
     *
     * @param string $detail
     *
     * @return tender_detail
     */
    public function setDetail($detail)
    {
        $this->detail = $detail;

        return $this;
    }

    /**
     * Get detail
     *
     * @return string
     */
    public function getDetail()
    {
        return $this->detail;
    }
    
    /**
     * Get parentid
     *
     * @return string
     */
    function getParentid() {
        return $this->parentid;
    }

    /**
     * Set parentid
     *
     * @param int parentid
     *
     * @return tender_detail
     */
    function setParentid($parentid) {
        $this->parentid = $parentid;
        
        return $this;
    }


}

