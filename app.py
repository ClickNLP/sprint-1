
import pkg_resources
from tabulate import tabulate

dists = [list(str(d).split(" ", 2)) for d in pkg_resources.working_set]

print(tabulate(dists, headers=['Library Name', 'Version']))
