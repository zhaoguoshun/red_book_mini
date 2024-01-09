import request from '@/utils/request'

// 查询作品收藏列表
export function listCollect(query) {
    return request({
        url: '/system/collect/list',
        method: 'get',
        params: query
    })
}

// 查询作品收藏详细
export function getCollect(id) {
    return request({
        url: '/system/collect/' + id,
        method: 'get'
    })
}

// 新增作品收藏
export function addCollect(data) {
    return request({
        url: '/system/collect',
        method: 'post',
        data: data
    })
}

// 修改作品收藏
export function updateCollect(data) {
    return request({
        url: '/system/collect',
        method: 'put',
        data: data
    })
}

// 删除作品收藏
export function delCollect(id) {
    return request({
        url: '/system/collect/' + id,
        method: 'delete'
    })
}

// 导出作品收藏
export function exportCollect(query) {
    return request({
        url: '/system/collect/export',
        method: 'get',
        params: query
    })
}
