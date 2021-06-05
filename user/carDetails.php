<?php
include "../user/master.php";
if(isset($_GET['id'])) {
    $vid = $_GET["id"];

    $result=mysqli_query ($con,"SELECT *FROM variant WHERE variant_id =$vid");
    $pics=mysqli_query ($con,"SELECT *FROM car_pics  WHERE variant_id = $vid");
    $picsT=mysqli_query ($con,"SELECT *FROM car_pics  WHERE variant_id = $vid");
    $res = mysqli_query ($con,"SELECT * FROM `entertainment` e JOIN variant v ON v.variant_id = e.varient_id JOIN capability cap ON cap.varient_id = v.variant_id JOIN carmodel c ON c.modelid = v.model_id JOIN convenience con ON con.varient_id = v.variant_id JOIN dimensions d ON d.varient_id =v.variant_id JOIN exterior ex ON ex.varient_id = v.variant_id JOIN interior i ON i.varient_id= v.variant_id JOIN safety s ON s.variant_id = v.variant_id JOIN suspension su ON su.varient_id = v.variant_id  WHERE v.variant_id=$vid");
}
?>
 <style>
     .book-btn{
        background-color: #AD1C1B;
        padding: 10px 15px;
        border-radius: 25px;
        color: #fffe;
        font-size: 80%;
        font-family: Helvetica;
     }
     .book-btn:hover{
        background-color: #cd2a29;
        color: #fffe;
     }
 </style>   
    <br>
            <br> <br>
            <br>
    <section class="section" id="trainers">
        <div class="container">
        <br>
        <br>
        <?php while($row=mysqli_fetch_array($result)){ ?>

            <div class="box_wrapper"><h1><?= $row['variant_name']?> : (Rs  29.75 - 37.22 Lakh*)</h1></div>
            <?php } ?>
				    <div class="single-top"> 	
		  				<div class="lsidebar span_1_of_s">
					   		<div id="container">
						   	    <div id="products_example">
                                    <div id="products">
                                        <div class="slides_container">
                                        <?php while($row=mysqli_fetch_array($pics)){ ?>
                                            <a href="#" target="_blank"><?= '<img  alt=" " height=210px width=560px src="../images/variant/'.$row['pics'].'";/>'?></a>
                                            
                                        <?php } ?>    
                                        </div>
                                        <ul class="pagination">
                                        <?php 
                                        $variant_id = "";
                                        while($rows=mysqli_fetch_array($picsT)){ 
                                            $variant_id = $rows['variant_id'];
                                            ?>
                                            
                                            <li><a href="#"><?= '<img src="../images/variant/'.$rows['pics'].'";/>'?></a></li>
                                        <?php } ?>  
                                        </ul>
                                    </div>
						        </div>
					        </div>
					    </div>
                        <div class="lsidebar span_1_of_s text-center" style="padding:150px 20px;">
                        <?php
                        $url2= $url = "../login/index.php";
                        if( isset($_SESSION['user_id']) ){
                            $url = "payment.php?id=".  $variant_id;
                            $url2 = "book_a_test_drive.php?id=".$variant_id;
                        } 
                        ?>
                        <a href="<?=$url?>" class="btn btn-primary book-btn">Book Now</a>
                        <a href="<?=$url2?>" class="btn btn-primary book-btn">Book Test Drive</a>
                                        </div>
                    </div>
            </div>
        </div>
    </section>
    <!-- ***** Fleet Starts ***** -->
    <section class="section" id="trainers">
        <div class="container">
            <br>
            <br>

                <div class="row" id="tabs">
                <div class="col-lg-4">
                    <ul>
                    <li><a href='#tabs-1'><i class="fa fa-cog"></i> Vehicle Specs</a></li>
                    <li><a href='#tabs-2'><i class="fa fa-info-circle"></i> Vehicle Description</a></li>
                    <li><a href='#tabs-3'><i class="fa fa-plus-circle"></i> Vehicle Extras</a></li>
                    <li><a href='#tabs-4'><i class="fa fa-phone"></i> Contact Details</a></li>
                    </ul>
                </div>
                <div class="col-lg-8">
                         <?php while($ro=mysqli_fetch_array($res)){ ?>

                    <section class='tabs-content' style="width: 100%;">
                    <article id='tabs-1'>
                        <h4>Vehicle Specifications</h4>

                        <div class="row">
                        <div class="col-sm-6">
                                <label>Type</label>
                        
                                <p><?= $ro['engtype']?></p>
                        </div>

                        <div class="col-sm-6">
                                <label>Price</label>
                        
                                <p><?= $ro['price']?></p>

                        </div>

                        <div class="col-sm-6">
                                <label> Model</label>
                        
                                <p><?= $ro['modelname']?></p>
                        </div>

                        <div class="col-sm-6">
                                <label>First registration</label>
                        
                                <p><?= $ro['mfyear']?></p>

                        </div>

                        <div class="col-sm-6">
                                <label>Mileage</label>
                        
                                <p><?= $ro['mileage']?></p>
                        </div>

                        <div class="col-sm-6">
                                <label>Fuel</label>
                        
                                <p><?= $ro['fueltype']?></p>
                        </div>

                        <div class="col-sm-6">
                                <label>Engine size</label>
                        
                                <p><?= $ro['displacement']?></p>
                        </div>

                        <div class="col-sm-6">
                                <label>Max Power</label>
                        
                                <p><?= $ro['max_power']?></p>
                        </div>


                        <div class="col-sm-6">
                                <label>Gearbox</label>
                        
                                <p><?= $ro['geartype']?></p>

                        </div>

                        <div class="col-sm-6">
                                <label>Number of Cylinder</label>
                        
                                <p><?= $ro['no_cylinder']?></p>
                        </div>

                        <div class="col-sm-6">
                                <label>Torque</label>
                        
                                <p><?= $ro['max_torque']?></p>

                        </div>
                        <div class="col-sm-6">
                                <label>Drive Type</label>
                        
                                <p><?= $ro['drivetype']?></p>

                        </div>

                        <div class="col-sm-6">
                                <label>Color</label>
                        
                                <p><?= $ro['color']?></p>

                        </div>
                        </div>
                    </article>
                    <article id='tabs-2'>
                        <h4>Vehicle Description</h4>
                        
                        <p>- Colour coded bumpers <br> - Tinted glass <br> - Immobiliser <br> - Central locking - remote <br> - Passenger airbag <br> - Electric windows <br> - Rear head rests <br> - Radio <br> - CD player <br> - Ideal first car <br> - Warranty <br> - High level brake light <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco                         laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat                     cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p> 
                    </article>
                    <article id='tabs-3'>
                        <h4>Vehicle Extras</h4>
                        <h5 style="color:Tomato;">SAFETY</h5>
                        <br>
                        <div class="row">   
                            <div class="col-sm-6">
                           
                        
                                <p>ABS</p>
                                <p><?= $ro['antilock_breakingstm']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Break assist</p>
                                <p><?= $ro['brakeassist']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Centrel Locking System </p>
                                <p><?= $ro['centrellockstm']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>No Of Airbags </p>
                                <p><?= $ro['airbags']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Day Night Rear view</p>
                                <p><?= $ro['daynight_rearviewmirror']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Passenger Side View Mirror</p>
                                <p><?= $ro['passengersidemirror']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Xenon head lamp</p>
                                <p><?= $ro['xenonheadlamp']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Halogen head lamp</p>
                                <p><?= $ro['halogenheadlamp']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Rear Seat Belt</p>
                                <p><?= $ro['rearseatbelt']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Seat Belt Warning </p>
                                <p><?= $ro['seatbeltwarning']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Door Hazard Warning</p>
                                <p><?= $ro['doorajarwarning']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Side Impact Beams </p>
                                <p><?= $ro['sideimpactbeams']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Adjustable Seat </p>
                                <p><?= $ro['adjustableseat']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Vehicle Control stability </p>
                                <p><?= $ro['vehiclecntrl']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Engine immobilizer</p>
                                <p><?= $ro['engineimmobilizer']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Crash sensor</p>
                                <p><?= $ro['crashsensor']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Electronic Break Distribution </p>
                                <p><?= $ro['color']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Rear camera</p>
                                <p><?= $ro['rearcamera']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Blind Spot Monitor</p>
                                <p><?= $ro['blindspot']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Hill assist</p>
                                <p><?= $ro['hillassist']?></p>
                            </div>    
                            <h5 style="color:Tomato;">INTERIOR</h5>
                            
                            <div class="col-sm-6">
                            <p>Tachometer</p>
                                <p><?= $ro['tachometer']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Electronic Multi-Tripmeter</p>
                                <p><?= $ro['electronic']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Leather Seats </p>
                                <p><?= $ro['leather']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Digital Clock </p>
                                <p><?= $ro['digitalclock']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Digital Odometer</p>
                                <p><?= $ro['digitalodometer']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Digital Lighter</p>
                                <p><?= $ro['digitallighter']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Height Adjustable DriverSeat</p>
                                <p><?= $ro['heightadjustable']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>ventilated Seats</p>
                                <p><?= $ro['ventilated']?></p>
                            </div>
                            <h5 style="color:Tomato;">EXTERIOR</h5>
                            <div class="row">   
                            <div class="col-sm-6">
                                <p>Fog light front</p>
                                <p><?= $ro['foglightfont']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Adjustable Headlights<</p>
                                <p><?= $ro['electric_adjustableseat']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Fog light rear </p>
                                <p><?= $ro['foglightnear']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Power Antenna </p>
                                <p><?= $ro['powerantenna']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Rain Sensing Wiper</p>
                                <p><?= $ro['rain']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Wheel Covers</p>
                                <p><?= $ro['wheel']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Sun roof</p>
                                <p><?= $ro['sun']?></p>
                            </div>
                           
                            <h5 style="color:Tomato;">DIMENSIONS</h5>
                    
                            <div class="col-sm-6">
                                <p>Length</p>
                                <p><?= $ro['length']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Width</p>
                                <p><?= $ro['width']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Height</p>
                                <p><?= $ro['height']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Wheelbase</p>
                                <p><?= $ro['wheelbase']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Fronttrack</p>
                                <p><?= $ro['fronttrack']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Reartrack</p>
                                <p><?= $ro['reartrack']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Seatingcapacity</p>
                                <p><?= $ro['seatingcapacity']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>weight</p>
                                <p><?= $ro['weight']?></p>
                            </div>
                          
                            <h5 style="color:Tomato;">CAPABILITY</h5>
                      
                            <div class="row">   
                            <div class="col-sm-6">
                            <p>Ground Clearance</p>
                                <p><?= $ro['groundcl']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Approach Angle</p>
                                <p><?= $ro['approach']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Departure Angle </p>
                                <p><?= $ro['depature']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Rampover Angle </p>
                                <p><?= $ro['rampover']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Water Wading Depth</p>
                                <p><?= $ro['water']?></p>
                            </div>
                            <h5 style="color:Tomato;">ENTERTAINMENT</h5>
                        <br>
                        <div class="row">   
                            <div class="col-sm-6">
                           
                        
                                <p>DVD Player </p>
                                <p><?= $ro['dvd_player']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Radio Player </p>
                                <p><?= $ro['radio_player']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Speaker</p>
                                <p><?= $ro['speaker']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Usb And Auxilary Input </p>
                                <p><?= $ro['usb_auxilaryin']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Blutooth Connectivity</p>
                                <p><?= $ro['blutooth']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Touch Screen</p>
                                <p><?= $ro['touchscreen']?></p>
                            </div>
                            


                            <h5 style="color:Tomato;">CONVENIENCE</h5>
                        <br>
                        <div class="row">   
                            <div class="col-sm-6">
                           
                        
                                <p>Power Steering </p>
                                <p><?= $ro['powerst']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Power Windows-Front</p>
                                <p><?= $ro['pwf']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Power Windows-Rear</p>
                                <p><?= $ro['pwr']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Air Conditions </p>
                                <p><?= $ro['aircondition']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Heater</p>
                                <p><?= $ro['heater']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Adjustable Steering</p>
                                <p><?= $ro['adjustablesteer']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Air Quality Control </p>
                                <p><?= $ro['airquality']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Remote Climate Control</p>
                                <p><?= $ro['remoteclimate']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Low Fuel WarningLight</p>
                                <p><?= $ro['lowfuel']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Trunk Light</p>
                                <p><?= $ro['trunk']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p> Remote Horn $ Light Control</p>
                                <p><?= $ro['remote']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Vanity Mirror</p>
                                <p><?= $ro['vanity']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Cruise Control</p>
                                <p><?= $ro['cruise']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Seat Lumber Support</p>
                                <p><?= $ro['seatlumber']?></p>
                            </div>

                            <h5 style="color:Tomato;">SUSPENSION</h5>
                        <br>
                        <div class="row">   
                            <div class="col-sm-6">
                            <p>Front Suspension</p>
                                <p><?= $ro['front']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Rear Suspension</p>
                                <p><?= $ro['rear']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Brake Specification </p>
                                <p><?= $ro['brake']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Front Brake Type </p>
                                <p><?= $ro['frontb']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Rear Brake Type</p>
                                <p><?= $ro['rearb']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Tyres</p>
                                <p><?= $ro['tyres']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Steering Type</p>
                                <p><?= $ro['steert']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Steering Gear Type</p>
                                <p><?= $ro['steerg']?></p>
                            </div>
                            <div class="col-sm-6">
                                <p>Acceleration</p>
                                <p><?= $ro['acceleration']?></p>
                            </div>
                                                                             
                    </article>           
                            
                    <article id='tabs-4'>
                        <h4>Contact Details</h4>

                        <div class="row">   
                            <div class="col-sm-6">
                                <label>Name</label>

                                <p>John Smith</p>
                            </div>
                            <div class="col-sm-6">
                                <label>Phone</label>

                                <p>123-456-789 </p>
                            </div>
                            <div class="col-sm-6">
                                <label>Mobile phone</label>
                                <p>456789123 </p>
                            </div>
                            <div class="col-sm-6">
                                <label>Email</label>
                                <p><a href="#">john@carsales.com</a></p>
                            </div>
                        </div>
                    </article>
                    </section>
                    <?php } ?>
                </div>
            </div>
        </div>
    </section>
    <!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <form role="form" method="post" action="../user/testDriveConfirm.php" >
            <input type="hidden" name="varient_id" value="<?=$_GET['id']?>">
            <div class="form-group"> <label for="username">
                    <h6>Date</h6>
                </label> <input type="date" name="date" placeholder="" required class="form-control "> </div>
            <div class="form-group"> <label for="username">
                    <h6>Time</h6>
                </label> <input type="time" name="time" placeholder="" required class="form-control "> </div>
            
            
            <div class="card-footer"> <button type="submit" name="pay_now" value="1" class="subscribe btn btn-primary btn-block shadow-sm"> Confirm Test Drive </button>
        </form>
      </div>
      
    </div>

  </div>
</div>
    <?php
include "../user/footer.php";

?>
<script src="../user/js/slides.min.jquery.js"></script>


<script>
		$(function(){
			$('#products').slides({
				preload: true,
				preloadImage: 'img/loading.gif',
				effect: 'slide, fade',
				crossfade: true,
				slideSpeed: 350,
				fadeSpeed: 500,
				generateNextPrev: true,
				generatePagination: false
			});
		});
	</script>

<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
    </script>