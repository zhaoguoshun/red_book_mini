<template>
	<view>
		<!-- wx:if="{{canIUse}}" -->
		  <view class='headView'>

			    <view class='headImageView'>
				      <image class='headImage' src='http://cdn.zhaoguoshun.cn/QQ%E5%9B%BE%E7%89%8720211028151954.jpg'
					mode='scaleToFill'></image>
				    </view>
			    <view class='titleText'>申请获取以下权限</view>

			    <view class='contentText'>获得你的公开信息(昵称,头像,手机等)</view>

			    <button class='authBtn' type='primary' open-type='getUserInfo' @tap='getUserProfile'>授权登录</button>

			  </view>

	</view>
</template>

<script>
	import {
		login,
		wxLogin,
		otherLogin
	} from "@/api/login.js"
	
	import {
		tokenUtil
	} from "@/utils/token.js"
	// import {
	// 	baseUrl
	// } from '@/common/config.js'
	export default {
		data() {
			return {
				user: {
					openId: '',
					nickname: '',
					avatar: ''
				}
			}
		},

		methods: {
			getUserProfile() {
				let that = this
				wx.getUserProfile({
					desc: "获取你的昵称、头像、地区及性别", // 不写不弹提示框
					success: res => {
						console.log(res)
						var openId = wx.getStorageSync('openid');
						that.user.openId = openId
						that.user.nickname = res.userInfo.nickName
						that.user.avatar = res.userInfo.avatarUrl
						that.insertUser(that.user);
						console.log('成功')
					},
					fail: res => {
						//拒绝授权
						wx.showToast({
							title: '您拒绝了授权',
							icon: 'none'
						})
						uni.navigateBack({
							url: '/pages/index/index'
						})
					}
				})

			},

			insertUser(user) {
				const that = this
				uni.login({
					provider: 'weixin', // 指定使用微信登录
					success: res => {
						// 获取code成功后，将code发送到后端进行处理
						const code = res.code;
						// 这里可以将 code 发送到后端接口，后端处理微信登录逻辑
						// 通过后端获取用户信息等操作，然后进行页面跳转或其他操作
						// 示例：this.$api.login({ code }).then(res => {})
						// that.user.openId = openId
						// that.user.nickname = res.userInfo.nickName
						// that.user.avatar: = res.userInfo.avatarUrl

						// 使用 uni.getUserInfo 获取用户信息
						uni.getUserInfo({
							provider: 'weixin',
							success: userInfoRes => {
								// 获取用户信息成功，userInfoRes.userInfo 包含用户的基本信息，比如用户名、头像等
								const userInfo = userInfoRes.userInfo;
								console.log(userInfo);

								let params = {
									nickname: userInfoRes.userInfo.nickName,
									avatar: userInfoRes.userInfo.avatarUrl,
									code: res.code
								}
								
								wxLogin(params).then(res =>{
									let user = res.userInfo
									tokenUtil.set(res.token)
									uni.setStorageSync("userInfo", user)
									
									setTimeout(() => {
										uni.reLaunch({
											url: "/pages/index/index"
										});
									}, 500)
								})
							},
							fail: err => {
								// 获取用户信息失败，进行错误处理
								console.error('获取用户信息失败', err);
							}
						});
					},
					fail: err => {
						// 获取code失败，可以进行错误处理
						console.error('微信登录失败', err);
					}
				});
				// if (this.user.openId == '') {
				// 	wx.login({
				// 		success(res) {
				// 			//获取openId
				// 			that.$u.get(`${baseUrl}/wx_code/user/getOPenId?code=${res.code}`).then(data => {
				// 				this.user.openId = data.data.openid
				// 			})
				// 		}

				// 	})

				// }

				// that.$u.post(`${baseUrl}/wx_code/user/add`, user).then(user => {
				// 	console.log(user)
				// 	if (user.data == true) {
				// 		uni.navigateBack({
				// 			url: '/pages/index/index'
				// 		})
				// 	} else {
				// 		//拒绝授权
				// 		wx.showToast({
				// 			title: '授权失败',
				// 			icon: 'none'
				// 		})
				// 	}
				// })
			}

		}
	}
</script>

<style scoped>
	.headView {
		margin: 290rpx 50rpx 90rpx 50rpx;
	}

	.headImageView {
		display: block;
		margin-right: 50rpx;
		margin-top: 50rpx;
		margin-left: 50rpx;
		height: 100rpx;
	}

	.headImage {
		display: flex;
		width: 50px;
		height: 50px;
	}

	.titleText {
		margin-left: 100rpx;
		margin-top: 100rpx;
		margin-bottom: 40rpx;
		font-size: 28rpx;
		color: #020e0f;
		/* 		text-align: center; */
	}

	.contentText {
		margin-left: 50rpx;
		font-size: 28rpx;
		color: #666;
		text-align: center;
	}

	.authBtn {
		margin-top: 70rpx;
		margin-left: 50rpx;
		margin-right: 50rpx;
		height: 90rpx;
		font-size: 35rpx;
	}
</style>