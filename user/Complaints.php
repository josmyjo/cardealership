<?php
include "../user/header.php";
include '../connection.php';
$user= $_SESSION['user_id'];
?>

 <section class="section" id="trainers">
    <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2>Feed <em>Back</em></h2>
                        <img src="../user/assets/images/line-dec.png" alt="">
                    </div>
                </div>
            </div>
            <div class="container  jumbotron p-3 my-3 "> 
                <div class="card">
                    <div class="card-body">
                        <div class="form-group">
                            <form action="carPics.php" method="POST" name="pic" id="getPic" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="inputBranchlName" class="control-label " >Car  </label>
                                        <select required class="form-control" id="getBranch" name="branchName">
                                            <option value="0">Select One</option>
                                                <?php
                                                $result=mysqli_query($con,"SELECT *FROM branch b,carmodel c, variant v,booking bk, userregistration u WHERE b.branchid=c.branchid AND c.modelid=v.model_id AND bk.user_id=u.user_id AND  bk.user_id=$user group by bk.variant_id");
                                                while($row=mysqli_fetch_array($result))
                                                {
                                                ?>
                                            <option value="<?php echo $row['variant_id'];?> ">
                                                <?php echo $row['variant_name']; ?> 
                                            </option>
                                                <?php
                                                }
                                                ?>
                                        </select>
                                </div>
                                <div class="form-group">
                                    <label for="inputVariantName" class="control-label " > Name </label>
                                        <input type="text" class="form-control" id="inputName" name="name" required />
                                </div>
                                 <div class="form-group">
                                    <label for="inputVariantName" class="control-label " > Contact Number </label>
                                     <input type="text" class="form-control" id="inputContactNumber" name="contactNumber" required />
                                </div>
                             
                                <div class="form-outline">
                                    <label class="form-label" for="textAreaExample3">Message</label>
                                        <textarea class="form-control" id="textAreaExample3" rows="2"></textarea>
                                </div>          
                                <br>
                                <div class="text-center">
                                    <input type="submit" name="submit"  class="btn btn-dark me-2" value="submit">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>      
    </div>
</section>
                      

<?php
include "../user/footer.php";

?>

