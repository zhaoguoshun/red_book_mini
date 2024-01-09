import {
	request
} from '../utils/request.js'
import {
	appConfig
} from '../config/config.js'


export function getCategory(params) {
	return request.get(appConfig.WEB_API + '/system/category/list', params)
}

export function getSchool(params) {
	return request.get(appConfig.WEB_API + '/system/school/list', params)
}


export function getImgListByCategory(params) {
	return request.get(appConfig.WEB_API + '/system/category/list', params)
}