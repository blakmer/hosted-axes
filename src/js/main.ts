import '../css/style.css';

document.querySelector<HTMLDivElement>('#app')!.innerHTML = `
  <div>
    <a href="https://pimskie.dev" target="_blank">
      <img src="/logo.svg" class="logo" alt="Pimskie logo" />
    </a>
  
    <h1>Let's go</h1>
  </div>
`;

console.log('test');
