import {
	request
} from '../utils/request.js'
import {
	appConfig
} from '../config/config.js'

export function addComment(data) {
	return request.post(appConfig.WEB_API + '/system/comment', data)
}

export function getAllComment(params) {
	return request.get(appConfig.WEB_API + `/system/comment/list`, params)
}

export function addCollect(query) {
	return request.post(appConfig.WEB_API + `/system/collect`, query)
}

export function getAllTwoCommentByOneId(page, limit, params) {
	return request.get(appConfig.WEB_API + `/platform/comment/getAllTwoCommentByOneId/${page}/${limit}`, params)
}


export function getAllOneCommentByImgId(page, limit, params) {
	return request.get(appConfig.WEB_API + `/platform/comment/getAllOneCommentByImgId/${page}/${limit}`, params)
}

export function getAllTwoComment(params) {
	return request.get(appConfig.WEB_API + `/platform/comment/getAllTwoComment`, params)
}


export function getAllReplyComment(params) {
	return request.get(appConfig.WEB_API + `/system/comment/getCommentMyMessage`)
}


export function getComment(params) {
	return request.get(appConfig.WEB_API + `/platform/comment/getComment`, params)
}

export function scrollComment(params) {
	return request.get(appConfig.WEB_API + `/platform/comment/scrollComment`, params)
}


export function getAllTrendCommentByImage(page, limit, params) {
	return request.get(appConfig.WEB_API + `/platform/comment/getAllTrendCommentByImage/${page}/${limit}`, params)
}

// export function getAllComment(page, limit, params) {
// 	return request.get(appConfig.WEB_API + `/platform/comment/getAllComment/${page}/${limit}`, params)
// }

export function delComment(params) {
	return request.get(appConfig.WEB_API + `/platform/comment/delComment`, params)
}