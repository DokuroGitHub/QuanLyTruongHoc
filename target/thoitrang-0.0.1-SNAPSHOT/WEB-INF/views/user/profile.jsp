<%@ include file="/WEB-INF/tags/layout/includes.jsp"%>
<t:dashboard>


	<jsp:attribute name="header">
    <script type="text/javascript"
			src="<c:url value='/resources/js/jschool/user/profile.js' />"></script> 
</jsp:attribute>

	<jsp:attribute name="contentHeader">

</jsp:attribute>


	<jsp:body>
<!-- ======================== user profile start ======================== -->
<div class="row">
    <div class="col-md-12">
    	<!-- ======== user Banner ======== -->
	    <div class="box box-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
		    <div class="widget-user-header bg-yellow"
						style="background: url('<c:url value="/resources/images/user/${userInfo.userBanner}"/>') center center;">
		      <h3 class="widget-user-username">
							<span>${userInfo.firstName} ${userInfo.lastName}</span>
						</h3>
		      <h5 class="widget-user-desc">${user.role.roleName}</h5>
		    </div>
		    <div class="widget-user-image">
		      <img class="img-circle"
							src='<c:url value="/resources/images/user/${userInfo.userLogo}"/>'
							alt="User Avatar">
		    </div>
	    </div>
        <!-- ======== end user Banner ======== -->
        
    	<div class="clearfix"></div>
    	
        <!-- ======== user Details Section ======== -->
        <div>
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#profile"
								data-toggle="tab">Profile</a></li>
              <li><a href="#photos" data-toggle="tab">Photo</a></li>
              <li><a href="#settings" data-toggle="tab">Settings</a></li>
            </ul>
            <div class="tab-content">
              <!-- ======== PROFILE ======== -->
              <div class="active tab-pane" id="profile">
                  <!-- About Form -->
		          <div class="box">
		            <div class="box-header with-no-border">
		              <h3 class="box-title">About</h3>
		            </div>
		            
		            <!-- form start -->
		            <form class="form-horizontal" method="post" action="#"
										id="userAboutForm">
		              <div class="box-body">
		                <div class="form-group col-md-6">
		                  <label for="firstName"
													class="col-sm-6 control-label">Họ</label>
		                  <div class="col-sm-6">
		                      <input type="text"
														class="form-control text-input" id="firstName"
														value="${userInfo.firstName}">
		                  </div>
		                </div>
		                <div class="form-group col-md-6">
		                  <label for="lastName" class="col-sm-6 control-label">Tên</label>
		
		                  <div class="col-sm-6">
		                      <input type="text" class="form-control"
														id="lastName" value="${userInfo.lastName}">
		                  </div>
		                </div>
		                <div class="form-group col-md-6">
		                  <label for="fatherName"
													class="col-sm-6 control-label">Tên bố</label>
		                  <div class="col-sm-6">
		                      <input type="text" class="form-control"
														id="fatherName" value="${userInfo.fatherName}">
		                  </div>
		                </div>
		                <div class="form-group col-md-6">
		                  <label for="motherName"
													class="col-sm-6 control-label">Tên mẹ</label>
		
		                  <div class="col-sm-6">
		                      <input type="text" class="form-control"
														id="motherName" value="${userInfo.motherName}">
		                  </div>
		                </div>
		                <div class="form-group col-md-6">
		                  <label for="homePhoneNo"
													class="col-sm-6 control-label">SĐT #1</label>
		                  <div class="col-sm-6">
		                      <input type="text" class="form-control "
														id="phoneHome" value="${userInfo.phoneHome}">
		                  </div>
		                </div>
		                <div class="form-group col-md-6">
		                  <label for="mobileNo" class="col-sm-6 control-label">SĐT #2</label>
		
		                  <div class="col-sm-6">
		                      <input type="text" class="form-control"
														id="phoneMobile" value="${userInfo.phoneMobile}">
		                  </div>
		                </div>
		                <div class="form-group col-md-6">
		                  <label for="birthdate"
													class="col-sm-6 control-label">Ngày sinh</label>
		                  <div class="col-sm-6">
		                      <input type="date" class="form-control "
														id="birthdate" value="${userInfo.birthdate}">
		                  </div>
		                </div>
		                <div class="form-group col-md-6">
		                  <label for="useEmail" class="col-sm-6 control-label">Email</label>
		
		                  <div class="col-sm-6">
		                      <input type="email" class="form-control"
														id="emailPrimary" value="${userInfo.emailPrimary}">
		                  </div>
		                </div>
		                <div class="form-group col-md-6">
                          <label for="addressLine1"
													class="col-sm-6 control-label">Địa chỉ #1</label>
                          <div class="col-sm-6">
                              <input type="text" class="form-control "
														id="addressLine1" value="${userInfo.addressLine1}">
                          </div>
                        </div>
                        <div class="form-group col-md-6">
                          <label for="addressLine2"
													class="col-sm-6 control-label">Địa chỉ #2</label>
        
                          <div class="col-sm-6">
                              <input type="text" class="form-control"
														id="addressLine2" value="${userInfo.addressLine2}">
                          </div>
                        </div>
                        <div class="form-group col-md-6">
                          <label for="city"
													class="col-sm-6 control-label">Tỉnh/Thành phố</label>
                          <div class="col-sm-6">
                              <input type="text" class="form-control "
														id="city" value="${userInfo.city}">
                          </div>
                        </div>
                        <div class="form-group col-md-6">
                          <label for="State"
													class="col-sm-6 control-label">Đường</label>
        
                          <div class="col-sm-6">
                              <input type="text" class="form-control"
														id="state" value="${userInfo.state}">
                          </div>
                        </div>
                        <div class="form-group col-md-6">
                          <label for="district"
													class="col-sm-6 control-label">Quận/huyện</label>
                          <div class="col-sm-6">
                              <input type="text" class="form-control "
														id="district" value="${userInfo.district}">
                          </div>
                        </div>
                        <div class="form-group col-md-6">
                          <label for="postalCode"
													class="col-sm-6 control-label">Mã bưu điện</label>
        
                          <div class="col-sm-6">
                              <input type="text" class="form-control"
														id="zipCode" value="${userInfo.zipCode}">
                          </div>
                        </div>
                        <div class="form-group col-md-6">
                          <label for="Country"
													class="col-sm-6 control-label">Quốc gia</label>
                          <div class="col-sm-6">
                              <input type="text" class="form-control"
														id="country" value="${userInfo.country}">
                          </div>
                          <input type="hidden" id="userId"
													value="${user.userId}">
                        </div>
		              </div>
		              <!-- /.box-body -->
		              <div class="box-footer">
		                  <button type="submit"
												class="btn btn-warning pull-right">Update Info</button>
		              </div>
		              <!-- /.box-footer -->
		            </form>
		          </div>
              </div>
              <!-- /.tab-pane -->
              <!-- ======== PHOTOS ======== -->
              <div class="tab-pane" id="photos">
                  <!-- Horizontal Form -->
                  <div class="box box-info">
                    <div class="box-header with-border">
                      <h3 class="box-title">Cập nhật ảnh</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form class="form-horizontal"
										action='<c:url value='/dashboard/profile/uploadLogo'></c:url>'
										enctype="multipart/form-data" method="post">
                      <span>Ảnh đại diện</span>
                      <div class="box-body">
                        <div class="form-group col-sm-2 ">
                          <label for="username" class="control-label"></label>
                            <input type="file" name="avaterLogo">
                            <input type="hidden" name="userId"
													value="${user.userId}">
                            <button type="submit" class="btn btn-info">Cập nhật avatar</button>
                        </div>
                      </div>
                      <!-- /.box-body -->
                    </form>
                    <!-- form start -->
                    <form class="form-horizontal"
										action='<c:url value='/dashboard/profile/uploadBanner'></c:url>'
										enctype="multipart/form-data" method="post">
                      <span>Ảnh bìa</span>
                      <div class="box-body">
                        <div class="form-group col-sm-2 ">
                          <label for="username" class="control-label"></label>
                            <input type="file" name="userbanner">
                            <input type="hidden" name="userId"
													value="${user.userId}">
                            <button type="submit" class="btn btn-info">Cập nhật ảnh bìa</button>
                        </div>
                      </div>
                      <!-- /.box-body -->
                    </form>
                  </div>
              </div>
              <!-- /.tab-pane -->
              <!-- ======== SETTINGS ======== -->
              <div class="tab-pane" id="settings">
                  <!-- Horizontal Form -->
		          <div class="box box-info">
		            <div class="box-header with-border">
		              <h3 class="box-title">Đổi mật khẩu</h3>
		            </div>
		            <!-- /.box-header -->
		            <!-- form start -->
		            <form class="form-horizontal" autocomplete="off"
										action="#" method="post" id="userAccountForm">
		              <div class="box-body">
		                <div class="form-group">
		                  <label for="username" class="col-sm-4 control-label">Username</label>
		
		                  <div class="col-sm-8">
		                    <input type="text" class="form-control"
														id="username" readonly value="${user.username}">
		                  </div>
		                </div>
		                <div class="form-group">
		                  <label for="currentPassword"
													class="col-sm-4 control-label">Mật khẩu hiện tại</label>
		
		                  <div class="col-sm-8">
		                    <input type="password"
														class="form-control validate[required]"
														id="currentPassword" placeholder="Current Password">
		                  </div>
		                </div>
		                <div class="form-group">
		                  <label for="newPassword"
													class="col-sm-4 control-label">Mật khẩu mới</label>
		
		                  <div class="col-sm-8">
		                    <input type="password" class="form-control"
														id="newPassword" placeholder="New Password">
		                  </div>
		                </div>
                        <div class="form-group">
                          <label for="confirmPassword"
													class="col-sm-4 control-label">Xác nhận mật khẩu</label>
        
                          <div class="col-sm-8">
                            <input type="password"
														class="form-control validate[required, equals[newPassword]]"
														id="confirmPassword" placeholder="Confirm Password">
                          </div>
                        </div>
                        <input type="hidden" id="userId"
												value="${user.userId}">
		              </div>
		              <!-- /.box-body -->
		              <div class="box-footer">
		                <button type="submit" class="btn btn-info pull-right">Cập nhật</button>
		              </div>
		              <!-- /.box-footer -->
		            </form>
		          </div>
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
    </div>
    
</div>
<!-- ======================== user profile end ======================== -->


</jsp:body>

</t:dashboard>
