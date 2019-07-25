# BottomSliderMenu
On button click show slider menu or setting view from bottom of the view



Steps

1. Add these two files in your project
 -> SliderMenu.swift
 -> SliderMenuCell.swift
 
 2. Inside your viewdidload method of viewcontroller file add this method
 -> setupNaBar()
 
 3. Add this code snippet in your viewcontroller file
 
 
 
 ->     let sliderMenu: SliderMenu = {
        let sm = SliderMenu()
        return sm
       }()
       
       
       

  4. Inside your button click mehtod add this line
  
  
  
  -> sliderMenu.showSliderMenu()
