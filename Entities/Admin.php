<?php

include("User.php");

class Admin extends User{
}

$adim = new Admin(1, "cv", "dfdf", "df", "dsfg", "cvb", "dfv");

echo $adim->__tostring();
