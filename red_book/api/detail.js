
import {
	request
} from '../utils/request.js'

import {
	appConfig
} from '../config/config.js'


export function listDetail(query) {
	return request.get(appConfig.WEB_API + `/system/detail/list`, query)
}

export function listCollectDetail() {
	return request.get(appConfig.WEB_API + `/system/detail/getImgByCollect`)
}


export function getDetail(id) {
	return request.get(appConfig.WEB_API + `/system/detail/`+id)
}

// 新增【请填写功能名称】
export function addDetail(data) {
	return request({
		url: '/system/detail',
		method: 'post',
		data: data
	})
}

// 修改【请填写功能名称】
export function updateDetail(data) {
	return request({
		url: '/system/detail',
		method: 'put',
		data: data
	})
}

// 删除【请填写功能名称】
export function delDetail(id) {
	return request({
		url: '/system/detail/' + id,
		method: 'delete'
	})
}

// 导出【请填写功能名称】
export function exportDetail(query) {
	return request({
		url: '/system/detail/export',
		method: 'get',
		params: query
	})
}
