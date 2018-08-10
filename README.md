# lpinyin (汉字转拼音Flutter版)

lpinyin是一个汉字转拼音的flutter package. 主要参考Java开源类库jpinyin.
①准确、完善的字库.
②拼音转换速度快.
③支持多种拼音输出格式：带音标、不带音标、数字表示音标以及拼音首字母输出格式.
④支持常见多音字的识别，其中包括词组、成语、地名等.
⑤简繁体中文转换.
⑥支持添加用户自定义字典.


##  Demo截图

<div>
<img src="https://github.com/Sky24n/lpinyin/blob/master/screenshot/1.png" width="200">
<img src="https://github.com/Sky24n/lpinyin/blob/master/screenshot/2.png" width="200">
</div>
<div>
<img src="https://github.com/Sky24n/lpinyin/blob/master/screenshot/3.png" width="200">
<img src="https://github.com/Sky24n/lpinyin/blob/master/screenshot/4.png" width="200">
</div>

### Example

``` dart

// Import package
import 'package:lpinyin/lpinyin.dart';

String text = "天府广场";

//字符串拼音首字符
PinyinHelper.getShortPinyin(str); // tfgc

//字符串首字拼音
PinyinHelper.getFirstWordPinyin(str); // tian

//无法转换拼音会 throw PinyinException
PinyinHelper.convertToPinyinString(text, " ", PinyinFormat.WITHOUT_TONE);//tian fu guang chang

//无法转换拼音 用'#'替代
PinyinHelper.convertToPinyinStringWithoutException(text, " ", PinyinFormat.WITHOUT_TONE);//tian fu guang chang

//添加用户自定义字典
List<String> dict1 = ['耀=yào','老=lǎo'];
PinyinHelper.addPinyinDict(dict1);
List<String> dict2 = ['奇偶=jī,ǒu','成都=chéng,dū'];
PinyinHelper.addMultiPinyinDict(dict2);
List<String> dict3 = ['倆=俩','們=们'];
ChineseHelper.addChineseDict(dict3);

```
