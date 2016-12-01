本工程为基于高德地图iOS SDK进行封装，实现了改变地图初始时中心点的功能。
## 前述 ##
- [高德官网申请Key](http://lbs.amap.com/dev/#/).
- 阅读[开发指南](http://lbs.amap.com/api/ios-sdk/summary/).
- 工程基于iOS 3D地图SDK实现

## 功能描述 ##
基于3D地图SDK，改变了地图初始时中心点坐标。

## 核心类/接口 ##
| 类    | 接口  | 说明   | 版本  |
| -----|:-----:|:-----:|:-----:|
| MAMapView	| CLLocationCoordinate2D centerCoordinate | 当前地图的中心点，改变该值时，地图的比例尺级别不会发生变化 | v4.0.0 |

## 核心难点 ##

```
//改变地图中心点
self.mapView.centerCoordinate = CLLocationCoordinate2DMake(self.latitude, self.longitude);

```
