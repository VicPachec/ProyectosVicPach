def conversor_de_tiempo(segundos, valor_convertido):
    if segundos < 0:
        print("Error: Los segundos deben de ser en valor positivo.")
        return
    try:
        segundos = float(segundos)
    except ValueError:
        print("Error: Los segundos deben ser en valor numérico.")
        return

    if valor_convertido == 'minutos':
        minutos = segundos / 60
        print(f"{segundos} segundos equivalen a {minutos:.2f} minutos.")
    elif valor_convertido == 'horas':
        horas = segundos / 3600
        print(f"{segundos} segundos equivalen a {horas:.2f} horas.")
    elif valor_convertido == 'días':
        dias = segundos / 86400
        print(f"{segundos} segundos equivalen a {dias:.2f} días.")
    else:
        print("Error: Parámetro no válido. Introducir 'minutos', 'horas' o 'días'.")


# Ejemplo para función
conversor_de_tiempo(0, 'minutos')  # 0 segundos equivalen a 0.00 minutos.
conversor_de_tiempo(60, 'minutos')  # 60 segundos equivalen a 1.00 minutos.
conversor_de_tiempo(120, 'minutos')  # 120 segundos equivalen a 2.00 minutos.