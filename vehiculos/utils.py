from cryptography.fernet import Fernet

# Generar una clave (solo una vez) y guárdala de forma segura
# clave = Fernet.generate_key() 
# print(clave.decode())  # Esto imprime la clave, guárdala

# Usar la clave que generaste aquí
clave = b'8vY6nv-u9uVwElW8DQWV7VGLbeEPGzP1tFWP7Q4h414='  # Reemplaza esto con tu clave

fernet = Fernet(clave)

def cifrar_id(id):
    # Convierte el ID a bytes y cifra
    id_bytes = str(id).encode()
    id_cifrado = fernet.encrypt(id_bytes)
    return id_cifrado.decode()  # Devuelve el ID cifrado como string

def descifrar_id(id_cifrado):
    # Descifra el ID
    id_bytes = fernet.decrypt(id_cifrado.encode())
    return int(id_bytes.decode())  # Devuelve el ID como entero