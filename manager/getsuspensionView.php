<?php
include '../connection.php';

if(isset($_POST['variant_id'])) {
    $id = $_POST["variant_id"];

    $carResult=mysqli_query ($con,"SELECT *FROM suspension e,variant v WHERE e.varient_id=v.variant_id AND e.varient_id = $id");
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
                        <th> Front Suspension </th>
                        <th>Rear Suspension </th>
                        <th> Brake Specification</th>
                        <th> Front Brake Type </th>
                            
                            <th> Rear Brake Type </th>
                            <th>Tyres </th>
                            <th>Steering Type</th>
                            <th> Steering Gear Type </th>
                            <th> Acceleration </th>
                            
                    </tr>
                    <?php
                        while($row=mysqli_fetch_array($carResult))
                        {
                            ?>
                            <tr align="center">
                                <td><?= $row['front'] ?></td>
                                <td><?= $row['rear'] ?></td>	
                                <td><?= $row['brake'] ?></td>	
                                <td><?= $row['frontb'] ?></td>
                                <td><?= $row['rearb'] ?></td>
                                <td><?= $row['tyres'] ?></td>
                                <td><?= $row['steert'] ?></td>	
                                <td><?= $row['steerg'] ?></td>	
                                <td><?= $row['acceleration'] ?></td>	
                                
                            
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

