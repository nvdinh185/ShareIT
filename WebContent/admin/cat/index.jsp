<%@page import="model.dao.NewsDao"%>
<%@page import="model.bean.Category"%>
<%@page import="model.bean.News"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/admin/inc/header.jsp"%>
<div id="content" class="site-content container"></div>
<div class="newspaper-x-header-widget-area">
	<div id="newspaper_x_header_module-2"
		class="widget newspaper_x_widgets"></div>
</div>
<div class="container site-content">
	<div class="row">
		<div class="col-md-12 newspaper-x-content newspaper-x-with-sidebar">
			<div id="newspaper_x_widget_posts_a-4"
				class="widget newspaper_x_widgets">
				<div class="site-content newspaper-spacer-a">
					<div class="row">
						<div class="col-md-12">
							<div class="newspaper-x-recent-posts newspaper-x-recent-posts-a">
								<h4 class="header-line" style="margin-left: 14%">Quản lý
									danh mục</h4>
								<div class="">
									<div class="">
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th width="20%">ID Danh mục</th>
													<th width="50%">Tên Danh mục</th>

													<th width="30%">Chức năng</th>
												</tr>
											</thead>
											<tbody>
												<%
													@SuppressWarnings("unchecked")
													ArrayList<Category> listCat = (ArrayList<Category>) request.getAttribute("listCat");
													if (listCat != null && listCat.size() > 0) {
														for (Category objCat : listCat) {
												%>
												<tr class="odd gradeX">
													<td><%=objCat.getId() %></td>
													<td><%=objCat.getName() %>
													</td>
													<td align="center"><a
														href="http://shareit.vinaenter.edu.vn/admincp/cat/edit/26"
														class="btn btn-primary">Sửa</a> <a
														href="http://shareit.vinaenter.edu.vn/admincp/cat/del/26"
														onclick="return confirm(&#39;Bạn có chắc chắn muốn xóa&#39;)"
														class="btn btn-danger">Xóa</a></td>

												</tr>
												<%
													}
													}
												%>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="newspaper_x_widget_posts_d-3"
				class="widget newspaper_x_widgets"></div>
		</div>
	</div>
	<%@include file="/templates/admin/inc/footer.jsp"%>