/// scr_sort_items();
// This Script sorts the Inventory by Itemtype
/*
	- Check for lowest ItemType in Inventory
	- Copy first item in inventory to first free
*/
itemsArray[0] = "";
ammountItem[0] = 0;
lastStack[0] = 0;
fullStacks[0] = 0;
//Get lowest ItemType
for(i = 0; i < array_height_2d(inventoryMatrixItems); i++){
	for(j = 0; j < array_length_2d(inventoryMatrixItems, i); j++){
		for(k = 0; k < array_length_1d(itemsArray); k++){
			if(inventoryMatrixItems[i,j]!=itemsArray[k]){
				itemsArray[k] = inventoryMatrixItems[i,j];
				itemsArray[k+1] = "";
			}
			if(inventoryMatrixItems[i,j]==itemsArray[k]){
				ammountItem[k] += inventoryMatrixAmmount[i,j];
			}
		}
	}
}
for(i = 0; i < array_length_1d(itemsArray); i++){
	lastStack[i] = ammountItem[i]%StackSize;
	ammountItem[i] -= lastStack[i];
	fullStacks[i] = ammountItem[i]/StackSize;
}
for(k = 0; k < array_length_1d(itemsArray); k++){
	for(i = 0; i < array_height_2d(inventoryMatrixItems); i++){
		for(j = 0; j < array_length_2d(inventoryMatrixItems, i); j++){
			if(fullStacks[k]>boxesPerRow){
				for(l = 0; l < boxesPerRow; l++){
					inventoryMatrixItems[i,l] = itemsArray[k];
					inventoryMatrixAmmount[i,l] = StackSize;
					fullStacks[k]--;
					ammountItem[k]-=StackSize;
				}
				i++;
			}
		}
	}
}