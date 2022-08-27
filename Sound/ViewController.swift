//
//  ViewController.swift
//  Sound
//
//  Created by 日暮駿之介 on 2022/08/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    //ドラムを表示する箱を作る
    @IBOutlet var drumButton:UIButton!
    
    //ピアノを表示する箱を作る
    @IBOutlet var pianoButton:UIButton!
    
    //ギターを表示する箱を作る
    @IBOutlet var guitarButton:UIButton!
    
    //ドラムのサウンドファイルを読み込んで、プレイヤーを作る
    let drumSoundPlayer = try!AVAudioPlayer(data:NSDataAsset(name:"drumSound")!.data)
    
    //ピアノのサウンドファイルを読み込んで、プレイヤーを作る
    let pianoSoundPlayer = try!AVAudioPlayer(data:NSDataAsset(name:"pianoSound")!.data)
    
    //ギターのサウンドファイルを読み込んで、プレイヤーを作る
    let guitarSoundPlayer = try!AVAudioPlayer(data:NSDataAsset(name:"guitarSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //ドラムのタップが始まったときに呼ばれる
    @IBAction func tapDownDrumButton(){
        //ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named:"drumPlayingImage"),for:.normal)
        
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime=0
        
        //ドラムの音を再生する
        drumSoundPlayer.play()
        
    }
    
    //ドラムボタンの上でタッチが終えた後ときに呼ばれる
    @IBAction func touchUpDrumButton(){
        
        //ドラムが鳴っていない画像に切り替える
        drumButton.setImage(UIImage(named:"drumImage"),for:.normal)
    }
    
    //ピアノがタッチが始まったときに呼ばれる
    @IBAction func touchDownPianoButton(){
        //ピアノが鳴っている画像に切り替える
        pianoButton.setImage(UIImage(named:"pianoPlayingImage"),for:.normal)
        
        //ピアノの音を巻き戻す
        pianoSoundPlayer.currentTime=0
        
        //ピアノの音を再生する
        pianoSoundPlayer.play()
        
    }
    
    //ピアノボタンの上でタッチが終えた後ときに呼ばれる
    @IBAction func touchUpPianoButton(){
        
        //ドラムが鳴っていない画像に切り替える
        pianoButton.setImage(UIImage(named:"pianoImage"),for:.normal)
    }
    
    //ギターがタッチが始まったときに呼ばれる
    @IBAction func touchDownGuitarButton(){
        //ギターが鳴っている画像に切り替える
        guitarButton.setImage(UIImage(named:"guitarPlayingImage"),for:.normal)
        
        //ギターの音を巻き戻す
        guitarSoundPlayer.currentTime=0
        
        //ギターの音を再生する
        guitarSoundPlayer.play()
        
    }
    
    //ギターボタンの上でタッチが終えた後ときに呼ばれる
    @IBAction func touchUpGuitarButton(){
        
        //ギターが鳴っていない画像に切り替える
        guitarButton.setImage(UIImage(named:"guitarImage"),for:.normal)
    }


}

