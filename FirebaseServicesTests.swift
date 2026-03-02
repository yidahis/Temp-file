
import XCTest
@testable import FirebaseServices

final class FirebaseServicesTests: XCTestCase {

    // MARK: - TMX Tests

    func testTMXTimeout() {
        let reason = FirebaseReason.tmx_timeout
        XCTAssertEqual(reason.reason, "tmx profile timeout")
    }

    func testTMXProfileError() {
        let reason = FirebaseReason.tmx_profile_error
        XCTAssertEqual(reason.reason, "tmx profile error")
    }

    func testTMXProfileErrorWithReason() {
        let reason = FirebaseReason.tmx_profile_error_reason("network failed")
        XCTAssertEqual(reason.reason, "tmx profile error with reason network failed")
    }

    // MARK: - Network Tests

    func testNoInternet() {
        let reason = FirebaseReason.no_internet("wifi disconnected")
        XCTAssertEqual(reason.reason, "no internet error with reason wifi disconnected")
    }

    // MARK: - Inbox Tests

    func testInboxError() {
        let reason = FirebaseReason.inbox_error("registration failed")
        XCTAssertEqual(reason.reason, "inbox register error isregistration failed")
    }

    // MARK: - Apple Wallet Tests

    func testAppleWalletSystemCancelled() {
        let reason = FirebaseReason.apple_wallet_system_cancelled
        XCTAssertEqual(reason.reason, "apple wallet system cancelled")
    }

    func testAppleWalletUserCancelled() {
        let reason = FirebaseReason.apple_wallet_user_cancelled
        XCTAssertEqual(reason.reason, "apple wallet user cancelled")
    }

    func testAppleWalletErrorReason() {
        let reason = FirebaseReason.apple_wallet_error_reason("invalid card")
        XCTAssertEqual(reason.reason, "apple wallet error with reason invalid card")
    }

    func testAppleWalletStart() {
        let reason = FirebaseReason.apple_wallet_start("initiating")
        XCTAssertEqual(reason.reason, "apple wallet start initiating")
    }

    func testAppleWalletAddSuccess() {
        let reason = FirebaseReason.apple_wallet_add_success
        XCTAssertEqual(reason.reason, "apple wallet add success")
    }

    func testAppleWalletCardStatus() {
        let reason = FirebaseReason.apple_wallet_card_status(1)
        XCTAssertEqual(reason.reason, "apple wallet card status 1")
    }

    func testAppleWalletRemotePass() {
        let reason = FirebaseReason.apple_wallet_remote_pass(200)
        XCTAssertEqual(reason.reason, "apple wallet remote pass 200")
    }

    func testAppleWalletActivationData() {
        let reason = FirebaseReason.apple_wallet_activation_data("encrypted-data")
        XCTAssertEqual(reason.reason, "apple wallet activation data encrypted-data")
    }

    func testAppleWalletEphemeralKey() {
        let reason = FirebaseReason.apple_wallet_ephimeral_key("key-value")
        XCTAssertEqual(reason.reason, "apple wallet ephimeral key key-value")
    }

    func testAppleWalletEncryptedPassData() {
        let reason = FirebaseReason.apple_wallet_encrypted_pass_data("pass-data")
        XCTAssertEqual(reason.reason, "apple wallet encrypted pass data pass-data")
    }

    func testAppleWalletErrorCode() {
        let reason = FirebaseReason.apple_wallet_error_code(404)
        XCTAssertEqual(reason.reason, "apple wallet error code 404")
    }

    func testAppleWalletDataFromApple() {
        let reason = FirebaseReason.apple_wallet_data_from_apple("certificate")
        XCTAssertEqual(reason.reason, "apple wallet cert from applecertificate")
    }

    // MARK: - Biometric Tests

    func testBiometricError() {
        let reason = FirebaseReason.biometricError("face id failed")
        XCTAssertEqual(reason.reason, "biometric error with reason: face id failed")
    }

    func testBiometricMigrationError() {
        let reason = FirebaseReason.biometricMigrationError("migration failed")
        XCTAssertEqual(reason.reason, "biometric migration failed with reason: migration failed")
    }

    // MARK: - Keychain Tests

    func testClearKeyChain() {
        let reason = FirebaseReason.clearKeyChain("user logged out")
        XCTAssertEqual(reason.reason, "clearKeyChain with reason: user logged out")
    }

    // MARK: - Notification Tests

    func testNotificationNotDetermined() {
        let reason = FirebaseReason.notification_notDetermined
        XCTAssertEqual(reason.reason, "notification is not determined when inbox is enabled or mobile key is registered")
    }

    // MARK: - Softtoken Tests

    func testSofttokenError() {
        let reason = FirebaseReason.softtokenError("token expired")
        XCTAssertEqual(reason.reason, "Softtoken with reason: token expired")
    }

    // MARK: - Remote Config Tests

    func testRemoteConfigError() {
        let reason = FirebaseReason.remoteConfigError("fetch failed")
        XCTAssertEqual(reason.reason, "Remote Config with reason: fetch failed")
    }

    // MARK: - Device ID Tests

    func testDeviceId() {
        let reason = FirebaseReason.deviceId("invalid identifier")
        XCTAssertEqual(reason.reason, "deviceId error with reason: invalid identifier")
    }

    // MARK: - Product Detail Tests

    func testProductDetailError() {
        let reason = FirebaseReason.productDetailError("parse error")
        XCTAssertEqual(reason.reason, "product detail crash with reason: parse error")
    }

    // MARK: - TNC Tests

    func testTNCLoadError() {
        let reason = FirebaseReason.tncLoadError("network timeout")
        XCTAssertEqual(reason.reason, "tnc load failed with reason: network timeout")
    }
}
