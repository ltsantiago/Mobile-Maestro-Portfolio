
function email() {
  const date = new Date().getTime().toString();
  return `user-${date}@test.com`;
}

function password() {
  const date = new Date().getTime().toString();
  return `test-${date}`;
}

output.credentials = {
  email: email(),
  password: password(),
};