/*
 
 MIT License
 
 Copyright (c) 2019 Lucas Hoeft
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 
 */

import UIKit
import LSHContributionView

class ViewController: UIViewController {

    @IBOutlet weak var activityView: LSHContributionView!

    let dataSquare = [
        [0, 1, 2, 3, 4],
        [1, 2, 3, 4, 3],
        [2, 3, 4, 3, 2],
        [3, 4, 3, 2, 1],
        [4, 3, 2, 1, 0]
    ]
    
    let dataActivity = [
        [0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3],
        [0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 1, 0, 0, 4, 0, 0, 2, 1, 3],
        [0, 0, 1, 0, 2, 0, 0, 1, 0, 2, 0, 1, 0, 0, 1, 0, 0, 1, 1, 4],
        [0, 2, 1, 0, 1, 0, 0, 4, 1, 2, 0, 0, 0, 0, 0, 2, 1, 2, 2, 4],
        [0, 2, 2, 0, 0, 0, 0, 3, 2, 1, 0, 0, 0, 0, 0, 2, 0, 0, 2],
        [0, 3, 0, 0, 0, 0, 0, 3, 4, 0, 0, 0, 0, 2, 0, 1, 1, 0, 3],
        [0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3]
    ]
    
    var contributionView = LSHContributionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Interface Builder
        activityView.data = dataActivity
        
        // Code
        contributionView.data = dataSquare
        contributionView.colorScheme = "Halloween"
        view.addSubview(contributionView)
        contributionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 212).isActive = true
        contributionView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        contributionView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        contributionView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        
        self.view.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0) /* #eeeeee */
    }
    
    override func viewDidLayoutSubviews() {
        // Redraw view when orientation changed
        activityView.setNeedsDisplay()
        contributionView.setNeedsDisplay()

    }


}

