
var tableData = data;

// get table references
var tbody = d3.select("tbody");

function buildTable(data) {
 
  tbody.html("");

  
  data.forEach((dataRow) => {
    // Append a row to the table body
    var row = tbody.append("tr");

    Object.values(dataRow).forEach((val) => {
      var cell = row.append("td");
        cell.text(val);
      }
    );
  });
}

function handleClick() {

  // Grab the datetime value from the filter
  var date = d3.select("#datetime").property("value");
  let filteredData = tableData;

  // Check to see if a date was entered and filter the
  // data using that date.
  if (date) {
    
    filteredData = filteredData.filter(row => row.datetime === date);
  }

  
  buildTable(filteredData);
}

// Attach an event to listen for the form button
d3.selectAll("#filter-btn").on("click", handleClick);

// Build the table when the page loads
buildTable(tableData);
