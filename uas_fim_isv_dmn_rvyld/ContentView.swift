//
//  ContentView.swift
//  uas_fim_isv_dmn_rvyld
//
//  Created by Grupo Araysa on 22/10/26.
//

import SwiftUI

struct ContentView: View {
    let contactos = obtenerContactosDummy()
    @State private var contactoSeleccionado: Contacto? = nil
    @State private var mostrarAlerta = false

    var body: some View {
        NavigationStack {
            List(contactos) { contacto in
                ContactoItem(contacto: contacto)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        contactoSeleccionado = contacto
                        mostrarAlerta = true
                    }
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Contactos")
            .alert(isPresented: $mostrarAlerta) {
                Alert(
                    title: Text("Contacto Seleccionado"),
                    message: Text("Seleccionaste a \(contactoSeleccionado?.nombre ?? "")"),
                    dismissButton: .default(Text("OK"))
                )
            }
        }
    }
}

struct ContactoItem: View {
    let contacto: Contacto

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(contacto.nombre)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Color(red: 0.08, green: 0.4, blue: 0.75))
            
            Text("Tel: \(contacto.telefono)")
                .font(.system(size: 16))
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(Color(red: 0.89, green: 0.95, blue: 0.99))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
        .padding(.vertical, 4)
    }
}

#Preview {
    ContentView()
}
