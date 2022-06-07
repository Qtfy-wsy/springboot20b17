const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot20b17/",
            name: "springboot20b17",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot20b17/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "社区二手物品回收平台"
        } 
    }
}
export default base
