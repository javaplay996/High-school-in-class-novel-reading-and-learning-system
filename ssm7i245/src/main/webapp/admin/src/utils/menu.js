const menu = {
    list() {
        return [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"老师","menuJump":"列表","tableName":"laoshi"}],"menu":"老师管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"小说","menuJump":"列表","tableName":"xiaoshuo"}],"menu":"小说管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"小说类型","menuJump":"列表","tableName":"xiaoshuoleixing"}],"menu":"小说类型管理"},{"child":[{"buttons":["查看","删除"],"menu":"作业","menuJump":"列表","tableName":"zuoye"}],"menu":"作业管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"班级","menuJump":"列表","tableName":"banji"}],"menu":"班级管理"},{"child":[{"buttons":["查看","删除"],"menu":"作业完成信息","menuJump":"列表","tableName":"zuoyewanchengxinxi"}],"menu":"作业完成信息管理"},{"child":[{"buttons":["查看","删除"],"menu":"作业批改信息","menuJump":"列表","tableName":"zuoyepigaixinxi"}],"menu":"作业批改信息管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"},{"child":[{"buttons":["查看"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"小说资讯","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"小说列表","menuJump":"列表","tableName":"xiaoshuo"}],"menu":"小说模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"小说","menuJump":"列表","tableName":"xiaoshuo"}],"menu":"小说管理"},{"child":[{"buttons":["完成作业","查看"],"menu":"作业","menuJump":"列表","tableName":"zuoye"}],"menu":"作业管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"作业完成信息","menuJump":"列表","tableName":"zuoyewanchengxinxi"}],"menu":"作业完成信息管理"},{"child":[{"buttons":["查看","删除","订正"],"menu":"作业批改信息","menuJump":"列表","tableName":"zuoyepigaixinxi"}],"menu":"作业批改信息管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"小说列表","menuJump":"列表","tableName":"xiaoshuo"}],"menu":"小说模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除","查看评论","作业发布"],"menu":"小说","menuJump":"列表","tableName":"xiaoshuo"}],"menu":"小说管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"作业","menuJump":"列表","tableName":"zuoye"}],"menu":"作业管理"},{"child":[{"buttons":["查看","作业批改","审核"],"menu":"作业完成信息","menuJump":"列表","tableName":"zuoyewanchengxinxi"}],"menu":"作业完成信息管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"作业批改信息","menuJump":"列表","tableName":"zuoyepigaixinxi"}],"menu":"作业批改信息管理"}],"frontMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"小说列表","menuJump":"列表","tableName":"xiaoshuo"}],"menu":"小说模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"老师","tableName":"laoshi"}]
    }
}
export default menu;