//
//  BubbleChartViewController.swift
//  ChartsDemo-iOS
//
//  Created by Jacob Christie on 2017-07-09.
//  Copyright © 2017 jc. All rights reserved.
//

#if canImport(UIKit)
    import UIKit
#endif
import Charts

class BubbleChartViewController: DemoBaseViewController {
    
    @IBOutlet var chartView: BubbleChartView!
    @IBOutlet var sliderX: UISlider!
    @IBOutlet var sliderY: UISlider!
    @IBOutlet var sliderTextX: UITextField!
    @IBOutlet var sliderTextY: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateChartData()

        // Do any additional setup after loading the view.
        self.title = "Hourly Keyboard Activity"
        self.options = [.toggleValues,
                        .toggleIcons,
                        .toggleHighlight,
                        .animateX,
                        .animateY,
                        .animateXY,
                        .saveToGallery,
                        .togglePinchZoom,
                        .toggleAutoScaleMinMax,
                        .toggleData]
        
        chartView.delegate = self
        chartView.animate(xAxisDuration: 3, yAxisDuration: 3)
        
        chartView.chartDescription.enabled = false
        
        chartView.dragEnabled = false
        chartView.setScaleEnabled(true)
        chartView.maxVisibleCount = 200
        chartView.pinchZoomEnabled = true
        
        chartView.legend.horizontalAlignment = .right
        chartView.legend.verticalAlignment = .top
        chartView.legend.orientation = .vertical
        chartView.legend.drawInside = false
        chartView.legend.font = UIFont(name: "HelveticaNeue-Light", size: 10)!
        
//        chartView.leftAxis.labelFont = UIFont(name: "HelveticaNeue-Light", size: 10)!
//        chartView.leftAxis.spaceTop = 0.3
//        chartView.leftAxis.spaceBottom = 0.3
//        chartView.leftAxis.axisMinimum = 0
        
        chartView.leftAxis.enabled = false
        chartView.rightAxis.enabled = false
        
