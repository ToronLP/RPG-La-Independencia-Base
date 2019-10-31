/// scr_sort_items();
// This Script sorts the Inventory by Itemtype
itemsArray[0] = spr_log;
itemsArray[1] = spr_stone;
ammountArray = array_create(array_length_1d(itemsArray),0);

for(k = 0; k < array_length_1d(itemsArray); k++){
	for(i = 0; i < array_height_2d(inventoryMatrixItems); i++){
		for(j = 0; j < array_length_2d(inventoryMatrixItems,i); j++){
			if(inventoryMatrixItems[i,j]==itemsArray[k]){
				ammountArray[k] += inventoryMatrixAmmount[i,j];
			}
		}
	}
}

//Inventory Leeren
for(i = 0; i < array_height_2d(inventoryMatrixItems); i++){
	for(j = 0; j < array_length_2d(inventoryMatrixItems,i); j++){
			inventoryMatrixItems[i,j] = "";
			inventoryMatrixAmmount[i,j] = 0;
	}
}

//Inventory wieder füllen
for(k = 0; k < array_length_1d(itemsArray); k++){
	//while(ammountArray[k]>0){
		for(i = 0; i < array_height_2d(inventoryMatrixItems); i++){
			for(j = 0; j < array_length_2d(inventoryMatrixItems,i); j++){
				if(ammountArray[k]>0&&ammountArray[k]>=StackSize&&inventoryMatrixAmmount[i,j]==0){
					inventoryMatrixItems[i,j] = itemsArray[k];
					inventoryMatrixAmmount[i,j] += StackSize;
					ammountArray[k] -= StackSize;
				}else if(ammountArray[k]>0&&ammountArray[k]<StackSize&&inventoryMatrixAmmount[i,j]==0){
					inventoryMatrixItems[i,j] = itemsArray[k];
					inventoryMatrixAmmount[i,j] += ammountArray[k];
					ammountArray[k] -= ammountArray[k];
				}
			}
		}
	//}
}