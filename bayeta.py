import random


def frotar(n_frases: int = 1) -> list:
    frases = []

    with open("frases.txt", "r", encoding="utf-8") as f:
        frases_disponibles = [line.strip() for line in f if line.strip()]

    for _ in range(n_frases):
        frases.append(random.choice(frases_disponibles))

    return frases
origin/experto_python_real
