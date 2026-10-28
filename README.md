# Azure Base Network Infrastructure (Terraform Lab)

Ez a projekt egy alapvető Azure hálózati infrastruktúrát hoz létre és kezel Infrastructure as Code (IaC) megközelítéssel, Terraform segítségével. 

A projekt célja az Azure erőforrások deklaratív kezelésének gyakorlása, a hibaelhárítási folyamatok (pl. régiós kapacitáskorlátok kezelése) megértése és a tiszta Terraform struktúra kialakítása.

---

## 🏗️ Architektúra

A Terraform kód az alábbi erőforrásokat definiálja:
* **Resource Group:** `rg-halozat-lab` (Észak-Európa régióban)
* **Virtual Network (VNet):** `vnet-hub-core`
  * Address Space: `10.0.0.0/16`

---

## 🛠️ Használt technológiák & Eszközök

* **Cloud Provider:** Microsoft Azure (`azurerm` provider)
* **IaC:** Terraform v1.x+
* **CLI & Auth:** Azure CLI (`az login` és MFA workflow)
* **IDE:** Visual Studio Code

---

## 📁 Projektstruktúra

```text
.
├── main.tf              # Az Azure erőforrások (Resource Group, VNet) definíciója
├── variables.tf         # Változók (régió, elnevezések, IP tartományok)
├── providers.tf         # Terraform és AzureRM provider beállítások
└── .terraform.lock.hcl  # Provider verzió rögzítése
