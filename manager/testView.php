<?php
include "../manager/header.php";
include '../connection.php';
$manager = $_SESSION['manager_id'];
$result=mysqli_query ($con,"SELECT * FROM `testdrive` b join variant v on v.variant_id=b.variant_id join carmodel c on c.modelid=v.model_id join branch br on br.branchID=c.branchID join userregistration u on u.user_id=b.user_id where br.branchID=$manager");
	$rowcount=mysqli_num_rows($result);
	if($rowcount >0){
?>

		<div class="container jumbotron p-3 my-3 ">
		    <div class="card">
		        <div class="card-header">
		            <h5 class="title">Test Ride</h5>
		        </div>
		        <div class="card-body">
		        	<div class="table-responsive-md">
					  <table class="table" id="myTable">
					    <thead>
					    	<th> Reference Number </th>
		                    <th> Model </th>
		                    <th> Variant </th>
		                    <th> Customer Name </th>
		                    <th> Test Date </th>
		                    <th> Status </th>
		                    <th> Options </th>
		                    
		                </thead>
		                <tbody>
		                	
		           
		                <?php
                        while($row=mysqli_fetch_array($result))
                        {
                            ?>
                            <tr>
                                <td><?= $row['referenceNumber'] ?></td>
                                <td><?= $row['modelname'] ?></td>	
                                <td><?= $row['variant_name'] ?></td>	
                                <td><?= $row['first_name'] ?></td>
                                <td><?= $row['testDate'] ?></td>
                                <td><?= $row['status'] ?></td>
                               
                                <td>
                                    <a onclick="return confirm('are you sure. you want to delete this.?')" href="exteriorView.php?id=<?=$row['exterior_id'] ?>">Delete</a>
                                </td>
                            </tr>
                    <?php 
                        }

                     ?>
                     </tbody>
					  </table>
				</div>
		        </div>
		    </div>
		</div>

<?php
	}
include "../manager/footer.php";
?>
