<?php
//session_start();

class Block{
    
    
    public $student_id;
    public $student_name;
    public $class1;
    public $rank;
    public $field;
    public $email;
    public $previousHash;
    public $hash;
    
    
//    public function __construct(){
//        
//    }
    
    public function __construct($student_id,$student_name,$class1,$rank,$field,$email, $previousHash = ""){
//        echo $student_id." ";
        $this->student_id = $student_id;
        $this->student_name = $student_name;
        $this->class1 = $class1;
        $this->rank = $rank;
        $this->field = $field;
        $this->email = $email;
        $this->previousHash = $previousHash;
//        echo $this->previousHash;
        $this->hash = hash("sha256", $this->student_id.$this->previousHash.$this->student_name.(string)$this->class1.$this->rank.$this->field.$this->email);
//        echo $this->student_id;
//        echo $this->student_name;
//        $this->chain1
        $_SESSION["previousHash"] = $this->hash;
        
    }
    
    public function getPreviousHash(){
        $_SESSION["previousHash"] = $this->hash;
    }
    
    public static function calculateHash()
    {
//        echo $this->student_id.$this->previousHash.$this->student_name.(string)$this->class1.$this->rank.$this->field.$this->email;
//        return hash("sha256", $this->student_id.$this->previousHash.$this->student_name.(string)$this->class1.$this->rank.$this->field.$this->email);
//        return 122;
    }
    
    static public function getId()
    {
        return $this->student_id;
    }
    
    
    public static function createGenesisBlock($student_id,$student_name,$class1,$rank,$field,$email)
    {
//        also add in array
        return new Block(1,$student_name,$class1,$rank,$field,$email);
    }
    
    public function getLastBlock()
    {
//        return $this->chain[count($this->chain)-1];
    }

    /**
     * Pushes a new block onto the chain.
     */
    public function push($block)
    {
        $block->previousHash = $this->getLastBlock()->hash;
//        $this->mine($block);
//        array_push($this->chain, $block);
        array_push($this->chain1, $block->id, $block->hash);
    }
    
    
    
}

?>