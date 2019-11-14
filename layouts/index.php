<?php
    include LAYOUTS.'header.php';

    include 'menu.php';

    if (!isset($_GET['pagina']))
        include 'home.php';
    else
        include PESSOAS.$_GET['pagina'].'.php';

    include 'footer.php';