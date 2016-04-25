import MainView from '../main';

export default class View extends MainView {
  mount() {
    super.mount();
    console.log('PageNewView mounted');
  }

  unmount() {
    super.unmount();
    console.log('PageNewView unmounted');
  }
}
