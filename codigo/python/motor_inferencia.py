"""Motor de inferencia por encadenamiento hacia adelante.

Este ejemplo no reemplaza a CLIPS; sirve para estudiar el mismo concepto en
Python sin depender de herramientas externas. Parte de hechos iniciales y aplica
reglas hasta que no se puedan derivar hechos nuevos.
"""

from __future__ import annotations

from dataclasses import dataclass


@dataclass(frozen=True)
class Regla:
    nombre: str
    condiciones: frozenset[str]
    conclusion: str

    def puede_disparar(self, hechos: set[str]) -> bool:
        return self.condiciones.issubset(hechos) and self.conclusion not in hechos


def encadenamiento_adelante(hechos_iniciales: set[str], reglas: list[Regla]) -> tuple[set[str], list[str]]:
    """Aplica reglas hasta alcanzar un punto fijo."""
    hechos = set(hechos_iniciales)
    traza: list[str] = []
    cambio = True

    while cambio:
        cambio = False
        for regla in reglas:
            if regla.puede_disparar(hechos):
                hechos.add(regla.conclusion)
                traza.append(f"{regla.nombre}: {sorted(regla.condiciones)} -> {regla.conclusion}")
                cambio = True

    return hechos, traza


def ejemplo_letras() -> tuple[set[str], list[str]]:
    """Replica el ejemplo CLIPS de reglas con letras H y K."""
    hechos = {"H", "K"}
    reglas = [
        Regla("Letras-H", frozenset({"H"}), "A"),
        Regla("Letras-A", frozenset({"A"}), "E"),
        Regla("Letras-EK", frozenset({"E", "K"}), "B"),
        Regla("Letras-B", frozenset({"B"}), "D"),
        Regla("Letras-DEK", frozenset({"D", "E", "K"}), "C"),
        Regla("Letras-EG", frozenset({"E", "G"}), "C"),
        Regla("Letras-GKF", frozenset({"G", "K", "F"}), "A"),
    ]
    return encadenamiento_adelante(hechos, reglas)


if __name__ == "__main__":
    hechos_finales, traza = ejemplo_letras()
    print("Traza de inferencia:")
    for paso in traza:
        print(f"- {paso}")
    print(f"Hechos finales: {sorted(hechos_finales)}")
