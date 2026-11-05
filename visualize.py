import pandas as pd 
import matplotlib.pyplot as plt

df = pd.read_csv("category_breakdown.csv") # load sql output
df["share"] = df["total_amount"] / df["total_amount"].sum() * 100 # compute shares from total amount; chart remains consisten
labels = [f"{name} ({share:.1f}%)" for name, share in zip(df["category_name"], df["share"])] # build legend

fig, ax = plt.subplots(figsize = (8,6))
wedges, _ = ax.pie(
    df["total_amount"],
    startangle=90,
    counterclock=False,
    wedgeprops={"edgecolor": "white", "linewidth":1.5},
)
ax.legend(wedges, labels, title="Category", loc="center left", bbox_to_anchor=(1,0.5))
ax.set_title("Category Breakdown")

plt.tight_layout()
plt.savefig("piechart.png", dpi=150, bbox_inches="tight")
plt.show()