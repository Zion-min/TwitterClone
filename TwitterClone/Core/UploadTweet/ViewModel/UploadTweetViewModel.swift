//
//  UploadTweetViewModel.swift
//  TwitterClone
//
//  Created by 민시온 on 2023/05/16.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweeet = false
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption) { success in
            if success {
                //dismiss view
                self.didUploadTweeet = true
            } else {
                //show error
            }
        }
    }
}
