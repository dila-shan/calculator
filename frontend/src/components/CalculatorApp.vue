<template>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-4 col-md-6 col-sm-6 col-12">
        <div class="table-responsive">
          <table class="table table-no-border text-center">
            <tbody>
              <tr class="output">
                <td colspan="4">{{ output || 0 }}</td>
              </tr>
              <tr class="table-rounded-cells">
                <td v-on:click="clearField" class="cel-row-1 cel-clear">AC</td>
                <td v-on:click="setSign" class="cel-row-1 cel-sign">+/-</td>
                <td v-on:click="calculate('percentage')" class="cel-row-1">%</td>
                <td v-on:click="calculate('divide')" class="cel-col-4"><i class="fas fa-divide"></i></td>
              </tr>
              <tr class="table-rounded-cells">
                <td v-on:click="getNumber('7')" class="cel-num">7</td>
                <td v-on:click="getNumber('8')" class="cel-num">8</td>
                <td v-on:click="getNumber('9')" class="cel-num">9</td>
                <td v-on:click="calculate('multiply')" class="cel-col-4"><i class="fas fa-times"></i></td>
              </tr>
              <tr class="table-rounded-cells">
                <td v-on:click="getNumber('4')" class="cel-num">4</td>
                <td v-on:click="getNumber('5')" class="cel-num">5</td>
                <td v-on:click="getNumber('6')" class="cel-num">6</td>
                <td v-on:click="calculate('subtract')" class="cel-col-4"><i class="fas fa-minus"></i></td>
              </tr>
              <tr class="table-rounded-cells">
                <td v-on:click="getNumber('1')" class="cel-num">1</td>
                <td v-on:click="getNumber('2')" class="cel-num">2</td>
                <td v-on:click="getNumber('3')" class="cel-num">3</td>
                <td v-on:click="calculate('add')" class="cel-col-4"><i class="fas fa-plus"></i></td>
              </tr>
              <tr>
                <td v-on:click="getNumber('0')" colspan="2" class="rounded-pill cel-num cel-num-0" >0</td>
                <td v-on:click="getDot()" class="cel-row-5 cel-num">.</td>
                <td v-on:click="updateOutput" class="cel-row-5 cel-col-4"><i class="fas fa-equals"></i></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'CalculatorApp',
  props: {
    msg: String
  },
  data(){
    return{
      output:'',
      previousValue:null,
      operationFired:false,
      operator: null
    }
  },
  methods:{
    clearField(){
      this.output = '';
    },
    getNumber(number){
      if (this.output === '0' && number === '0') {
        return;
      }

      if(this.operationFired){
        this.output = '';
        this.operationFired = false;
      }
      this.output = `${this.output}${number}`;
    },
    getDot(){
      if(this.output.indexOf('.') === -1){
        this.output = this.output+'.';
      }
    },
    setSign(){
      this.output = this.output[0] === '-' ? this.output.slice(1) : `-${this.output}`;
    },
    calculate(operator){

      if(operator=='add'){
          this.operation = (a, b) => {
          return parseFloat(a) + parseFloat(b);
        }
      } 
      
      else if(operator=='subtract'){
          this.operation = (a, b) => {
          return parseFloat(a) - parseFloat(b);
        }
      }

      else if(operator=='multiply'){
          this.operation = (a, b) => {
          return parseFloat(a) * parseFloat(b);
        }
      }

      else if(operator=='divide'){
          this.operation = (a, b) => {
          return parseFloat(a) / parseFloat(b);
        }
      } 
      
      else if (operator === 'percentage') {
        this.operation = (a, b) => {
            return parseFloat(a) * (parseFloat(b) / 100);
        }
      }
      
      this.previousValue = this.output;
      this.operationFired = true;
      this.operator = operator;
    },
    updateOutput(){
      if (this.previousValue !== null && this.operator !== null && this.output !== '') {
        this.output = `${this.operation(this.previousValue, this.output)}`;
        axios.post('http://localhost:8000/api/calculate', {
          result: this.output,
          method: this.operator
        })
        .then(response => {
          console.log(response.data);
        })
        .catch(error => {
          console.error(error);
        });
        this.previousValue = null;
      }    
      
    }
  }
}
</script>

<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
.table-responsive {
  overflow-x: auto;
  max-width: 100%;
}

.table-no-border tr td,
.table-no-border tr th{
  border: none;
}
.table-rounded-cells td, .cel-row-5 {
  width: 55px; 
  height: 55px;
  text-align: center;
  line-height: 55px;
  border-radius: 50%;
}
.table {
  background-color: #000;
  border-collapse: separate;
  border-spacing: 10px;
  font-size: 30px;
  font-family: 'Open Sans';
}
.output td{
  background-color: black !important;
  color: white;
  text-align: right;
  padding-left: 20px;
  font-size: 60px;
  font-family: 'Open Sans';
  padding-top: 40px;
  word-wrap: break-word;
  max-width: 330px;
  line-height: 1;
}
.cel-clear, .cel-sign{
  font-size: 25px;
}
.cel-row-1{
  background-color: rgba(164, 164, 164) !important;
}
.cel-col-4{
  background-color: rgba(255, 149, 1) !important;
  color: white;
}

.cel-col-4:active,.cel-row-1:active, .cel-num:active , .cel-num-0:active {
  opacity: 0.4 !important;
}
.cel-num{
  background-color: rgba(51, 51, 51) !important;
  color: white;
}
.cel-num-0{
  text-align: left;
  padding-left: 20px;
  vertical-align: middle;
}


</style>
