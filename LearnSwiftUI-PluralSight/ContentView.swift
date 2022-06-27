//
//  ContentView.swift
//  LearnSwiftUI-PluralSight
//
//  Created by Salma Hassan on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		NavigationView {
			VStack(alignment: .leading) {
				ImageCard()
				Divider()
				QualityCard()
				Divider()
				PunchListCard()
				Divider()
				BudgetCard()
			}
			.padding()
			.navigationTitle(Text("Front Lobby"))
		}
    }
}

struct ImageCard: View {
	var body: some View {
		Image("headerImage")
			.resizable()
			.scaledToFit()
			.frame(width: 360)
			.cornerRadius(10)
			.shadow(radius: 20)
			.overlay(alignment: .bottom, content: {
				Text("Flagged for review")
					.foregroundColor(.white)
					.padding(5)
					.background(Color.black.opacity(0.7))
			})
			.overlay {
				RoundedRectangle(cornerRadius: 10)
					.stroke(Color.white, lineWidth: 5)
			}
			.overlay {
				ProgressCard()
					.padding(15)
					.background(Color.white.opacity(0.8))
					.cornerRadius(5)
					.padding(15)
					
			}
	}
}

struct ProgressCard: View {
	var body: some View {
		VStack {
			HStack {
				ProgressView(value: 0.6)
				Text("60% Complete")
			}
			Text("Due on Sunday, August 1, 2021")
		}
	}
}

struct QualityCard: View {
	var body: some View {
		VStack(alignment: .leading) {
			Text("Work Quality")
				.font(.headline)
				.foregroundColor(.blue)
			HStack {
				Image(systemName: "star.fill")
				Image(systemName: "star.fill")
				Image(systemName: "star.fill")
				Image(systemName: "star")
			}.foregroundColor(.yellow)
		}
		.padding(10)
	}
}

struct PunchListCard: View {
	var body: some View {
		VStack(alignment: .leading) {
			Text("Punch List")
				.font(.headline)
				.foregroundColor(.blue)
			VStack(alignment: .leading) {
				Label("Remodel Front Desk with Label", systemImage: "checkmark.circle")
				HStack(alignment: .top) {
					Image(systemName: "checkmark.circle")
					Text("Remodel Front Desk with Text and Image")
				}
				HStack {
					Image(systemName: "checkmark.circle")
					Text("Retile Entry")
				}
			}
		}
		.padding(10)
	}
}

struct BudgetCard: View {
	var body: some View {
		VStack(alignment: .leading) {
			Text("Budget")
				.font(.headline)
				.foregroundColor(.blue)
			VStack(alignment: .leading) {
				HStack {
					Image(systemName: "checkmark.circle.fill")
						.foregroundColor(.green)
					Text("On Budget")
				}
				HStack {
					Text("Amount Allocated:")
					Spacer()
					Text("$15,000")
				}
				HStack {
					Text("Spent to date:")
					Spacer()
					Text("$8,350")
						.underline()
				}
				HStack {
					Text("Amount Remaining:")
						.fontWeight(.bold)
					Spacer()
					Text("$6,650")
						.fontWeight(.bold)
				}
			}
		}
		.padding(10)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
