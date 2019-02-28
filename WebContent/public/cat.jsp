<%@page import="model.bean.News"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>
         <div id="content" class="site-content container">
            <div class="row">
            <%
            String catName = ""; 
            ArrayList<News> listNews = (ArrayList<News>) request.getAttribute("listNews");
            if(listNews!=null && listNews.size()>0){
          	  catName = listNews.get(0).getItemCat().getName();
            %>
               <header class="col-xs-12">
                  <h3 class="page-title"><span><%=catName %></span></h3>
               </header>
            </div>
            <div class="row">
               <div class="col-xs-12 newspaper-x-archive-first-posts">
                  <div class="row">
                  <%
	                   for(News item: listNews){
                  %>
                     <div class="col-md-6">
                        <article id="post-76" class="post-76 post type-post status-publish format-standard has-post-thumbnail hentry category-news">
                           <header class="entry-header">
                              <div class="newspaper-x-image">
                                 <a href="https://colorlib.com/newspaper-x/2017/05/10/maecenas-tincidunt-posuere-quam-eu-consectetur-justo-5/" rel="bookmark"><img width="550" height="360" src="../templates/public/images/01_latestnews_article_01-550x360.jpg" class="attachment-newspaper-x-recent-post-big size-newspaper-x-recent-post-big wp-post-image" alt=""></a> 
                              </div>
                              <h4 class="entry-title"><a href="https://colorlib.com/newspaper-x/2017/05/10/maecenas-tincidunt-posuere-quam-eu-consectetur-justo-5/" rel="bookmark"><%=item.getName() %></a></h4>
                              <div class="newspaper-x-post-meta">
                                 <div><span class="newspaper-x-category"> <a href="https://colorlib.com/newspaper-x/category/news/"><%=item.getItemCat().getName() %></a></span><span class="newspaper-x-date"><%=item.getDate_create() %></span></div>
                              </div>
                           </header>
                           <div class="entry-content">
                              <p><%=item.getPreview_text() %></p>
                           </div>
                           <footer class="entry-footer"></footer>
                        </article>
                     </div>
                     <%}} %>
                  </div>
               </div>
            </div>
            <div class="row">
               <div id="primary" class="newspaper-x-content newspaper-x-archive-page col-lg-8 col-md-8 col-sm-12 col-xs-12">
                  <main id="main" class="site-main" role="main">
                     <div class="row">
                        <div class="col-md-6">
                           <article id="post-70" class="post-70 post type-post status-publish format-standard has-post-thumbnail hentry category-news">
                              <header class="entry-header">
                                 <div class="newspaper-x-image">
                                    <a href="https://colorlib.com/newspaper-x/2017/05/10/maecenas-tincidunt-posuere-quam-eu-consectetur-justo-4/" rel="bookmark"><img width="550" height="360" src="../templates/public/images/01_latestnews_article_03-550x360.jpg" class="attachment-newspaper-x-recent-post-big size-newspaper-x-recent-post-big wp-post-image" alt=""></a> 
                                 </div>
                                 <h4 class="entry-title"><a href="https://colorlib.com/newspaper-x/2017/05/10/maecenas-tincidunt-posuere-quam-eu-consectetur-justo-4/" rel="bookmark">Maecenas tincidunt posuere quam, eu consectetur justo</a></h4>
                                 <div class="newspaper-x-post-meta">
                                    <div><span class="newspaper-x-category"> <a href="https://colorlib.com/newspaper-x/category/news/">News</a></span><span class="newspaper-x-date">May 10, 2017 </span></div>
                                 </div>
                              </header>
                              <div class="entry-content">
                                 <p>Semper leo. Fusce lectus justo, porta quis felis at, imperdiet elementum libero. Duis nec dignissim lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque venenatis purus eget maximus. Fusce dapibus leo sed sem fringilla,â¦</p>
                              </div>
                              <footer class="entry-footer"></footer>
                           </article>
                        </div>
                     </div>
                  </main>
               </div>
               <%@include file="/templates/public/inc/side-bar.jsp" %>
            </div>
         </div>
         <%@include file="/templates/public/inc/footer.jsp" %>