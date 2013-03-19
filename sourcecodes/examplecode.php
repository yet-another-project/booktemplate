<?php
// PHP comment line

/**
 * My class
 */
class MyClass
{
    public $public = 'Public';
    protected $protected = 'Protected';
    private $private = 'Private';

    function printHello()
    {
        echo $this->public;
        echo $this->protected;
        echo $this->private;
    }
}

$obj = new MyClass();
echo $obj->public;     // Works
echo $obj->protected;  // Fatal Error
echo $obj->private;    // Fatal Error
$obj->printHello();    // Shows Public, Protected and Private
