import React, { Component } from 'react';

import './App.css';

class App extends Component{
  constructor(props){
    super(props);
    this.state = {
        listaDesejos : [],
        titulo : ''
    }
  };

buscarDesejos = () =>{
  // Faz a chamada para a api usando o fetch
  fetch('http://localhost:5000/api/')

  // Define o tipo de dado do retorno da requisição(JSON)
  .then(resposta => resposta.json())

  // e atualiza o state listaDesejos com os dados obtidos
  .then(dados => this.setState({ listaDesejos : dados}))

  // Caso ocorra algum erro, mostra no console do navegador
  .catch(erro => console.log(erro))
  

}



render() {
  return (
    <h1> isso ai</h1>
  );
}
}
export default App;
