<?php
    $stmt = $conn->prepare('SELECT * FROM menu order by ordem,descricao');
    $stmt->execute();

    $resultado = $stmt->fetchAll();
?>
<div class="row">

    <?php
        foreach ($resultado as $linha) {
            ?>
                <a href="<?=$linha['endereco']?>" 
                class="<?=$linha['classe']?>"><?=$linha['descricao']?></a>
            <?php
        }
    ?>
    </div>
<hr>