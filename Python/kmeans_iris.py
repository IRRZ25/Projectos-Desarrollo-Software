import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.datasets import load_iris
from sklearn.cluster import KMeans

# ----------------------------------------------------
# 1. Carga de Datos
# ----------------------------------------------------

# Cargar el dataset Iris directamente desde scikit-learn
iris = load_iris()
df = pd.DataFrame(iris.data, columns=iris.feature_names)
# Asignamos la columna de especies para exploración, aunque K-means es no supervisado
df['species_original'] = iris.target_names[iris.target]
X = df.drop('species_original', axis=1).values # Datos de características para K-means

print("Dataset cargado y primeras 5 filas:")
print(df.head())
print("\n----------------------------------------------------")


# ----------------------------------------------------
# Ejercicio 1: Exploración de Datos Aislados (Outliers)
# ----------------------------------------------------

print("Ejercicio 1: Búsqueda de Datos Aislados (Outliers)")
print("Visualización usando Diagramas de Caja y Bigotes (Box Plot):")

# Crear el Box Plot para todas las características
plt.figure(figsize=(10, 6))
# Excluimos la columna 'species_original' para el gráfico
sns.boxplot(data=df.drop('species_original', axis=1)) 
plt.title('Detección de Datos Aislados (Outliers) - Box Plot')
plt.show() # Muestra el primer gráfico

# Nota: Los puntos fuera de los bigotes son los outliers.
print("\n----------------------------------------------------")


# ----------------------------------------------------
# Ejercicio 2: Método Determinista para el Valor de K (Elbow Method)
# ----------------------------------------------------

print("Ejercicio 2: Determinación del valor óptimo de K (Método del Codo)")

wcss = [] # Lista para almacenar la Suma de Cuadrados Dentro del Cluster (WCSS)

# Probamos K desde 1 hasta 10
for i in range(1, 11):
    # n_init=10 indica que correrá el algoritmo 10 veces con inicializaciones aleatorias diferentes
    kmeans = KMeans(n_clusters=i, init='k-means++', max_iter=300, n_init=10, random_state=42)
    kmeans.fit(X)
    wcss.append(kmeans.inertia_) # .inertia_ es la WCSS

# Gráfico del Método del Codo
plt.figure(figsize=(8, 6))
plt.plot(range(1, 11), wcss, marker='o', linestyle='--')
plt.title('Método del Codo para el K Óptimo')
plt.xlabel('Número de Clusters (K)')
plt.ylabel('WCSS (Suma de Cuadrados)')
plt.grid(True)
plt.show() # Muestra el segundo gráfico

# Interpretación: El punto de inflexión ("codo") suele ser K=3 para el dataset Iris.
optimal_k = 3
print(f"Valor de K óptimo determinado (visual): K = {optimal_k}")
print("\n----------------------------------------------------")


# ----------------------------------------------------
# Ejercicio 3: Resultado del Algoritmo de Segmentación (Diagrama de Dispersión)
# ----------------------------------------------------

print(f"Ejercicio 3: Aplicación de K-means con K={optimal_k} y Diagrama de Dispersión")

# Aplicar K-means con el K óptimo
kmeans = KMeans(n_clusters=optimal_k, init='k-means++', max_iter=300, n_init=10, random_state=42)
# fit_predict entrena el modelo y predice los clusters
y_kmeans = kmeans.fit_predict(X)

# Añadir los clusters predichos al DataFrame
df['cluster_kmeans'] = y_kmeans

# Diagrama de Dispersión: Usaremos las características 'petal length (cm)' y 'petal width (cm)' 
# porque suelen mostrar la mejor separación de clusters en este dataset.
plt.figure(figsize=(10, 7))

sns.scatterplot(
    x=df['petal length (cm)'],
    y=df['petal width (cm)'],
    hue=df['cluster_kmeans'], # Colorea los puntos según el cluster asignado
    palette='viridis', 
    s=100,
    style=df['cluster_kmeans']
)

# Marcar los Centroides (el centro de cada cluster)
plt.scatter(kmeans.cluster_centers_[:, 2], # Corresponde a 'petal length (cm)' (índice 2)
            kmeans.cluster_centers_[:, 3], # Corresponde a 'petal width (cm)' (índice 3)
            s=300, 
            c='red', 
            marker='X', 
            label='Centroides'
)

plt.title(f'Segmentación K-means (K={optimal_k}) del Dataset Iris')
plt.xlabel('Largo del Pétalo (cm)')
plt.ylabel('Ancho del Pétalo (cm)')
plt.legend()
plt.show() # Muestra el tercer gráfico

print("\nAnálisis final: El diagrama de dispersión muestra 3 clusters claramente separados.")
