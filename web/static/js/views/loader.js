import MainView      from './main';
import PageNewView from './page/new';

const views = {
  PageNewView,
};

export default function loadView(viewName) {
  return views[viewName] || MainView;
}
