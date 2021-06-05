<?php
include "../user/header.php";
include '../connection.php';

if(isset($_GET['id'])) {
    $id = $_GET["id"];

    $result=mysqli_query ($con,"SELECT *FROM variant  WHERE model_id = $id");
	//$rowcount=mysqli_num_rows($variantResult);
}else{
    echo '<script>window.location="../user/home.php"</script>';

}
?>
    <section class="section" id="trainers">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2>Featured <em>Cars</em></h2>
                        <img src="../user/assets/images/line-dec.png" alt="">
                    </div>
                </div>
            </div>
                      
            <div class="row">
                <?php
                    while($row=mysqli_fetch_array($result)){
                ?>  
                    <div class="col-lg-4">
                        <div class="trainer-item">
                            <div class="image-thumb">
                                <?php echo '<img width="128" height="128"  src="../images/pics/'.$row['pic'].'";>'?>
                            </div>
                            <div class="down-content">
                                <!-- <span>
                                    <del><sup></sup>RS </del> &nbsp; <sup></sup>RS
                                </span> -->

                                <h4 align="center"> </h4>

                                <p>
                                    <i class="fa fa-dashboard"></i> <?=$row['variant_name'] ?> &nbsp;&nbsp;&nbsp;
                                    <i class="fa fa-cube"></i> <?=$row['price'] ?> RS &nbsp;&nbsp;&nbsp;
                                    <i class="fa fa-cog"></i> <?=$row['max_power'] ?> &nbsp;&nbsp;&nbsp;
                                </p>

                                <ul class="social-icons">
                                    <li><a href="carDetails.php?id=<?php echo $row['variant_id']?>">+ View Car</a></li>
                                    <li><a href="variantList.php?id=<?php echo $row['variant_id']?>"> Book</a></li>
                                    <li><a href="variantList.php?id=<?php echo $row['variant_id']?>"> Text Ride</a></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                <?php
                        }
                ?> 
            </div>

            <br>

            <div class="main-button text-center">
                <a href="cars.html">View Cars</a>
            </div>
        </div>
    </section>



<?php
include "../user/footer.php";
?>