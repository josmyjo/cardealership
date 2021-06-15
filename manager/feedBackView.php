<?php
include "../manager/header.php";
include '../connection.php';

if(isset($_GET["id"]))
{
	$id=$_GET["id"];
    mysqli_query($con,"delete from feedback WHERE feedbackID=$id ");
    //header ("location:variantView.php");
    echo '<script>window.location="../manager/feedbackView.php"</script>';

}
$user = $_SESSION['user_id'];
$result=mysqli_query ($con,"SELECT *FROM feedback s JOIN variant v ON s.varient_id = v.variant_id  WHERE s.user_id=$user");


	$rowcount=mysqli_num_rows($result);
	if($rowcount >0){
?>
		<div class="container jumbotron p-3 my-3 ">
		    <div class="card">
		        <div class="card-header">
		            <h5 class="title">Complaints</h5>
		        </div>
		        <div class="card-body">
		        	<div class="table-responsive-md" style="overflow-x: scroll;">
					  <table class="table" id="myTable">
					    <thead>
		                    <th> Variant </th>
		                    <th> Customer Name </th>
		                    <th> Contact Number </th>
		                    <th>  Messeage </th>
		                    <th>  Options </th>
		                </thead>
		                <tbody>
			                <?php
	                        while($row=mysqli_fetch_array($result))
	                        {
	                            ?>
	                            <tr>
	                                <td><?= $row['variant_name'] ?></td>	
	                                <td><?= $row['name'] ?></td>
									<td><?= $row['contactNumber'] ?></td>
	                                <td><?= $row['msg'] ?></td>
	                                <td>
                                    	<a onclick="return confirm('are you sure. you want to delete this.?')" href="feedBackView.php?id=<?=$row['feedbackID'] ?>">Delete</a>
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
  <script>
    $(document).ready( function () {
        $('#myTable').DataTable();
    } );
  </script>