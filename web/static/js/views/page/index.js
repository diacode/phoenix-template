import MainView from '../main_view';

export default class View extends MainView {
  mount() {
    super.mount();
    console.log('PageIndexView mounted');
  }

  unmount() {
    super.unmount();
    console.log('PageIndexView unmounted');
  }
}
