/// @function								scr_string_divider(string,devisionsybol);
/// @param		{string}	string
/// @param		{string}	devisionsybol

text = argument[0];
devider = argument[1];
devider_count = 0;
index = 0;

for(i = 1; i <= string_length(text); i++)
{
	actChar = string_char_at(text,i);
	if(actChar == devider)devider_count++;
}
parts = array_create(devider_count + 1, "");


for(i = 1; i <= string_length(text); i++)
{
	actChar = string_char_at(text,i);
	if(actChar != devider)
	{
		parts[index] += string(actChar);
	} else {
		index++;
	}
	
}

return parts;