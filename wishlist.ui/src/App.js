import React, { Component } from 'react';
import SweetAlert from "sweetalert2";

import './App.css';

class App extends Component{
  constructor(props){
    super(props);
    this.state = {
        listaDesejos : [],
        descricao : ''
    }
  };

buscarDesejos = () =>{
  // Faz a chamada para a api usando o fetch
  fetch('http://localhost:5000/api/Desejo')

  // Define o tipo de dado do retorno da requisição(JSON)
  .then(resposta => resposta.json())

  // e atualiza o state listaDesejos com os dados obtidos
  .then(dados => this.setState({ listaDesejos : dados}))

  // Caso ocorra algum erro, mostra no console do navegador
  .catch(erro => console.log(erro))
  

}

  // Chama a função buscarTiposEventos() assim que o componente é renderizado
  componentDidMount(){
    this.buscarDesejos();
    
}


  render() {
    return (
      <div>
        <meta charSet="UTF-8" />
        <meta httpEquiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="node_modules/sweetalert2/dist/sweetalert2.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Projeto</title>
        {/* Cabeçalho para a separação do teto  */}
        <header className="header">
        </header> 
        {/* Fim do Cabeçalho */}
        {/* Lista de Desejos  */}
<main>
        <section className="ListaDesejos">
        <h2 className="title">Lista de Desejos</h2>
             
             {this.state.listaDesejos.map((desejo) => {
         return(   
           
              /* Título Lista de Desejos */
          // <h2 className="title">Lista de Desejos</h2>
         
          //* div para guardar as caixas das listas */
        <div className="boxemaior">
        <div className="boxes">
            <div className="box">
          <tr key={desejo.idDesejo}></tr>
              <p className="texto">{desejo.idDesejo}</p>
              <p className="texto">{desejo.descricao}</p>
              </div>
           
            
          
          </div>
          </div>
         )    
          })}
             
           
            
          
        
        </section> {/*Fim da seção Listar desejos*/}
        {/* Div criada para separar as seções */}
        <div className="header" />
        {/* Cadastro de Desejos */}
        <section className="CadastroDesejos">
          {/* Título Cadastro de desejo */}
          <h2 className="title"> Cadastro de Desejos</h2>
          {/* Form para os inputs email e desejo */}
          <form className="form">
            <input type="text" className="input" placeholder="Digite o seu email" />
            <input type="text" className="input" placeholder="Digite seu desejo" />
          </form>
          {/* Botão para cadastro */}
          <button type="submit" className="btn" onclick="botao">Cadastrar</button>
          {/* Fim da seção Cadastro de desejos */}
        </section>
        {/* Divs para espaçamento final */}
        <div className="header" />
        <section className="header" />
        <section className="header" />
        <section className="header" /> 
        </main>
      </div>
    );
 } };

export default App;