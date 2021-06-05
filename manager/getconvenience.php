<?php
include '../connection.php';

if(isset($_POST['variant_id'])) {
    $id = $_POST["variant_id"];

    $carResult=mysqli_query ($con,"SELECT *FROM convenience e,variant v WHERE e.varient_id=v.variant_id AND e.varient_id = $id");
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
                        <th> Power Steering </th>
                        <th>Power Windows-Front </th>
                        <th> Power Windows-Rear</th>
                        <th> Air Conditions</th>
                            
                            <th> Heater </th>
                            <th> Adjustable Steering</th>
                            <th>Air Quality Control</th>
                            <th> Remote Climate Control</th>
                            <th>Low Fuel WarningLight  </th>
                            <th>Trunk Light  </th>
                            <th> Remote Horn $ Light Control </th>
                            <th>Vanity Mirror</th>
                            <th>Cruise Control</th>
                            <th>Seat Lumber Support</th>
                    </tr>
                    <?php
                        while($row=mysqli_fetch_array($carResult))
                        {
                            ?>
                            <tr align="center">
                                <td><?= $row['powerst'] ?></td>
                                <td><?= $row['pwf'] ?></td>	
                                <td><?= $row['aircondition'] ?></td>	
                                <td><?= $row['heater'] ?></td>
                                <td><?= $row['adjustablesteer'] ?></td>
                                <td><?= $row['airquality'] ?></td>
                                <td><?= $row['remoteclimate'] ?></td>	
                                <td><?= $row['lowfuel'] ?></td>	
                                <td><?= $row['trunk'] ?></td>	
                                <td><?= $row['remote'] ?></td>
                                <td><?= $row['vanity'] ?></td>
                                <td><?= $row['cruise'] ?></td>
                                <td><?= $row['seatlumber'] ?></td>
                                <td><?= $row['pwr'] ?></td>
                            
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

