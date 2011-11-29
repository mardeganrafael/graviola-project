<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('NjTypeNotifcation', 'doctrine');

/**
 * BaseNjTypeNotifcation
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property string $description
 * @property timestamp $created_at
 * @property timestamp $updated_at
 * 
 * @method integer           getId()          Returns the current record's "id" value
 * @method string            getDescription() Returns the current record's "description" value
 * @method timestamp         getCreatedAt()   Returns the current record's "created_at" value
 * @method timestamp         getUpdatedAt()   Returns the current record's "updated_at" value
 * @method NjTypeNotifcation setId()          Sets the current record's "id" value
 * @method NjTypeNotifcation setDescription() Sets the current record's "description" value
 * @method NjTypeNotifcation setCreatedAt()   Sets the current record's "created_at" value
 * @method NjTypeNotifcation setUpdatedAt()   Sets the current record's "updated_at" value
 * 
 * @package    graviola
 * @subpackage model
 * @author     Felipe Vieira         <nvieirafelipe@gmail.com>;
               Jean Frizo            <jfrizo@gmail.com>;
               Rafael Mardegan       <mardegan.rafael@gmail.com>;
               Yohan Araújo          <yohanaraujo07@gmail.com>;
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseNjTypeNotifcation extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('nj_type_notification');
        $this->hasColumn('id', 'integer', 8, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => true,
             'primary' => true,
             'autoincrement' => true,
             'length' => 8,
             ));
        $this->hasColumn('description', 'string', 40, array(
             'type' => 'string',
             'notnull' => true,
             'length' => 40,
             ));
        $this->hasColumn('created_at', 'timestamp', 25, array(
             'type' => 'timestamp',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 25,
             ));
        $this->hasColumn('updated_at', 'timestamp', 25, array(
             'type' => 'timestamp',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 25,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $timestampable0 = new Doctrine_Template_Timestampable();
        $this->actAs($timestampable0);
    }
}