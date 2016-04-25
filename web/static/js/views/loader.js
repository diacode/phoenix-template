import MainView    from './main';
import PageNewView from './page/new';

// Collection of specific view modules
const views = {
  PageNewView,
};

export default function loadView(viewName) {
  return views[viewName] || MainView;
}
