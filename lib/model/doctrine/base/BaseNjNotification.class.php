<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('NjNotification', 'doctrine');

/**
 * BaseNjNotification
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property integer $nj_notification_type_id
 * @property string $description
 * @property string $detail
 * @property integer $nj_route_id
 * @property integer $nj_trip_id
 * @property integer $nj_stop_time_id
 * @property decimal $average_speed
 * @property time $time_delay
 * @property timestamp $created_at
 * @property timestamp $updated_at
 * @property NjNotificationType $NjNotificationType
 * @property NjRoute $NjRoute
 * @property NjTrip $NjTrip
 * @property NjStopTime $NjStopTime
 * @property Doctrine_Collection $sfGuardUsers
 * @property Doctrine_Collection $NjNotificationSubscriber
 * 
 * @method integer             getId()                       Returns the current record's "id" value
 * @method integer             getNjNotificationTypeId()     Returns the current record's "nj_notification_type_id" value
 * @method string              getDescription()              Returns the current record's "description" value
 * @method string              getDetail()                   Returns the current record's "detail" value
 * @method integer             getNjRouteId()                Returns the current record's "nj_route_id" value
 * @method integer             getNjTripId()                 Returns the current record's "nj_trip_id" value
 * @method integer             getNjStopTimeId()             Returns the current record's "nj_stop_time_id" value
 * @method decimal             getAverageSpeed()             Returns the current record's "average_speed" value
 * @method time                getTimeDelay()                Returns the current record's "time_delay" value
 * @method timestamp           getCreatedAt()                Returns the current record's "created_at" value
 * @method timestamp           getUpdatedAt()                Returns the current record's "updated_at" value
 * @method NjNotificationType  getNjNotificationType()       Returns the current record's "NjNotificationType" value
 * @method NjRoute             getNjRoute()                  Returns the current record's "NjRoute" value
 * @method NjTrip              getNjTrip()                   Returns the current record's "NjTrip" value
 * @method NjStopTime          getNjStopTime()               Returns the current record's "NjStopTime" value
 * @method Doctrine_Collection getSfGuardUsers()             Returns the current record's "sfGuardUsers" collection
 * @method Doctrine_Collection getNjNotificationSubscriber() Returns the current record's "NjNotificationSubscriber" collection
 * @method NjNotification      setId()                       Sets the current record's "id" value
 * @method NjNotification      setNjNotificationTypeId()     Sets the current record's "nj_notification_type_id" value
 * @method NjNotification      setDescription()              Sets the current record's "description" value
 * @method NjNotification      setDetail()                   Sets the current record's "detail" value
 * @method NjNotification      setNjRouteId()                Sets the current record's "nj_route_id" value
 * @method NjNotification      setNjTripId()                 Sets the current record's "nj_trip_id" value
 * @method NjNotification      setNjStopTimeId()             Sets the current record's "nj_stop_time_id" value
 * @method NjNotification      setAverageSpeed()             Sets the current record's "average_speed" value
 * @method NjNotification      setTimeDelay()                Sets the current record's "time_delay" value
 * @method NjNotification      setCreatedAt()                Sets the current record's "created_at" value
 * @method NjNotification      setUpdatedAt()                Sets the current record's "updated_at" value
 * @method NjNotification      setNjNotificationType()       Sets the current record's "NjNotificationType" value
 * @method NjNotification      setNjRoute()                  Sets the current record's "NjRoute" value
 * @method NjNotification      setNjTrip()                   Sets the current record's "NjTrip" value
 * @method NjNotification      setNjStopTime()               Sets the current record's "NjStopTime" value
 * @method NjNotification      setSfGuardUsers()             Sets the current record's "sfGuardUsers" collection
 * @method NjNotification      setNjNotificationSubscriber() Sets the current record's "NjNotificationSubscriber" collection
 * 
 * @package    graviola
 * @subpackage model
 * @author     Felipe Vieira         <nvieirafelipe@gmail.com>;
               Jean Frizo            <jfrizo@gmail.com>;
               Rafael Mardegan       <mardegan.rafael@gmail.com>;
               Yohan Araújo          <yohanaraujo07@gmail.com>;
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseNjNotification extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('nj_notification');
        $this->hasColumn('id', 'integer', 8, array(
             'type' => 'integer',
             'unsigned' => true,
             'primary' => true,
             'autoincrement' => true,
             'length' => 8,
             ));
        $this->hasColumn('nj_notification_type_id', 'integer', 8, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => true,
             'notnull' => true,
             'length' => 8,
             ));
        $this->hasColumn('description', 'string', 128, array(
             'type' => 'string',
             'notnull' => true,
             'length' => 128,
             ));
        $this->hasColumn('detail', 'string', null, array(
             'type' => 'string',
             'notnull' => false,
             'length' => '',
             ));
        $this->hasColumn('nj_route_id', 'integer', 8, array(
             'type' => 'integer',
             'unsigned' => true,
             'notnull' => false,
             'length' => 8,
             ));
        $this->hasColumn('nj_trip_id', 'integer', 8, array(
             'type' => 'integer',
             'unsigned' => true,
             'notnull' => false,
             'length' => 8,
             ));
        $this->hasColumn('nj_stop_time_id', 'integer', 8, array(
             'type' => 'integer',
             'unsigned' => true,
             'notnull' => false,
             'length' => 8,
             ));
        $this->hasColumn('average_speed', 'decimal', 5, array(
             'type' => 'decimal',
             'scale' => 2,
             'unsigned' => true,
             'notnull' => true,
             'length' => 5,
             ));
        $this->hasColumn('time_delay', 'time', null, array(
             'type' => 'time',
             'notnull' => false,
             ));
        $this->hasColumn('created_at', 'timestamp', 25, array(
             'type' => 'timestamp',
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 25,
             ));
        $this->hasColumn('updated_at', 'timestamp', 25, array(
             'type' => 'timestamp',
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
        $this->hasOne('NjNotificationType', array(
             'local' => 'nj_notification_type_id',
             'foreign' => 'id',
             'onDelete' => 'CASCADE',
             'onUpdate' => 'CASCADE'));

        $this->hasOne('NjRoute', array(
             'local' => 'nj_route_id',
             'foreign' => 'id'));

        $this->hasOne('NjTrip', array(
             'local' => 'nj_trip_id',
             'foreign' => 'id',
             'onDelete' => 'CASCADE',
             'onUpdate' => 'CASCADE'));

        $this->hasOne('NjStopTime', array(
             'local' => 'nj_stop_time_id',
             'foreign' => 'id',
             'onDelete' => 'CASCADE',
             'onUpdate' => 'CASCADE'));

        $this->hasMany('sfGuardUser as sfGuardUsers', array(
             'refClass' => 'NjNotificationSubscriber',
             'local' => 'nj_route_id',
             'foreign' => 'user_id'));

        $this->hasMany('NjNotificationSubscriber', array(
             'local' => 'nj_route_id',
             'foreign' => 'nj_route_id'));

        $timestampable0 = new Doctrine_Template_Timestampable();
        $this->actAs($timestampable0);
    }
}