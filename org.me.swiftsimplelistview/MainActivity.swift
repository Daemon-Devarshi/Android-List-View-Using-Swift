import java.util
import  android.app
import  android.content
import  android.os
import  android.util
import  android.view
import  android.widget

public class MainActivity: Activity {
	var listView : ListView?
	public override func onCreate(savedInstanceState: Bundle!) {
		super.onCreate(savedInstanceState)
		ContentView = R.layout.main
		
		// get listView object
		listView = findViewById(R.id.list) as! ListView
		
		// array initialization
		let values = ["Devarshi", "Kulshreshtha", "is", "Genius"]
		
		// defining a new adapter
		// 1st parameter: context
		// 2nd: layout for the row
		// 3rd: ID of textview to which data is written
		// 4th: array of data
		let adapter = ArrayAdapter(self, android.R.layout.simple_list_item_1, android.R.id.text1, values)
		
		// Assigning adapter to list view
		listView!.setAdapter(adapter)
	}
}
