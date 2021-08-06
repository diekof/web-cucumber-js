import { ICustomWorld } from '../support/custom-world';
import { Given, Then, When } from '@cucumber/cucumber';

Given('que eu acesso a página principal', async function () {
  const { page } = this;
  await page?.goto('http://grp-preproducao.pbh.gov.br/');
  await page?.waitForSelector('input[name=BTNENTER]');
});

When(
  'eu faço login com {string} e {string}',
  async function (this: ICustomWorld, user: string, senha: string) {
    const page = this.page!;
    await page?.fill('#vUSERNAME', user);
    await page?.fill('#vUSERPASSWORD', senha);
    await page?.waitForSelector('input[name=BTNENTER]');
    await page.click('input[name=BTNENTER]');
  },
);

Then('devo ser autenticado com sucesso', async function (this: ICustomWorld) {
  const page = this.page!;
  await page.textContent('#TEXTBLOCKTITLE_MPAGE');
});

When('devo ter acesso a página inicial', async function (this: ICustomWorld) {
  const page = this.page!;
  await page.waitForSelector('#TEXTBLOCKTITLE_MPAGE');
});
