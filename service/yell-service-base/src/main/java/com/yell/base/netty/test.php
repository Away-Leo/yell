<?php
$url = 'http://xx.xhjfr.cn/api/pay/pay';

$skey = '2l8F9SQkXpSF2UPM82iIIlb7IJLip8Im';//支付密钥后台获取
$data = [];
$data['pay_sn'] 		= time().rand(100,999);
$data['order_amount'] 	= 100; //以元为单位
$data['seller_id'] 		= 1936;//商户ID 后台可获取
// $data['sub_mch_id'] 	= xxxxx;//子商户ID 后台申请可获取不填 可自动轮训商户 收满额度自动关闭
$data['notify_url'] 	= 'http://karl-leo.imwork.net/apis/common/media/payResponse';//异步回调地址
$data['return_url']     = 'http://karl-leo.imwork.net/excite/player.html?userId=82256708f25f62289c02447bb3e535a16c4cc99c1571505369982&vid=25';//同步回调地址
$data['pay_type'] 	    = 'Wxgzh';//公众号支付:Wxgzh 扫码支付:wxsm
ksort($data);
echo json_encode($data);
echo ("\n");
$sign = '';
foreach ($data as $key => $value) {
    $sign .= $value;
}
echo ("新生成的签名字符串为:".$sign);
echo ("\n");
$sign = md5($sign.$skey);
echo ("签名后的字符串为:".$sign);
echo ("\n");
$data['sign'] = $sign;
echo json_encode($data);
echo ("\n");
$url = $url."?".http_build_query($data);
echo ($url);
echo ("\n");
exit;