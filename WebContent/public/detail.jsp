<%@page import="model.bean.News"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>
         <div id="content" class="site-content container">
            <div class="row">
               <div id="primary" class="content-area col-md-8 col-sm-8 col-xs-12 newspaper-x-sidebar">
                  <main id="main" class="site-main" role="main">
                     <div class="newspaper-x-breadcrumbs"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a itemprop="url" href="https://colorlib.com/newspaper-x"><span itemprop="title">Home </span></a></span><span class="newspaper-x-breadcrumb-sep">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a itemprop="url" href="https://colorlib.com/newspaper-x/blog/"><span itemprop="title">Blog</span></a></span><span class="newspaper-x-breadcrumb-sep">/</span><span class="breadcrumb-leaf">Vivamus id lorem blandit</span></div>
                     <article id="post-98" class="post-98 post type-post status-publish format-standard has-post-thumbnail hentry category-editorial">
                        <%
                        News item = (News) request.getAttribute("item");
                        if(item!=null){
                        %>
                        <header class="entry-header">
                           <div class="newspaper-x-image">
                              <img width="700" height="490" src="<%=DefineUtil.URL_PICTURE%>/<%=item.getPicture() %>" class="attachment-newspaper-x-single-post size-newspaper-x-single-post wp-post-image" alt=""> 
                           </div>
                           <div class="newspaper-x-post-meta">
                              <div>
	                              <span class="newspaper-x-category"> <a href="https://colorlib.com/newspaper-x/category/editorial/"><%=item.getItemCat().getName()%></a></span>
	                              Ngày đăng: <span class="newspaper-x-date"><%=item.getDate_create() %></span>
	                              Lượt xem: <span class="newspaper-x-date"><%=item.getCounter() %></span>
	                          </div>
                           </div>
                           <h2 class="entry-title"><%=item.getName() %></h2>
                        </header>
                        <div class="entry-content">
                        <%=item.getDetail_text() %>
                        </div>
                        <%}%>
                         <div id="comments" class="comments-area">
				            <div class="comments-form">
				               <div class="container">
				                  <div class="col-md-12">
				                     <div id="respond" class="comment-respond">
				                        <h3 id="reply-title" class="comment-reply-title"><span>Leave a reply</span> <small><a rel="nofollow" id="cancel-comment-reply-link" href="https://colorlib.com/newspaper-x/2017/05/10/vivamus-id-lorem-blandit/#respond" style="display:none;">Cancel reply</a></small></h3>
				                        <form action="https://colorlib.com/newspaper-x/wp-comments-post.php" method="post" id="commentform" class="comment-form" novalidate="">
				                           <span class="comment_notes_before">Your email address will not be published. Required fields are marked *</span>
				                           <p class="comment-form-comment"><textarea id="comment" name="comment" placeholder="Comment" aria-required="true"></textarea></p>
				                           <div class="row">
				                              <p class="comment-form-author col-sm-4"><input id="author" name="author" type="text" placeholder="Name*" value="" size="30" aria-required="true"></p>
				                              <p class="comment-form-email col-sm-4"><input id="email" name="email" type="text" placeholder="Email*" value="" size="30" aria-required="true"></p>
				                              <p class="comment-form-url col-sm-4"><input id="url" name="url" type="text" placeholder="Website" value="" size="30"></p>
				                           </div>
				                           <p class="form-submit"><input name="submit" type="submit" id="submit" class="submit" value="Submit"> <input type="hidden" name="comment_post_ID" value="98" id="comment_post_ID">
				                              <input type="hidden" name="comment_parent" id="comment_parent" value="0">
				                           </p>
				                        </form>
				                     </div>
				                  </div>
				               </div>
				            </div>
         				</div>
                        <div class="newspaper-x-related-posts">
                           <div class="row">
                              <div class="col-lg-11 col-sm-10 col-xs-12 newspaper-x-related-posts-title">
                                 <h3><span>Related posts </span></h3>
                              </div>
                           </div>
                              <div class="owl-stage-outer">
                                 <div class="owl-stage" style="width: 1000px;">
                                 <%
                                 ArrayList<News> listNews = (ArrayList<News>) request.getAttribute("listNews");
                                 if(listNews!=null && listNews.size()>0){
                                  for(News item_detail: listNews){
                                 %>
                                    <div class="owl-item" style="width: 230px; margin-right: 20px">
                                       <div class="item">
                                          <a href="https://colorlib.com/newspaper-x/2017/05/10/nam-aliquet-lorem-vita/">
                                          	<img width="550" height="360" src="../templates/public/images/00_heatemplates/publicder_article_02-550x360.jpg" class="attachment-newspaper-x-recent-post-big size-newspaper-x-recent-post-big wp-post-image" alt="">
                                          </a>
                                          <div class="newspaper-x-related-post-title"><a href="https://colorlib.com/newspaper-x/2017/05/10/nam-aliquet-lorem-vita/"><%=item_detail.getName() %></a></div>
                                          <div class="newspaper-x-related-posts-date">May 10, 2017</div>
                                       </div>
                                    </div>
                                    <%}} %>
                                 </div>
                           </div>
                        </div>
                     </article>
                  </main>
               </div>
               <%@include file="/templates/public/inc/side-bar.jsp" %>
            </div>
         </div>
        
         <div id="content" class="container"></div>
         <%@include file="/templates/public/inc/footer.jsp" %>