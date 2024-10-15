from cryptography.fernet import Fernet

# Genera una nueva clave
clave = Fernet.generate_key()

# Imprime la clave para que la copies y la guardes
print(clave.decode())  # Esto imprime la clave como una cadena
