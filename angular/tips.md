### data : '1994-11-05 13:15:30'
    此格式不符合 ISO 8601 标准 但是在chrome中是支持的
    根据 ：
    angular标准: https://angular.cn/api/common/formatDate
    ISO时间标准 : https://www.w3.org/TR/NOTE-datetime
    解决方案
    1 对于此类事件戳问题 采取字符串截取 前提:数据中基本都是这种字符串格式(具有局限性)
    2 将字符串强行转化为ISO-8601格式的时间格式 1994-11-05T13:15:30Z 或 1994-11-05T08:15:30-05:00