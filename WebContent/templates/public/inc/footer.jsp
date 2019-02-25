<%@page import="model.bean.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dao.CatDao"%>
<%@page import="util.DefineUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer id="colophon" class="site-footer" role="contentinfo">
            <div class="widgets-area">
               <div class="container">
                  <div class="row">
                     <div class="col-md-3 col-sm-6">
                        <div id="text-2" class="widget widget_text">
                           <h3 class="widget-title">About</h3>
                           <div class="textwidget">
                              <p>Maecenas finibus pretium congue. Quisque sed sem itum turpis. Mauris ut quam vitae urna dignissim. </p>
                              <p>Curabitur pharetra mauris id urna vestibulum, ne pharetra elit commodo. Nunc rutrum mi lectus am utan es nimbus avientin am estas potivan. </p>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-3 col-sm-6">
                        <div id="recent-posts-3" class="widget widget_recent_entries">
                           <h3 class="widget-title">Recent posts</h3>
                           <ul>
                              <li>
                                 <a href="https://colorlib.com/newspaper-x/2017/05/10/sed-purus-velit-finibus-non-semper-nonut-utas/">Sed purus velit, finibus non semper nonut am utas</a>
                                 <span class="post-date">May 10, 2017</span>
                              </li>
                              <li>
                                 <a href="https://colorlib.com/newspaper-x/2017/05/10/nunc-hendrerit-egestas-amus-ad-arcu-im-usa/">Nunc hendrerit egestas amus ad arcu im usa</a>
                                 <span class="post-date">May 10, 2017</span>
                              </li>
                              <li>
                                 <a href="https://colorlib.com/newspaper-x/2017/05/10/itum-binus-sitam-conestum-ey/">Itum as binus sitam conestum ey</a>
                                 <span class="post-date">May 10, 2017</span>
                              </li>
                           </ul>
                        </div>
                     </div>
                     <div class="col-md-3 col-sm-6">
                        <div id="categories-3" class="widget widget_categories">
                           <h3 class="widget-title">Categories</h3>
                           <ul>
                           <%
                                 	CatDao catDao_footer = new CatDao();
  	                           		ArrayList<Category> listCats_footer = catDao_footer.getItems();
  	                           		if(listCats_footer!=null && listCats_footer.size()>0){
  	                            	for(Category item1: listCats_footer){
                                 %>
                              <li class="cat-item cat-item-2"><a href="https://colorlib.com/newspaper-x/category/editorial/"><%=item1.getName() %></a> <span class="newspaper-x-cat-count">11</span></li>
                           <%}} %>
                           </ul>
                        </div>
                     </div>
                     <div class="col-md-3 col-sm-6">
                        <div id="newspaper_x_widget_contact_us-2" class="newspaper-x-type-contact widget newspaper_x_widgets">
                           <h3 class="widget-title">Contact</h3>
                           <div class="textwidget contact-widget">
                              <div><span>Phone:</span> <a href="tel:228 135 887">228 135 887</a></div>
                              <div><span>Email:</span> <a href="mailto:newspaperx@contact.com">newspaperx@contact.com</a></div>
                              <div><span>Address:</span> Northon Street, 2015 NYC</div>
                              <div class="author-social-menu">
                                 <ul id="social-contact" class="menu">
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-111"><a href="https://facebook.com/"><span>Facebook</span></a></li>
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-112"><a href="https://tumblr.com/"><span>Tumblr</span></a></li>
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-113"><a href="https://twitter.com/"><span>Twitter</span></a></li>
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-115"><a href="https://plus.google.com/"><span>Google +</span></a></li>
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-114"><a href="https://youtube.com/"><span>Youtube</span></a></li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="back-to-top-area">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12 text-center">
                        <a href="javascript:void(0)" id="back-to-top" class="back-to-top-is-visible">
                        <span>Go Up</span>
                        <i class="fa fa-angle-up" aria-hidden="true"></i>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="site-info ">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        © 2019 Newspaper-X a theme by <a href="https://colorlib.com/">Colorlib</a>
                     </div>
                  </div>
               </div>
            </div>
         </footer>
      </div>
      <script type="text/javascript">
         /* <![CDATA[ */
         var wpcf7 = {"apiSettings":{"root":"https:\/\/colorlib.com\/newspaper-x\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"},"cached":"1"};
         /* ]]> */
      </script>
      <script type="text/javascript" src="<%=DefineUtil.URL_PUBLIC %>/js/scripts.js"></script>
      <script type="text/javascript" src="<%=DefineUtil.URL_PUBLIC %>/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="<%=DefineUtil.URL_PUBLIC %>/js/navigation.js"></script>
      <script type="text/javascript" src="<%=DefineUtil.URL_PUBLIC %>/js/skip-link-focus-fix.js"></script>
      <script type="text/javascript" src="<%=DefineUtil.URL_PUBLIC %>/js/jquery.adsenseloader.js"></script>
      <script type="text/javascript" src="<%=DefineUtil.URL_PUBLIC %>/js/machothemes.min.js"></script>
      <script type="text/javascript">
         /* <![CDATA[ */
         var WPUrls = {"siteurl":"https:\/\/colorlib.com\/newspaper-x","theme":"https:\/\/colorlib.com\/newspaper-x\/wp-content\/themes\/newspaper-x","ajaxurl":"https:\/\/colorlib.com\/newspaper-x\/wp-admin\/admin-ajax.php"};
         /* ]]> */
      </script>
      <script type="text/javascript" src="<%=DefineUtil.URL_PUBLIC %>/js/functions.js"></script>
      <script type="text/javascript" src="<%=DefineUtil.URL_PUBLIC %>/js/owl.carousel.min.js"></script>
      <script type="text/javascript" src="<%=DefineUtil.URL_PUBLIC %>/js/wp-embed.min.js"></script>
   </body>
</html>