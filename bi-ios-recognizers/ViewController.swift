//
//  ViewController.swift
//  bi-ios-recognizers
//
//  Created by Dominik Vesely on 03/11/15.
//  Copyright © 2015 Ackee s.r.o. All rights reserved.
//

import UIKit

class ViewController: UIViewController,PanelViewDelegate {
    
    
    weak var graphView : GraphView!
    weak var panelView : PanelView!
    
    
    override func loadView() {
        self.view = UIView()
        view.backgroundColor = .whiteColor()
        
        let gv = GraphView(frame: CGRectZero)
        gv.autoresizingMask = UIViewAutoresizing.FlexibleWidth;

        self.view.addSubview(gv)
        self.graphView = gv
        
        
        let pv = PanelView(frame: CGRectZero)
        pv.autoresizingMask = UIViewAutoresizing.FlexibleWidth;
        pv.delegate = self
        
        view.addSubview(pv)
        self.panelView = pv
        
    }
    
    
    //MARK: PanelViewDelegate
    func sliderDidChange(slider: UISlider, panel: PanelView) {
        self.graphView.amplitude = CGFloat(slider.value);

    }
    
    func stepperDidChange(stepper: UIStepper, panel: PanelView) {
        self.graphView.amplitude = CGFloat(stepper.value);

    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.graphView.frame = CGRectMake(8, 20 + 8, CGRectGetWidth(self.view.bounds) - 16, 200);
        self.panelView.frame = CGRectMake(8, 20 + 16 + 200, CGRectGetWidth(self.view.bounds) - 16, 128);


    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

