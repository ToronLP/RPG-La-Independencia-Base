/// scr_item_to_inventory(item, ammount)
//@param item		Which item should be stored in inventory
//@param ammount	Ammount of items which sould be passed in to the inventory

item = argument0;
ammount = argument1;

//Check if item is already in inventory
for(i = 0; i < array_height_2d(inventoryMatrixItems); i++){
	for(j = 0; j < array_length_2d(inventoryMatrixItems, i); j++){
		if(inventoryMatrixItems[i,j]==item && inventoryMatrixAmmount[i,j]+ammount<=StackSize){
			inventoryMatrixAmmount[i,j] += ammount;
			exit;
		}
	}
}

//Put Item on First free slot
for(i = 0; i < array_height_2d(inventoryMatrixItems); i++){
	for(j = 0; j < array_length_2d(inventoryMatrixItems, i); j++){
		if(inventoryMatrixItems[i,j]==""){
			inventoryMatrixItems[i,j]=item;
			inventoryMatrixAmmount[i,j]=ammount;
			exit;
		}
	}
}