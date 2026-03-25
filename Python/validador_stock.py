# Proyecto: Validación básica de inventario
# Autor: Irvin Romero
# Descripción:
# Este script simula un pequeño inventario de productos.
# Permite identificar productos con bajo stock y calcular el valor total.

# Lista de productos (simulación sencilla)
productos = [
    {"nombre": "Air Max 90", "stock": 5, "precio": 100},
    {"nombre": "Air Force 1", "stock": 12, "precio": 90},
    {"nombre": "Air Jordan", "stock": 3, "precio": 150}
]

def verificar_stock(lista_productos):
    """
    Revisa qué productos tienen stock bajo (menos de 10 unidades).
    """
    print("Verificación de stock:\n")
    
    for producto in lista_productos:
        if producto["stock"] < 10:
            print(f"Stock bajo: {producto['nombre']} ({producto['stock']} unidades)")

def calcular_valor_total(lista_productos):
    """
    Calcula el valor total del inventario.
    """
    total = 0
    for producto in lista_productos:
        total += producto["stock"] * producto["precio"]
    return total

# Ejecución del programa
verificar_stock(productos)

valor_total = calcular_valor_total(productos)
print(f"\nValor total del inventario: ${valor_total}")
