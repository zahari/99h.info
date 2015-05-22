<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <style>
        #main_div {
            margin-top: 10%;
            zoom: 150%;
        }
        #bt_div {
            margin-top: 20px;
        }
        #bt_reg {
            margin-left: 20px;
        }
        #sub_domain {
            padding: 5px;
        }
        #title {
            margin-bottom: 20px;
            font-size: 150%;
            font-weight: bold;
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
                    <input id="sub_domain" type="text"/>
                    <span id="txt_after"> .99h.info </span>
                </div>
                <div id="bt_div">
                    <input id="bt_admin" type="submit" name="bt_admin" value="Manage"/>
                    <input id="bt_reg" type="button" name="bt_reg" value="Register"/>
                <div>
            </form>
        </div>
    </center>
</body>
</html>
