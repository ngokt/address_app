
str = document.getElementById('aaa').value
function toDate (str) {
  var arr = (str.substr(0, 4) + '/' + str.substr(4, 2) + '/' + str.substr(6, 2)).split('/');
  return new Date(arr[0], arr[1] - 1, arr[2]);
};

var date = toDate(str);

const birthdate = date;
 
const ageCalculation = ( birthDate , nowDate ) => {
    const birthNumber = birthDate.getFullYear() * 10000 
                               + (birthDate.getMonth() + 1 ) * 100 
                               + birthDate.getDate();
    const nowNumber = nowDate.getFullYear() * 10000 
                               + (nowDate.getMonth() + 1 ) * 100 
                               + nowDate.getDate();
 
    return Math.floor( (nowNumber - birthNumber) / 10000 );
}
 
ageage = ageCalculation( new Date(birthdate) , new Date() );

console.log( ageage + "歳" );