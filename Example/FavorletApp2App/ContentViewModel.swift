//
//  ContentViewModel.swift
//  FavorletApp2App_Example
//
//  Created by evahpirazzi on 2022/12/08.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import FavorletApp2App

class ContentViewModel: ObservableObject {
    
    private let requestConnectWalletUseCase = RequestConnectWalletUseCase()
    private let requestSignMessageUseCase = RequestSignMessageUseCase()
    private 
    
    
    @Published var app2appRequestId: String = ""
    @Published var connectedAddress: String = ""
    @Published var signatureHash: String = ""
    @Published var resultSendCoin: String = ""
    @Published var resultExecuteContract: String = ""
    
    @Published var isProgress: Bool = false
    @Published var isConnectedWallet: Bool = false
    
    
    private var blockChainApp = App2AppBlockChainApp(
        name: "App2App Example",
        successAppLink: nil,
        failAppLink: nil
    )
    
    
    
    func requestConnectWallet(chainId: String) {
        Task {
            do {
                await MainActor.run { self.isProgress = true }
                
                let response = try await app2AppRepository.requestConnectWallet(
                    request: App2AppConnectWalletRequest(
                        action: "connectWallet",
                        chainId: Int(chainId) ?? 0,
                        blockChainApp: self.blockChainApp
                    )
                )
                await MainActor.run {
                    self.isProgress = false
                    self.app2appRequestId = response.requestId ?? ""
                }
            } catch {
                await MainActor.run { self.isProgress = false }
            }
        }
        
    }
    
    
    func requestSignMessage(chainId: String, message: String) {
        Task {
            do {
                await MainActor.run { self.isProgress = true }
                
                let response = try await app2AppRepository.requestSignMessage(
                    request: App2AppSignMessageRequest(
                        action: "signMessage",
                        chainId: Int(chainId) ?? 0,
                        blockChainApp: self.blockChainApp,
                        signMessage: App2AppSignMessage(
                            from: connectedAddress,
                            value: message
                        )
                    )
                )
                await MainActor.run {
                    self.isProgress = false
                    self.app2appRequestId = response.requestId ?? ""
                }
            } catch {
                await MainActor.run { self.isProgress = false }
            }
        }
    }
    
    
    func requestSendCoin(chainId: String, toAddress: String, amount: String) {
        Task {
            do {
                await MainActor.run { self.isProgress = true }
            
                let response = try await app2AppRepository.requestSendCoin(
                    request: App2AppSendCoinRequest(
                        action: "sendCoin",
                        chainId: Int(chainId) ?? 0,
                        blockChainApp: self.blockChainApp,
                        transactions: [
                            App2AppTransaction(
                                from: self.connectedAddress,
                                to: toAddress,
                                value: amount
                            )
                        ]
                    )
                )
                await MainActor.run {
                    self.isProgress = false
                    self.app2appRequestId = response.requestId ?? ""
                }
            } catch {
                await MainActor.run { self.isProgress = false }
            }
        }
    }
    
    
    func requestExecuteContract(
        chainId: String,
        contractAddress: String,
        abi: String,
        params: String,
        value: String,
        functionName: String
    ) {
        Task {
            do {
                await MainActor.run { self.isProgress = true }
                
                let response = try await app2AppRepository.requestExecuteContract(
                    request: App2AppExecuteContractRequest(
                        action: "executeContract",
                        chainId: Int(chainId) ?? 0,
                        blockChainApp: self.blockChainApp,
                        transactions: [
                            App2AppTransaction(
                                from: self.connectedAddress,
                                to: contractAddress,
                                value: value,
                                abi: abi,
                                params: params,
                                functionName: functionName
                            )
                        ]
                    )
                )
                await MainActor.run {
                    self.isProgress = false
                    self.app2appRequestId = response.requestId ?? ""
                }
            } catch {
                await MainActor.run { self.isProgress = false }
            }
        }
    }
    
    
    
    func requestReceipt() {
        guard app2appRequestId != "" else {
            print("Receipt 요청 취소")
            return
        }
        Task {
            do {
                print("Receipt 요청 !")
                await MainActor.run { self.isProgress = true }
                
                let response = try await app2AppRepository.requestReceipt(requestId: app2appRequestId)
                
                await MainActor.run {
                    self.isProgress = false
                    app2appRequestId = ""
                    
                    switch response.action {
                        case "connectWallet":
                            connectedAddress = response.connectWallet?.address ?? ""
                            isConnectedWallet = (connectedAddress != "")
                        case "signMessage":
                            signatureHash = response.signMessage?.signature ?? ""
                        case "sendCoin":
                            resultSendCoin = response.transactions?.first?.status ?? ""
                        case "executeContract":
                            resultExecuteContract = response.transactions?.first?.status ?? ""
                        default:
                            isProgress = false
                    }
                }
            } catch {
                await MainActor.run { self.isProgress = false }
            }
        }
    }
    
}
