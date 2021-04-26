<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Forgot  Password</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="../login/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../login/vendor/bootstrap/css/bootstrap.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../login/vendor/animate/animate.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../login/vendor/css-hamburgers/hamburgers.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../login/vendor/animsition/css/animsition.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../login/vendor/select2/select2.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../login/vendor/daterangepicker/daterangepicker.css"
    />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../login/css/util.css" />
    <link rel="stylesheet" type="text/css" href="../login/css/main.css" />
    <!--===============================================================================================-->
  </head>
  <body>
    <div class="limiter">
      <div class="container-login100">
        <div class="wrap-login100">
          <form method="post"
            id="verifyLogin"
            class="login100-form validate-form p-l-55 p-r-55 p-t-178"
          >
            <span class="login100-form-title"> Verify Email </span>

            <div
              class="wrap-input100 validate-input m-b-16"
              data-validate="Please enter username"
            >
              <input
                class="input100"
                type="text"
                name="email"
                required
                id="verifyEmail"
                placeholder="Username"
              />
              <span class="focus-input100"></span>
            </div>

            <div class="container-login100-form-btn">
              <button type="submit" class="login100-form-btn">SEND OTP</button>
            </div>
            <br>
          </form>
            <div id="myModal" class="modal fade" role="dialog">
              <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                    <div class="modal-body">
                      <h5 align="center" class="modal-title">Email Validation</h5>
                      <br>
                        <div class="container">
                          <form id="verifyform2" action="#" method="POST">
                            <input type="hidden" value="0" id="otp_id">
                            <input type="hidden" value="0" id="getEmail">
                            <input type="text" class="form-control" placeholder="Enter OTP" name="otp" id="votp" required/>
                            <br>
                            <input type="password" class="form-control" placeholder="Enter password" name="nPsas" id="vPass" required/>
                            <br>
                            <input type="password" class="form-control" placeholder="Enter password" name="cPass" id="vCPass" required/>
                            <br>
                        </div>
                        <div class="text-center">
                            <button style="width:90px;" name="otpgenerator" type="submit" class="btn btn-primary "> Reset   </button>
                        </div>
                        <br>
                        <div id="change" class="text-center"> </div>
                    </div>
                    </form>
                    <div class="modal-footer">
                      <button type="button" id="closeVerify" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                  </div>

              </div>
          </div>
          <br>
          
        </div>
      </div>
    </div>
        
          
    <!--===============================================================================================-->
    <script src="../login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="../login/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
  <script src="https://unpkg.com/@popperjs/core@2"></script>
  
    <script src="../login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="../login/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="../login/vendor/daterangepicker/moment.min.js"></script>
    <script src="../login/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="../login/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="../login/js/main.js"></script>

    <script>
      $("#verifyLogin").submit(function (e) {
        e.preventDefault(); 
        const email = $("#verifyEmail").val();

        $.ajax({
          type: "POST",
          url: "otpgenerator.php",
          data: { email_id: email,},
          dataType: "json",
          success: function (data) {
            if(data.status == 1){
                $("#otp_id").val(data.otp_id);
                $("#getEmail").val(data.email);
                $("#myModal").modal("show");
              }else{
                alert("unable to sent otp to your mail id")
              }
          },
          error: function (er) {
            console.log(er);
          },
        });
      });
    </script>

<script>
      $("#verifyform2").submit(function (e) {
        e.preventDefault(); 
        const otp_id = $("#otp_id").val();
        const otp = $("#votp").val();
        const pass = $("#vPass").val();
        const email = $("#getEmail").val();


        $.ajax({
          type: "POST",
          url: "otp_verify.php",
          data: { otp_id:otp_id,otp: otp,pass:pass,email:email},
          dataType: "json",
          success: function (data) {
            if(data.status == 1){
                $("#change").val('Changed Password');
                $("#myModal").modal("close");
              }else{
                alert("unable to sent otp to your mail id")
              }
          },
          error: function (er) {
            console.log(er);
          },
        });
      });
    </script>
  </body>
</html>
