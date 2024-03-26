<div class="cate-item">
        <div class="cate-img"><img src="/public/images/goods.png" alt=""></div>
        <div class="cate-name"><?php echo $v['name'];?></div>
            <div class="cate-rating"><?php echo RATINGS [$v['rating']];?></div>
                <div class="cate-tag row-flex-wrap">
                    <?php foreach ($tag_list as $t):?>
                        <div><?php echo $t['name'];?></div>
                    <?php endforeach;?>
