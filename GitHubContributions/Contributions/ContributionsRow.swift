//
//  ContributionsRow.swift
//  GitHubContributions
//
//  Created by Ander Goig on 24/10/2020.
//

import InterfaceKit
import SwiftUI

struct ContributionsRow: View {
    @ObservedObject var viewModel: ContributionsRowViewModel

    var body: some View {
        ContributionsView(
            rowsCount: ContributionsRowViewModel.rowsCount,
            columnsCount: ContributionsRowViewModel.columnsCount,
            colors: viewModel.contributions.levels.map { $0.map(\.color) },
            topLeadingText: viewModel.username,
            emptyText: NSLocalizedString("contributions-loading", comment: "")
        )
        .frame(height: 136)
        .padding(.vertical, 12)
        .onAppear(perform: viewModel.getContributions)
    }
}
