<template>
	<view class="container">
		<ul>
			<uni-list :data='dataList' :total='total'>
				<li v-for="(item, index) in dataList" :key="index">
					<view class="item">
						<view class="top">
							<view class="avatar-user">
								<view class="avatar">
									<image :src="userInfo.avatar" mode="aspectFill" :lazy-load='true' />
								</view>
								<view class="user">
									<view class="name">{{ userInfo.username }}</view>
									<view class="time">{{ item.time }}</view>
								</view>
							</view>
							<view class="upload-loading" v-if="item.status==0" @click="cancelUpload(item.mid)">
								上传中...</view>
						</view>
						<view class="content">
							{{ item.content }}
						</view>
						<view class="main">

							<view class="img-list" @click="toMain(item.id,item.status)">
								<view v-for="(img, index) in item.imgsUrl" :key="index">
									<image :src="img" mode="aspectFill" :lazy-load='true' class="fadeImg" />
								</view>
							</view>
						</view>
						<view class="fotter"></view>
					</view>
				</li>
			</uni-list>
		</ul>

		<view class="loadStyle" v-if="!isEnd && loading">正在加载中</view>
		<view class="loadStyle" v-if="isEnd">我也是有底线的~</view>
	</view>
</template>

<script>
	import {
		getTrendByUser
	} from "@/api/user.js"
	import {
		getUserInfo
	} from "@/api/user.js"
	import {
		addBrowseRecord
	} from "@/api/browseRecord.js"
	import {
		timeAgo
	} from "@/utils/webUtils.js"
	import {
		publish,
		updateImgDetail,
		updateStatus,
		deleteImgs
	} from '@/api/imgDetail.js'

	import {
		listDetail,
		listCollectDetail
	} from '@/api/detail.js'
	import {
		appConfig
	} from '@/config/config'
	export default {
		props: {
			uid: Number,
			seed: Number,
		},
		data() {
			return {
				page: 1,
				limit: 3,
				userInfo: {},
				dataList: [],
				isEnd: false, //是否到底底部了
				loading: false, //是否正在加载
				total: 0,
				type: 0,

			}
		},

		watch: {
			seed(newVal, oldVal) {
				this.loadData()
			}
		},

		created() {
			this.getUserInfo(this.uid)
		},

		methods: {

			getCollect() {
				let params = {
					pageNum:1,
					pageSize:1000,
					userId: this.uid
				}
				listCollectDetail().then(res =>{
					
				})
			},
			getTrendByUser() {
				// let params = {
				// 	userId: this.uid
				// }
				// listDetail(params).then(res => {
				// 	res.rows.forEach(e => {
				// 		e.time = timeAgo(e.time)
				// 		e.imgsUrl = JSON.parse(e.imgsUrl)
				// 		this.dataList.push(e)
				// 	})
				// 	this.total = res.total
				// })
				
				let params = {
					pageNum:1,
					pageSize:1000,
					userId: this.uid
				}
				listCollectDetail(params).then(res =>{
						res.data.forEach(e => {
							e.time = timeAgo(e.time)
							e.imgsUrl = JSON.parse(e.imgsUrl)
							this.dataList.push(e)
						})
						this.total = res.total
				})
			},
			getUserInfo(uid) {
				let params = {
					userId: uid
				}
				console.log('uid',uid)
				this.getTrendByUser()
				// getUserInfo(params).then(res => {
				// 	debugger
				// 	if (res.code === 500) {
				// 		uni.clearStorageSync()
				// 		uni.navigateTo({
				// 			url: "/pages/login/login2/login2"
				// 		})
				// 	}
				// 	this.userInfo = res.user
				// 	this.getTrendByUser()
				// })
			},

			loadData() {
				this.loading = true
				setTimeout(() => {
					if (this.dataList.length >= this.total) {
						this.isEnd = true
						return
					}
					this.page = this.page + 1;
					let params = {
						userId: this.userInfo.id,
						type: this.type
					}

					getTrendByUser(this.page, this.limit, params).then(res => {

						res.data.records.forEach(e => {
							e.time = timeAgo(e.time)
							e.imgsUrl = JSON.parse(e.imgsUrl)
							this.dataList.push(e)
						})
					})
				}, 200)
			},

			cancelUpload(mid) {
				this.$emit('cancelUp', mid)
			},

			toMain(mid, status) {
				debugger
				if (status == 0) {
					uni.showToast({
						title: "图片正在上传中...",
						icon: "none"
					});
					return
				}

				let data = {}
				data.uid = this.userInfo.id
				data.mid = mid

				addBrowseRecord(data).then(res => {
					uni.navigateTo({
						url: "/pages/main/main?mid=" + mid
					})
				})
			},

			toAlbum(aid) {
				debugger
				uni.navigateTo({
					url: "/pages/user/albums/albumInfo?albumId=" + aid
				})
			}
		}
	}
</script>

<style scoped>
	@import url(../trends/trends.css);
</style>