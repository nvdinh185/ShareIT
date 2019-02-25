<%@page import="model.dao.NewsDao"%>
<%@page import="model.bean.Category"%>
<%@page import="model.bean.News"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="/public/inc/header.jsp" %>
         <div id="content" class="site-content container"></div>
         <div class="newspaper-x-header-widget-area">
            <div id="newspaper_x_header_module-2" class="widget newspaper_x_widgets">
               <div class="newspaper-x-recent-posts container">
               <%
	               News topItem = (News) request.getAttribute("topItem");
	               if(topItem!=null){
               %>
                  <ul>
                     <li class="blazy b-loaded" id="newspaper-x-recent-post-0" style="background-image: url(&quot;<%=DefineUtil.URL_PICTURE%>/<%=topItem.getPicture()%>&quot;);">
                        <div class="newspaper-x-post-info">
                           <h1>
                              <a href="https://colorlib.com/newspaper-x/2017/05/10/sed-purus-velit-finibus-non-semper-nonut-utas/">
                              <%if(topItem.getName().length()>40) out.print(topItem.getName().substring(0, 40)+"..."); else out.print(topItem.getName());%>
                           </h1>
                           <span class="newspaper-x-category">
                           <a href="https://colorlib.com/newspaper-x/category/editorial/"><%=topItem.getItemCat().getName()%></a>
                           </span>
                           <span class="newspaper-x-date"><%=topItem.getDate_create()%></span>
                        </div>
                     </li>
                  </ul>
                  <%}%>
               </div>
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
                                 <ul>
                                 <%
                                 ArrayList<News> listNews = (ArrayList<News>) request.getAttribute("listNews");
                                 if(listNews!=null && listNews.size()>0){
                               	  for(News item: listNews){
                                 %>
                                    <li class="blazy  b-loaded" id="newspaper-x-recent-post-4" style="background-image: url(&quot;<%=DefineUtil.URL_PICTURE%>/<%=item.getPicture() %>&quot;); margin: 0 20px 10px 0;">
                                       <div class="newspaper-x-post-info">
                                          <h6>
                                             <a href="https://colorlib.com/newspaper-x/2017/05/10/vivamus-id-lorem-blandit/">
                                             <%=item.getPreview_text() %></a>
                                          </h6>
                                          <span class="newspaper-x-category">
                                          <a href="https://colorlib.com/newspaper-x/category/editorial/"><%=item.getItemCat().getName() %></a>
                                          </span>
                                          <span class="newspaper-x-date"><%=item.getDate_create() %></span>
                                       </div>
                                    </li>
                                    <%}} %>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <div id="newspaper_x_widget_posts_c-2" class="widget newspaper_x_widgets">
                  <%
                  ArrayList<Category> listCats = (ArrayList<Category>) request.getAttribute("listCats");
                  if(listCats!=null && listCats.size()>0){
                	  for(Category item: listCats){
                  %>
                     <h3 class="widget-title"><span><%=item.getName() %></span></h3>
                     <div class="row newspaper-x-layout-c-row">
                     <%
	                     NewsDao newsDao = new NewsDao();
	                     ArrayList<News> listNewsByIdCat = newsDao.getItemsByIdCat(item.getId());
	                     if(listNewsByIdCat.size()>0){
	                    	 for(News itemById: listNewsByIdCat){
                     %>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                           <div class="newspaper-x-blog-post-layout-c">
                              <div class="newspaper-x-image">
                                 <a href="https://colorlib.com/newspaper-x/2017/05/10/maecenas-tincidunt-posuere-quam-eu-consectetur-justo-5/">
                                 <img width="550" height="360" src="<%=DefineUtil.URL_PICTURE %>/<%=itemById.getPicture() %>" class="attachment-newspaper-x-recent-post-big size-newspaper-x-recent-post-big wp-post-image" alt=""> </a>
                              </div>
                              <div class="newspaper-x-title">
                                 <h4>
                                    <a href="https://colorlib.com/newspaper-x/2017/05/10/maecenas-tincidunt-posuere-quam-eu-consectetur-justo-5/"><%=itemById.getName() %></a>
                                 </h4>
                              </div>
                              <span class="newspaper-x-category">
                              <a href="https://colorlib.com/newspaper-x/category/news/"><%=itemById.getItemCat().getName() %></a>
                              </span>
                              <span class="newspaper-x-date"><%=itemById.getDate_create() %></span>
                              <div class="newspaper-x-content">
                                 <%=itemById.getPreview_text() %><a href="https://colorlib.com/newspaper-x/2017/05/10/maecenas-tincidunt-posuere-quam-eu-consectetur-justo-5/">...</a> 
                              </div>
                           </div>
                        </div>
                        <%}} %>
                     </div>
                     <%}} %>
                     
                  </div>
                  
                  <div id="newspaper_x_widget_posts_d-3" class="widget newspaper_x_widgets">
                     <div class="row newspaper-x-layout-b-row">
                     <h3 class="widget-title"><span>Tin xem nhiều</span></h3>
                     <%
                     ArrayList<News> listNewsView = (ArrayList<News>) request.getAttribute("listNewsView");
                     if(listNewsView!=null && listNewsView.size()>0){
                    	 for(News item: listNewsView){
                     %>
                        <div class="col-md-4 col-xs-6 ">
                           <div class="newspaper-x-blog-post-layout-b border">
                              <div class="row">
                                 <div class="col-sm-5 col-xs-12">
                                    <div class="newspaper-x-image">
                                       <a href="https://colorlib.com/newspaper-x/2017/05/10/fusce-ex-vel-diam-mattis-rhoncus-vel-quis-auguet/">
                                       <img width="550" height="360" src="<%=DefineUtil.URL_PICTURE %>/<%=item.getPicture() %>" class="attachment-newspaper-x-recent-post-big size-newspaper-x-recent-post-big wp-post-image" alt=""> </a>
                                    </div>
                                 </div>
                                 <div class="col-sm-7 col-xs-12">
                                    <div class="newspaper-x-title">
                                       <h3>
                                          <a href="https://colorlib.com/newspaper-x/2017/05/10/fusce-ex-vel-diam-mattis-rhoncus-vel-quis-auguet/"><%=item.getPreview_text() %></a>
                                       </h3>
                                    </div>
                                    <span class="newspaper-x-date"><%=item.getDate_create() %></span>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <%}}%>
                     </div>
                  </div>
               </div>
            </div>
         </div>
 <%@include file="/public/inc/footer.jsp" %>        