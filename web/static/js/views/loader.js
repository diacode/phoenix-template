import MainView      from './main_view';
import PageIndexView from './page/index';

const views = {
  PageIndexView,
};

export default function loadView(viewName) {
  return views[viewName] || MainView;
}
