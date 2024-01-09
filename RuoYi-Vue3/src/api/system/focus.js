import request from '@/utils/request'

// 查询关注列表
export function listFocus(query) {
    return request({
        url: '/system/focus/list',
        method: 'get',
        params: query
    })
}

// 查询关注详细
export function getFocus(id) {
    return request({
        url: '/system/focus/' + id,
        method: 'get'
    })
}

// 新增关注
export function addFocus(data) {
    return request({
        url: '/system/focus',
        method: 'post',
        data: data
    })
}

// 修改关注
export function updateFocus(data) {
    return request({
        url: '/system/focus',
        method: 'put',
        data: data
    })
}

// 删除关注
export function delFocus(id) {
    return request({
        url: '/system/focus/' + id,
        method: 'delete'
    })
}

// 导出关注
export function exportFocus(query) {
    return request({
        url: '/system/focus/export',
        method: 'get',
        params: query
    })
}
