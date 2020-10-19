//
//  SDKSettingsStorage.swift
//  RushSDK
//
//  Created by Andrey Chernyshev on 09.10.2020.
//

import UIKit

public final class SDKStorage {
    public static let shared = SDKStorage()
    
    private init() {}
    
    // MARK: Variables
    var backendBaseUrl: String?
    var backendApiKey: String?
    var amplitudeApiKey: String?
    var facebookActive: Bool = false
    var branchActive: Bool = false 
    var applicationTag: String?
    var userToken: String?
    var userId: Int?
    var view: Weak<UIView>?
    var isTest: Bool = false
    
    // MARK: Dependencies
    public var restApiTransport: RestAPITransport {
        RestAPITransport()
    }
    public var iapManager: IAPManager {
        isTest ? IAPManagerMock() : IAPManagerCore()
    }
    public var iapMediator: SDKIAPMediator {
        SDKIAPMediator.shared
    }
    public var purchaseManager: PurchaseManager {
        isTest ? PurchaseManagerMock() : PurchaseManagerCore()
    }
    public var purchaseMediator: SDKPurchaseMediator {
        SDKPurchaseMediator.shared
    }
    public var featureAppMediator: FeatureAppMediator {
        FeatureAppMediator.shared
    }
    public var amplitudeManager: AmplitudeManager {
        AmplitudeManagerCore.shared
    }
    var abTestsManager: ABTestsManager {
        isTest ? ABTestsManagerMock() : ABTestsManagerCore()
    }
    var facebookManager: FacebookManager {
        FacebookManagerCore.shared
    }
    var branchManager: BranchManager {
        BranchManagerCore.shared
    }
    var adAttributionDetails: ADAttributionDetails {
        ADAttributionDetails()
    }
    var adAttributionsManager: ADAttributionsManager {
        ADAttributionsManagerCore.shared
    }
    var registerInstallManager: RegisterInstallManager {
        RegisterInstallManagerCore()
    }
    
    // MARK: Computed
    public var applicationAnonymousID: String {
        ApplicationAnonymousID.anonymousID
    }
    public var abTestsOutput: ABTestsOutput? {
        abTestsManager.getCachedTests()
    }
    var isFirstLaunch: Bool {
        SDKNumberLaunches().isFirstLaunch()
    }
}
