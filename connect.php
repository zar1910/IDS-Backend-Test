<?php
  function connectDB(){
    $host = "localhost";
    $username = "root";
    $pass = "";
    $db = "ids";

    $conn = mysqli_connect($host, $username, $pass, $db);

    if (!$conn) {
      die("Connection failed: ".mysqli_connect_error);
    } else {
      return $conn;
    }
  }

  function selectStatusTransactionAll(){
    $query = "SELECT * FROM tb_status";
    $result = mysqli_query(connectDB(), $query);
    return $result;
  }

  function selectDataTransactionsAll(){
    $query = "SELECT * FROM tb_data";
    $result = mysqli_query(connectDB(), $query);
    return $result;
  }
?>