import request from '@/utils/request'

// 查询点赞列表
export function listThumbs(query) {
    return request({
        url: '/system/thumbs/list',
        method: 'get',
        params: query
    })
}

// 查询点赞详细
export function getThumbs(id) {
    return request({
        url: '/system/thumbs/' + id,
        method: 'get'
    })
}

// 新增点赞
export function addThumbs(data) {
    return request({
        url: '/system/thumbs',
        method: 'post',
        data: data
    })
}

// 修改点赞
export function updateThumbs(data) {
    return request({
        url: '/system/thumbs',
        method: 'put',
        data: data
    })
}

// 删除点赞
export function delThumbs(id) {
    return request({
        url: '/system/thumbs/' + id,
        method: 'delete'
    })
}

// 导出点赞
export function exportThumbs(query) {
    return request({
        url: '/system/thumbs/export',
        method: 'get',
        params: query
    })
}
