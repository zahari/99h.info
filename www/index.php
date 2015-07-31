<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <style>
        #main_div {
            margin-top: 10%;
            //zoom: 150%;
            font-family: Courier New;
            font-size: 14pt;
        }
        #bt_div {
            margin-top: 40px;
        }
        #bt_reg {
            margin-left: 20px;
        }
        .bt {
            width: 150px;
            height: 30px;
            font-family: Courier New;
            font-size: 12pt;
        }
        #sub_domain {
            padding: 5px;
            font-family: Courier New;
            font-size: 14pt;
            font-weight: bold;
        }
        #title {
            margin-bottom: 40px;
            font-size: 150%;
            font-weight: bold;
        }
        #prov_img {
            width: 300px;
            height: 15px;
            margin-top: 30px;
        }
    </style>
<head>
<body>
    <center>
        <div id="main_div">
            <form action="index.php" method="POST">
                <div id="title"> FREE hosting </div>
                <div id="sub_domain_div">
                    <span id="txt_before"> http:// </span>
                    <input id="sub_domain" type="text"  size="13" maxlength="13" placeholder="sub-domain-10"/>
                    <span id="txt_after"> .99h.info </span>
                </div>
                <div id="bt_div">
                    <input id="bt_admin" class="bt" type="button" name="bt_admin" value="Manage"/>
                    <!--input id="bt_reg" type="button" name="bt_reg" value="Register"/-->
                <div>
            </form>
        </div>
    </center>
    <center>
        <img id="prov_img" src="provision.png" alt="Service provision email">
    </center>
</body>
</html>
