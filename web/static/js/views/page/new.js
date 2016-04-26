import MainView from '../main';

module.exports = class View extends MainView {
  mount() {
    super.mount();
    console.log('PageNewView mounted');
  }

  unmount() {
    super.unmount();
    console.log('PageNewView unmounted');
  }
};
