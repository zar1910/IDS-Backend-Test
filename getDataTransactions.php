<?php
  include_once 'connect.php';

  $data = selectDataTransactionsAll();
  $status = selectStatusTransactionAll();

  function getData($data) {
    $dataArr = array();
    while ($row = mysqli_fetch_assoc($data)) {
        $item = array(
            'id' => $row['id'],
            'productID' => $row['productID'],
            'productName' => $row['productName'],
            'amount' => $row['amount'],
            'customerName' => $row['customerName'],
            'status' => $row['status'],
            'transactionDate' => $row['transactionDate'],
            'createBy' => $row['createBy'],
            'createOn' => $row['createOn']
        );
        
        array_push($dataArr, $item);
    }
    return $dataArr;
  }
  
  function getStatus($status){
    $statusArr = array();
    while ($row = mysqli_fetch_assoc($status) ) {
      $item = array(
        'id' => $row['id'],
        'name' => $row['name']
      );
  
      array_push($statusArr, $item);
    }
    return $statusArr;
  }

  $result = array();
  $result['data'] = getData($data);
  $result['status'] = getStatus($status);

  echo json_encode($result);
?>