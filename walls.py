import ifcopenshell.util.element
import pprint as pp



data = ifcopenshell.open("231110AC-11-Smiley-West-04-07-2007.ifc")
walls = data.by_type("IfcWall")
print(f'Count of walls:  {len(walls)}')