        chartView.xAxis.labelPosition = .bottom
        chartView.xAxis.labelFont = UIFont(name: "HelveticaNeue-Light", size: 10)!
        
//                self.updateChartData()

        
//        sliderX.value = 180
//        sliderY.value = 24
//        slidersValueChanged(nil)
    }
    
    override func updateChartData() {
        if self.shouldHideData {
            chartView.data = nil
            return
        }
        
        self.setDataCount(Int(180), range: UInt32(24))
    }
    
    func setDataCount(_ count: Int, range: UInt32) {
        let yVals1 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(24)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals2 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(23)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals3 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(22)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals4 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(21)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals5 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(20)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals6 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(19)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals7 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(18)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals8 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(17)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals9 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(16)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals10 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(15)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals11 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(14)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals12 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(13)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals13 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(12)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals14 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(11)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals15 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(10)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals16 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(9)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals17 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(8)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals18 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(7)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals19 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(6)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals20 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(5)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals21 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(4)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals22 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(3)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals23 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(2)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size, icon: UIImage(named: "icon"))
        }
        let yVals24 = (0..<count).map { (i) -> BubbleChartDataEntry in
            let val = Double(1)
            let size = CGFloat(arc4random_uniform(range))
            return BubbleChartDataEntry(x: Double(i), y: val, size: size)
        }
        
        let set1 = BubbleChartDataSet(entries: yVals1, label: "12 midnight")
        set1.drawIconsEnabled = false
        set1.setColor(ChartColorTemplates.colorful()[0], alpha: 0.5)
        set1.drawValuesEnabled = true
        
        let set2 = BubbleChartDataSet(entries: yVals2, label: "1 am")
        set2.drawIconsEnabled = false
        set2.iconsOffset = CGPoint(x: 0, y: 15)
        set2.setColor(ChartColorTemplates.colorful()[1], alpha: 0.5)
        set2.drawValuesEnabled = true
        
        let set3 = BubbleChartDataSet(entries: yVals3, label: "2 am")
        set3.setColor(ChartColorTemplates.colorful()[2], alpha: 0.5)
        set3.drawValuesEnabled = true
        
        let set4 = BubbleChartDataSet(entries: yVals4, label: "3 am")
        set4.setColor(ChartColorTemplates.colorful()[3], alpha: 0.5)
        set4.drawValuesEnabled = true
        
        let set5 = BubbleChartDataSet(entries: yVals5, label: "4 am")
        set5.setColor(ChartColorTemplates.colorful()[4], alpha: 0.5)
        set5.drawValuesEnabled = true
        
        let set6 = BubbleChartDataSet(entries: yVals6, label: "5 am")
        set6.setColor(ChartColorTemplates.colorful()[5], alpha: 0.5)
        set6.drawValuesEnabled = true
        
        let set7 = BubbleChartDataSet(entries: yVals7, label: "6 am")
        set7.setColor(ChartColorTemplates.colorful()[6], alpha: 0.5)
        set7.drawValuesEnabled = true
        
        let set8 = BubbleChartDataSet(entries: yVals8, label: "7 am")
        set8.setColor(ChartColorTemplates.colorful()[7], alpha: 0.5)
        set8.drawValuesEnabled = true
        
        let set9 = BubbleChartDataSet(entries: yVals9, label: "8 am")
        set9.setColor(ChartColorTemplates.colorful()[8], alpha: 0.5)
        set9.drawValuesEnabled = true
        
        let set10 = BubbleChartDataSet(entries: yVals10, label: "9 am")
        set10.setColor(ChartColorTemplates.colorful()[9], alpha: 0.5)
        set10.drawValuesEnabled = true
        
        let set11 = BubbleChartDataSet(entries: yVals11, label: "10 am")
        set11.setColor(ChartColorTemplates.colorful()[10], alpha: 0.5)
        set11.drawValuesEnabled = true
        
        let set12 = BubbleChartDataSet(entries: yVals12, label: "11 am")
        set12.setColor(ChartColorTemplates.colorful()[11], alpha: 0.5)
        set12.drawValuesEnabled = true
        
        let set13 = BubbleChartDataSet(entries: yVals13, label: "12 noon")
        set13.setColor(ChartColorTemplates.colorful()[12], alpha: 0.5)
        set13.drawValuesEnabled = true
        
        let set14 = BubbleChartDataSet(entries: yVals14, label: "1 pm")
        set14.setColor(ChartColorTemplates.colorful()[13], alpha: 0.5)
        set14.drawValuesEnabled = true
        
        let set15 = BubbleChartDataSet(entries: yVals15, label: "2 pm")
        set15.setColor(ChartColorTemplates.colorful()[14], alpha: 0.5)
        set15.drawValuesEnabled = true
        
        let set16 = BubbleChartDataSet(entries: yVals16, label: "3 pm")
        set16.setColor(ChartColorTemplates.colorful()[15], alpha: 0.5)
        set16.drawValuesEnabled = true
        
        let set17 = BubbleChartDataSet(entries: yVals17, label: "4 pm")
        set17.setColor(ChartColorTemplates.colorful()[16], alpha: 0.5)
        set17.drawValuesEnabled = true
        
        let set18 = BubbleChartDataSet(entries: yVals18, label: "5 pm")
        set18.setColor(ChartColorTemplates.colorful()[17], alpha: 0.5)
        set18.drawValuesEnabled = true
        
        let set19 = BubbleChartDataSet(entries: yVals19, label: "6 pm")
        set19.setColor(ChartColorTemplates.colorful()[18], alpha: 0.5)
        set19.drawValuesEnabled = true

        
        let set20 = BubbleChartDataSet(entries: yVals20, label: "7 pm")
        set20.setColor(ChartColorTemplates.colorful()[19], alpha: 0.5)
        set20.drawValuesEnabled = true
        
        let set21 = BubbleChartDataSet(entries: yVals21, label: "8 pm")
        set21.setColor(ChartColorTemplates.colorful()[20], alpha: 0.5)
        set21.drawValuesEnabled = true
        
        let set22 = BubbleChartDataSet(entries: yVals22, label: "9 pm")
        set22.setColor(ChartColorTemplates.colorful()[21], alpha: 0.5)
        set22.drawValuesEnabled = true
        
        let set23 = BubbleChartDataSet(entries: yVals23, label: "10 pm")
        set23.setColor(ChartColorTemplates.colorful()[22], alpha: 0.5)
        set23.drawValuesEnabled = true
        
        let set24 = BubbleChartDataSet(entries: yVals24, label: "11 pm")
        set24.setColor(ChartColorTemplates.colorful()[23], alpha: 0.5)
        set24.drawValuesEnabled = true

        let data = [set1, set2, set3, set4, set5, set6, set7, set8, set9, set10, set11, set12, set13, set14, set15, set16, set17, set18, set19, set20, set21, set22, set23, set24] as BubbleChartData
        data.setDrawValues(false)
        data.setValueFont(UIFont(name: "HelveticaNeue-Light", size: 7)!)
        data.setHighlightCircleWidth(1.5)
        data.setValueTextColor(.white)
        
        chartView.data = data
    }
    
    override func optionTapped(_ option: Option) {
        super.handleOption(option, forChartView: chartView)
    }
    
    // MARK: - Actions
//    @IBAction func slidersValueChanged(_ sender: Any?) {
//        sliderTextX.text = "\(Int(sliderX.value))"
//        sliderTextY.text = "\(Int(sliderY.value))"
//
//        self.updateChartData()
//    }
}

extension ClosedRange where Element: Hashable {
    func random(without excluded:[Element]) -> Element {
        let valid = Set(self).subtracting(Set(excluded))
        let random = Int(arc4random_uniform(UInt32(valid.count)))
        return Array(valid)[random]
    }
}
