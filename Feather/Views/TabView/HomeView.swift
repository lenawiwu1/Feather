//  HomeView.swift
//  Feather
//  Erstellt am 14.09.2025

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                // Logo
                Image(uiImage: UIImage(named: "IMG_4770.png") ?? UIImage())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 32, style: .continuous))
                    .shadow(color: .accentColor.opacity(0.2), radius: 12, x: 0, y: 8)

                Text("Willkommen!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 8)

                Text("Folge meinen Channels und bleibe immer auf dem neuesten Stand!")
                    .font(.title3)
                    .foregroundColor(.secondary)

                VStack(spacing: 20) {
                    Button(action: {
                        if let url = URL(string: "https://t.me/+nGrImip86xZmODYy") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        HStack(spacing: 16) {
                            Image(systemName: "paperplane.circle.fill")
                                .resizable()
                                .frame(width: 36, height: 36)
                                .foregroundColor(.blue)
                            Text("Telegram Channel")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(16)
                        .shadow(color: .blue.opacity(0.2), radius: 8, x: 0, y: 4)
                    }

                    Button(action: {
                        if let url = URL(string: "https://www.instagram.com/aland1762?igsh=cnl1ZGQ4MnJ6anp2&utm_source=ig_contact_invite") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        HStack(spacing: 16) {
                            Image(systemName: "camera.circle.fill")
                                .resizable()
                                .frame(width: 36, height: 36)
                                .foregroundColor(.pink)
                            Text("Instagram")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.orange]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(16)
                        .shadow(color: .pink.opacity(0.2), radius: 8, x: 0, y: 4)
                    }
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

// Vorschau
#Preview {
    HomeView()
}
