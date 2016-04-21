import MainView from '../main_view';

export default class View extends MainView {
  mount() {
    super.mount();
    console.log('Page View index mounted');
  }

  unMount() {
    super.unMount();
    console.log('Page View index unmounted');
  }
}