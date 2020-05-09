# flutter_jd_address_selector

仿京东地址选择器


## Use


### pubspec.yaml

```yaml
    dependencies:
      flutter_jd_address_selector:
        git:
          url: https://github.com/shichunlei/flutter_jd_address_selector
```

### import

```dart
    import 'package:flutter_jd_address_selector/flutter_jd_address_selector.dart';
```

### use

```dart
    void _choiceAddressDialog() async {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return JDAddressDialog(
              onSelected: (province, city, county) {
                address = '$province-$city-$county';
                setState(() {});
              },
              title: '选择地址',
              selectedColor: Colors.red,
              unselectedColor: Colors.black);
        });
    }
```


## 运行截图

|![1](https://github.com/shichunlei/flutter_jd_address_selector/blob/master/images/Screenshot_2019-06-15-15-26-30-164.png)|![2](https://github.com/shichunlei/flutter_jd_address_selector/blob/master/images/Screenshot_2019-06-15-15-26-35-889.png)|
| :--: | :--: |


## 城市数据

数据来源[国家统计局城乡划分 2019 版](http://www.stats.gov.cn/tjsj/tjbz/tjyqhdmhcxhfdm/2019/)


## LICENSE

copyright apache 2.0 for shichunlei
