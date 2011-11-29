<?php

/**
 * NjVehicleTable
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class NjVehicleTable extends Doctrine_Table
{
    /**
     * Returns an instance of this class.
     *
     * @return object NjVehicleTable
     */
    public static function getInstance()
    {
        return Doctrine_Core::getTable('NjVehicle');
    }
    
    public static function getFreeVehicles()
    {
      $query = NjVehicleTable::getInstance()->createQuery('v')
              ->where('v.id NOT IN (SELECT t.nj_vehicle_id FROM NjTrip t)');

      return $query->execute();
    }
}