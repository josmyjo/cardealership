<?php
include "../admin/header.php";
include '../connection.php';

if(isset($_GET["id"]))
{
	$id=$_GET["id"];
    mysqli_query($con,"delete from variant where variant_id=$id ");
    //header ("location:variantView.php");
    echo '<script>window.location="../admin/variantView.php"</script>';

}

?>
<div class="container jumbotron p-3 my-3 ">
    <div class="card">
        <div class="card-header">
            <h5 class="title">Model</h5>
        </div>
        <div class="card-body">
            <div class="form-group">
                        <label for="getBranch" class="control-label " >Branch </label>
                            <select required class="form-control" id="getBranch" name="branchName">
                                <option value="0">Select One</option>
                                    <?php
                                    $result=mysqli_query($con,"SELECT *FROM branch");
                                    while($row=mysqli_fetch_array($result))
                                    {
                                    ?>
                                <option value="<?php echo $row['branchID'];?>" >
                                    <?php echo $row['branchName']; ?> 
                                </option>
                                    <?php
                                    }
                                    ?>
                            </select>
            </div>
            <div class="form-group">
                        <label for="getModel" class="control-label " >Modal Name </label>
                            <select required class="form-control" id="getModel" name="modelName">                                
                            </select>
            </div>
        </div>
    </div>
</div>

<div id="holder"></div>
  



<?php
include "../admin/footer.php";
?>

<script>

$("#getBranch").change(function(e){ 
    e.preventDefault();
    var branch = $("#getBranch").val();
    $.ajax(
            {
                type:"POST",
                url: "getMod.php",
                data: {branchID:branch},
                dataType: "html",
                success: function (data) {
                  $("#getModel").html(data);
                },
                error:function(er){
                  console.log(er);
                }
             
            }
        );

  });

$("#getModel").change(function(e){ 
    e.preventDefault();
    var model = $("#getModel").val();
    $.ajax(
            {
                type:"POST",
                url: "getVariant.php",
                data: {model_id:model},
                dataType: "html",
                success: function (data) {
                  $("#holder").html(data);
                },
                error:function(er){
                  console.log(er);
                }
             
            }
        );

  });

</script>