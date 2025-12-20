/**
 * Serializes form data into a JSON object.
 * @param {HTMLFormElement} form The form to serialize.
 * @returns {Object} The serialized form data as a JSON object.
 */
function serializeFormToJSON(form) {
  const formData = new FormData(form);
  const jsonObject = {};

  for (const [key, value] of formData.entries()) {
    // If a key already exists, convert it to an array
    if (jsonObject.hasOwnProperty(key)) {
      if (!Array.isArray(jsonObject[key])) {
        jsonObject[key] = [jsonObject[key]];
      }
      jsonObject[key].push(value);
    } else {
      jsonObject[key] = value;
    }
  }

  return jsonObject;
}

// Example Usage:
/*
document.addEventListener('DOMContentLoaded', function() {
    const myForm = document.getElementById('my-form');
    if (myForm) {
        myForm.addEventListener('submit', function(e) {
            e.preventDefault();
            const jsonData = serializeFormToJSON(this);
            console.log(jsonData);

            // Now you can send this jsonData with fetch
            fetch('your-endpoint.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(jsonData)
            })
            .then(response => response.json())
            .then(data => {
                console.log('Success:', data);
            })
            .catch(error => {
                console.error('Error:', error);
            });
        });
    }
});
*/
