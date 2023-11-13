import numpy as np
import pandas as pd
import statsmodels.api as sm

# Datos del cuadrado latino
data = pd.DataFrame({
    "Conducción": np.repeat(["Joven", "Adulto", "Mayor", "Muy mayor"], 4),
    "Marca": np.tile(["Seat", "Ford", "Renault", "Kia"], 4),
    "Aditivo": np.tile(["M1", "M2", "M3", "M4"], 4),
    "Emisiones": [21, 26, 20, 25, 23, 26, 20, 27, 15, 13, 16, 16, 17, 15, 20, 20]
})

# Convertir variables categóricas en variables dummy
data = pd.get_dummies(data, columns=["Conducción", "Marca", "Aditivo"], drop_first=True)

# Análisis de la varianza
model = sm.OLS(data["Emisiones"], sm.add_constant(data.drop("Emisiones", axis=1)))
results = model.fit()

# Resumen del análisis de la varianza
print(results.summary())
