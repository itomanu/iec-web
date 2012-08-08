<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="webroot/css/style.css" />
        <link rel="stylesheet" href="webroot/css/blitzer/jquery-ui-1.8.21.custom.css" />

        <script src="webroot/js/jquery-1.7.2.min.js"></script>
        <script src="webroot/js/jquery-ui-1.8.21.custom.min.js"></script>
        
        <title>
            IEC sites
        </title>

    </head>
    <body>
        <div id="menu">
            <div class="navigation">
                <div class="left">
                    <ul>
                            <li class="end">
                                <a href="<?= base_url() ?>index.php/laporan">IEC SITES</a>
                            </li>
                        </ul>
                    </div>
                    <div class="right">
                        <ul>
                            <li>
                                <a id="logged_name" href="#">NAMA YANG LOGIN</a>
                            </li>
                        <li class="setting end">
                            <img src="#" alt="setting"/>
                        </li>

                    </ul>
                </div>

            </div>
        </div>

        <div id="wrap">
            <div id="content">
                <div id="left_menu" class="left">
                    <a class="menu_button" href="#" >MENU</a>
                    <a class="menu_button" href="#" >MENU</a>
                    <a class="menu_button" href="#" >MENU</a>
                    <a class="menu_button" href="#" >MENU</a>
                </div>
                <div id="right_content" class="right">
                    <ul>
                        <li class="comment_field">
                            <div class="content_comment">
                                <div class="left">
                                    <img class="pp-64" src="webroot/img/def.png"/> 
                                </div>
                                <div class="left">
                                    NAMA YANG KOMENT
                                    <br>
                                    <br>
                                    Kategori
                                </div>
                                <div class="right">
                                    24 Maret 2012
                                    <br>
                                </div>
                                <br class="clear"/>
                                <div>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel erat at nisi vestibulum vehicula. Vivamus luctus fermentum est, sit amet ultricies lectus gravida sed. Ut metus enim, porta sit amet ultrices vitae, faucibus id sem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras non purus justo, at malesuada quam. Integer orci sapien, pretium in dapibus vel, interdum at lacus. Quisque justo urna, iaculis at feugiat nec, mattis nec mi. Etiam metus mi, mollis et sagittis quis, aliquam id lorem. Aliquam nec purus mauris. Phasellus porta massa at ligula vestibulum et bibendum velit elementum. Vestibulum fermentum varius velit a bibendum. Integer bibendum elementum nisl, accumsan accumsan dolor lacinia id. Etiam malesuada velit in augue lacinia id cursus felis ultrices. Etiam in libero a lectus dapibus gravida. In tempus urna eu eros ultricies tristique sit amet ac odio. 
                                </div>
                                    
                            </div>
                        </li>
                    </ul>
                </div>
                <br class="clear"/>
            </div>
        </div>

    </body>
    <script>
        $(document).ready(function(){
           relayout();
        });
        function relayout(){
           var windowHeight = parseInt($(window).height());
           var windowWidth = parseInt($(window).width());
           $("#right_content").width(windowWidth-350);
        }
        
        $(window).resize(function(){
            relayout()
        });
    </script>
</html>

