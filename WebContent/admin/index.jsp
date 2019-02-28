<%@page import="model.dao.NewsDao"%>
<%@page import="model.bean.Category"%>
<%@page import="model.bean.News"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="/templates/admin/inc/header.jsp" %>
<div id="content" class="site-content container"></div>
<div class="newspaper-x-header-widget-area">
   <div id="newspaper_x_header_module-2" class="widget newspaper_x_widgets">
   </div>
</div>
<div class="container site-content">
   <div class="row">
      <div class="col-md-12 newspaper-x-content newspaper-x-with-sidebar">
         <div id="newspaper_x_widget_posts_a-4" class="widget newspaper_x_widgets">
            <div class="site-content newspaper-spacer-a">
               <div class="row">
                  <div class="col-md-12">
                     <div class="newspaper-x-recent-posts newspaper-x-recent-posts-a">
                     <h4 class="header-line" style="margin-left:14% "> Chào mừng bạn đến với Trang quản trị Website tin tức ShareIT</h4>
                     <div class="carousel-inner">
                        <div class="item active">
                            <img width="100%" src="<%=DefineUtil.URL_ADMIN %>/images/00_header_slider_01-550x360.jpg" alt="">
                        </div>
                    </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div id="newspaper_x_widget_posts_d-3" class="widget newspaper_x_widgets">
      </div>
   </div>
</div>
<%@include file="/templates/admin/inc/footer.jsp" %>