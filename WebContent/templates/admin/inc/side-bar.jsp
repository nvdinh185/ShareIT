<%@page import="model.bean.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dao.CatDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<aside id="secondary" class="widget-area col-lg-4 col-md-4 col-sm-4 newspaper-x-sidebar" role="complementary">
                  <div class="newspaper-x-blog-sidebar">
                     <div id="search-4" class="widget widget_search">
                        <form role="search" method="get" id="searchform" action="https://colorlib.com/newspaper-x/">
                           <label>
                           <span class="screen-reader-text">Search for:</span>
                           <input class="search-field" placeholder="Search..." value="" name="s" type="search">
                           </label>
                           <button class="search-submit" value="Search  " type="submit"><span class="fa fa-search"></span></button>
                        </form>
                     </div>
                     <div id="calendar-3" class="widget widget_calendar">
                        <div id="calendar_wrap" class="calendar_wrap">
                           <table id="wp-calendar">
                              <caption>February 2019</caption>
                              <thead>
                                 <tr>
                                    <th scope="col" title="Monday">M</th>
                                    <th scope="col" title="Tuesday">T</th>
                                    <th scope="col" title="Wednesday">W</th>
                                    <th scope="col" title="Thursday">T</th>
                                    <th scope="col" title="Friday">F</th>
                                    <th scope="col" title="Saturday">S</th>
                                    <th scope="col" title="Sunday">S</th>
                                 </tr>
                              </thead>
                              <tfoot>
                                 <tr>
                                    <td colspan="3" id="prev"><a href="https://colorlib.com/newspaper-x/2017/05/">Â« May</a></td>
                                    <td class="pad">&nbsp;</td>
                                    <td colspan="3" id="next" class="pad">&nbsp;</td>
                                 </tr>
                              </tfoot>
                              <tbody>
                                 <tr>
                                    <td colspan="4" class="pad">&nbsp;</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                 </tr>
                                 <tr>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                 </tr>
                                 <tr>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td>17</td>
                                 </tr>
                                 <tr>
                                    <td>18</td>
                                    <td>19</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    <td id="today">23</td>
                                    <td>24</td>
                                 </tr>
                                 <tr>
                                    <td>25</td>
                                    <td>26</td>
                                    <td>27</td>
                                    <td>28</td>
                                    <td class="pad" colspan="3">&nbsp;</td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                     <div id="categories-5" class="widget widget_categories">
                        <h3>Categories</h3>
                        <ul>
                        <%
                                 	CatDao catDao_bar = new CatDao();
  	                           		ArrayList<Category> listCats3 = catDao_bar.getItems();
  	                           		if(listCats3!=null && listCats3.size()>0){
  	                            	for(Category item2: listCats3){
                                 %>
                           <li class="cat-item cat-item-2"><a href="<%=request.getContextPath()%>/cat?cid=<%=item2.getId()%>"><%=item2.getName() %></a> <span class="newspaper-x-cat-count">11</span></li>
                        <%}} %>
                        </ul>
                     </div>
                  </div>
               </aside>