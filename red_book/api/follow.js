import {
	request
} from '../utils/request.js'
import {
	appConfig
} from '../config/config.js'


export function followUser(data) {
	return request.post(appConfig.WEB_API + `/platform/follow/followUser`, data)
}

export function addFolow(data) {
	return request.post(appConfig.WEB_API + `/system/focus`, data)
}

export function clearFollow(data) {
	return request.post(appConfig.WEB_API + `/platform/follow/clearFollow`, data)
}

export function getIsFollow(params) {
	return request.get(appConfig.WEB_API + `/system/focus/isFollow`, params)
}


export function getAllFriend() {
	return request.get(appConfig.WEB_API + `/system/focus/getFocusMy`)
}