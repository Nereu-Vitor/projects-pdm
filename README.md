# 📱 Projetos de PDM - Programação para Dispositivos Móveis

Repositório dedicado ao armazenamento e organização de todos os exercícios, atividades e projetos desenvolvidos durante a disciplina de **Programação para Dispositivos Móveis (PDM)** no **IFSertãoPE Campus Salgueiro**.

---

## 👨‍💻 Autor

* **Aluno:** Nereu Vitor
* **Curso:** Sistemas para Internet
* **Instituição:** Instituto Federal do Sertão Pernambucano (IFSertãoPE)
* **Tecnologias:** Flutter, Dart, VS Code, Android Studio e Google Chrome (Web)

---

## 📂 Estrutura do Repositório

Cada projeto ou atividade prática da disciplina é armazenado em uma subpasta independente na raiz deste repositório:

```text
projetos-pdm/
│
├── README.md               <-- Documentação do repositório
├── LICENSE                 <-- Licença MIT
└── [nome-da-pasta]/        <-- Pastas individuais de cada projeto Flutter

```
---

## 🚀 Guia Completo: Como Clonar e Executar os Projetos

### Passo 1: Clonar o Repositório
​Abra o terminal e execute o comando de clonagem para baixar o repositório para o seu computador:
git clone [https://github.com/NEREU-VITOR-IF/projetos-pdm.git](https://github.com/NEREU-VITOR-IF/projetos-pdm.git)


### Passo 2: Entrar na Pasta do Projeto
​Navegue até a pasta raiz do repositório clonado e depois entre na pasta específica do projeto que deseja executar (substitua pelo nome da pasta real do projeto):
cd projetos-pdm
cd [nome-da-pasta-do-projeto]


### Passo 3: Baixar/Atualizar as Dependências
​Antes de rodar a aplicação, certifique-se de que todas as dependências do Flutter estão atualizadas:
flutter pub get


### Passo 4: Executar a Aplicação
Escolha uma das opções abaixo conforme a plataforma onde deseja rodar o projeto:

* **Opção A - Executar no Navegador Web (Google Chrome):**
  ```bash
  flutter run -d chrome

* **Opção B - Executar no Emulador Android / Dispositivo Físico:**
  ```bash
  flutter run

(Dica: utilize o comando flutter devices no terminal caso queira listar os emuladores ou aparelhos conectados).
