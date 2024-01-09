import request from '@/utils/request'

// 查询学校列表
export function listSchool(query) {
    return request({
        url: '/system/school/list',
        method: 'get',
        params: query
    })
}

// 查询学校详细
export function getSchool(id) {
    return request({
        url: '/system/school/' + id,
        method: 'get'
    })
}

// 新增学校
export function addSchool(data) {
    return request({
        url: '/system/school',
        method: 'post',
        data: data
    })
}

// 修改学校
export function updateSchool(data) {
    return request({
        url: '/system/school',
        method: 'put',
        data: data
    })
}

// 删除学校
export function delSchool(id) {
    return request({
        url: '/system/school/' + id,
        method: 'delete'
    })
}

// 导出学校
export function exportSchool(query) {
    return request({
        url: '/system/school/export',
        method: 'get',
        params: query
    })
}
