//
//  Contacto.swift.swift
//  uas_fim_isv_dmn_rvyld
//
//  Created by Grupo Araysa on 22/10/26.
//

import Foundation

struct Contacto: Identifiable {
    let id: Int
    let nombre: String
    let telefono: String
}

// Función para simular datos de prueba
func obtenerContactosDummy() -> [Contacto] {
    return [
        Contacto(id: 1, nombre: "Ana García", telefono: "555-1001"),
        Contacto(id: 2, nombre: "Luis Pérez", telefono: "555-1002"),
        Contacto(id: 3, nombre: "María López", telefono: "555-1003"),
        Contacto(id: 4, nombre: "Carlos Ramírez", telefono: "555-1004"),
        Contacto(id: 5, nombre: "Sofía Torres", telefono: "555-1005"),
        Contacto(id: 6, nombre: "Jorge Medina", telefono: "555-1006"),
        Contacto(id: 7, nombre: "Laura Salazar", telefono: "555-1007"),
        Contacto(id: 8, nombre: "Pedro Castillo", telefono: "555-1008"),
        Contacto(id: 9, nombre: "Elena Rojas", telefono: "555-1009"),
        Contacto(id: 10, nombre: "Diego Castro", telefono: "555-1010"),
        Contacto(id: 11, nombre: "Valeria Silva", telefono: "555-1011"),
        Contacto(id: 12, nombre: "Ricardo Soto", telefono: "555-1012")
    ]
}
