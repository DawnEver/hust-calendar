curl 'http://hubs.hust.edu.cn/aam/score/CourseInquiry_ido.action' \
-X POST \
-H 'Host: hubs.hust.edu.cn' \
-H 'Connection: keep-alive' \
-H 'Accept: application/json, text/javascript, */*; q=0.01' \
-H 'X-Requested-With: XMLHttpRequest' \
-H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36' \
-H 'Origin: http://hubs.hust.edu.cn' \
-H 'Referer: http://hubs.hust.edu.cn/aam/report/scheduleQuery.jsp' \
-H 'Accept-Language: en,zh-CN;q=0.9,zh;q=0.8' \
-H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
--cookie 'BIGipServerpool-hub-xxfw-xsd=2081032714.22811.0000; utag_main=v_id:018bc32611ea001d541a4eb85ca105075003d06d00b78$_sn:2$_se:5$_ss:0$_st:1699791612236$vapi_domain:ieeexplore-ieee-org-s.lib.hust.edu.cn$ses_id:1699789728901%3Bexp-session$_pn:3%3Bexp-session; JSESSIONID=WZ_OTbhoDDSodMrQwh2EoSz7KIKKok2it4OLvOlVzvQmG7d7gAjy!-1684836368' \
--data-raw 'start=2023-09-01&end=2024-02-01' \
-o src/data.json
# get real-time cookie from browser