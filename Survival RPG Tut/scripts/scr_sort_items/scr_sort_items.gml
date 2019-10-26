/// scr_sort_items();
// This Script sorts the Inventory by Itemtype
/*
	- Check for lowest ItemType in Inventory
	- Copy first item in inventory to first free
*/
itemsArray = array_create(array_height_2d(inventoryMatrixItems)*array_length_2d(inventoryMatrixItems, 0), "");
ammountItem = array_create(array_height_2d(inventoryMatrixItems)*array_length_2d(inventoryMatrixItems, 0), 0);

// Durchlaufen der Arrays zum zwischenspeichern der Items
for(k = 0; k < array_length_1d(itemsArray); k++){
	// Durchlaufen der reihen des Inventory
	for(i = 0; i < array_height_2d(inventoryMatrixItems); i++){
		// Durchlaufen der Spalten des Inventory
		for(j = 0; j < array_length_2d(inventoryMatrixItems, i); j++){
			for(l = 0; l < k; l++){
				if(itemsArray[k] == "" && itemsArray[l] != inventoryMatrixItems[i,j]){
					itemsArray[k] = inventoryMatrixItems[i,j];
					ammountItem[k] += inventoryMatrixAmmount[i,j];
				}
			}
		}
	}
}

/*
	inventar von links nach rechts, oben nach unten durchlaufen
	mit item k anfangen bis ammountItem[k] = 0; 
	wenn ammountItem[k] >= stacksize
	Ja = ammountItem[k] -= stacksize
	Nein = inventoryMatrixAmmount[i,j] = ammountItem[k] & ammountItem[k] -= ammountItem[k];
*/
for(i = 0; i < array_height_2d(inventoryMatrixItems); i++){
	for(j = 0; j < array_length_2d(inventoryMatrixItems, i); j++){
		inventoryMatrixItems[i,j] = "";
		inventoryMatrixAmmount[i,j] = 0;
	}
}
itemtypes = 0;


	for(i = 0; i < array_height_2d(inventoryMatrixItems); i++){
		for(j = 0; j < array_length_2d(inventoryMatrixItems, i); j++){
			//for(k = 0; k < array_length_1d(itemsArray); k++){
			if(inventoryMatrixItems[i,j] == "" && inventoryMatrixAmmount[i,j] <= 0){
				if(ammountItem[itemtypes] > 0){
					if(ammountItem[itemtypes] >= StackSize){
						inventoryMatrixItems[i,j] = itemsArray[itemtypes];
						inventoryMatrixAmmount[i,j] = StackSize;
						ammountItem[itemtypes] -= StackSize;
					}else{
						inventoryMatrixItems[i,j] = itemsArray[itemtypes];
						inventoryMatrixAmmount[i,j] = ammountItem[itemtypes];
						ammountItem[itemtypes] = 0;
						itemtypes++;
					}
				}
			}
		//}
	}
}