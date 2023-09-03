<?php
class Knjiga{
  public $knjigaId;
  public $imeKnjige;
  public $kolicina;
  public $cena;
  public $zanrId;

  function __construct($knjigaId=null,$imeKnjige=null,$kolicina=null,$cena=null,$zanrId=null) {
        $this->knjigaId = $knjigaId;
        $this->imeKnjige = $imeKnjige;
        $this->kolicina = $kolicina;
        $this->cena = $cena;
        $this->zanrId=$zanrId;
    }

    public function insert($conn){
      return $conn->query("INSERT INTO knjiga(imeKnjige,kolicina,cena,zanrId) VALUES ('$this->imeKnjige','$this->kolicina','$this->cena','$this->zanrId')");
  }

  public function delete($conn,$id){
    return $conn->query("DELETE FROM knjiga where knjigaId=$id");
  }

  public function update($conn){
    return $conn->query("UPDATE knjiga SET imeKnjige='$this->imeKnjige',kolicina='$this->kolicina' where knjigaId=$this->knjigaId");
}

public static function getById($id, $conn){
  return $conn->query("SELECT * FROM knjiga WHERE knjigaId = $id");
}


}

?>