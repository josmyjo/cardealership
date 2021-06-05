<?php
include '../connection.php';

if(isset($_POST['variant_id'])) {
    $id = $_POST["variant_id"];

    $carResult=mysqli_query ($con,"SELECT *FROM interior e,variant v WHERE e.varient_id=v.variant_id AND e.varient_id = $id");
	$rowcount=mysqli_num_rows($carResult);
	if($rowcount >0){
?>
<div class="container jumbotron p-3 my-3 ">
    <div class="card">
        <div class="card-header">
            <h5 class="title">Model</h5>
        </div>
        <div class="card-body">
            <table class="table table-stripped,table table-hover" >


                    <tr align="center">
                        <!-- <th> Modal </th>
                        <th> Variant </th> -->
                        <th> Tachometer</th>
                        <th>Electronic Multi-Tripmeter </th>
                        <th> Leather Seats</th>
                        <th> Digital Clock </th>
                            
                            <th> Digital Odometer </th>
                            <th>Digital Lighter</th>
                            <th> Height Adjustable DriverSeat</th>
                            <th> ventilated Seats </th>
                    </tr>
                    <?php
                        while($row=mysqli_fetch_array($carResult))
                        {
                            ?>
                            <tr align="center">
                                <td><?= $row['tachometer'] ?></td>
                                <td><?= $row['digitalclock'] ?></td>	
                                <td><?= $row['electronic'] ?></td>	
                                <td><?= $row['leather'] ?></td>
                                <td><?= $row['digitalodometer'] ?></td>
                                <td><?= $row['digitallighter'] ?></td>
                                <td><?= $row['heightadjustable'] ?></td>
                                <td><?= $row['ventilated'] ?></td>	
                                
                            
                                <td>
                                    <a onclick="return confirm('are you sure. you want to delete this.?')" href="exteriorView.php?id=<?=$row['exterior_id'] ?>">Delete</a>
                                </td>
                            <?php 
                                echo "</tr>";
                                
                        }

                        ?>
            </table>
        </div>
                    </div>

</div>
<?php
	}   
}
?>

