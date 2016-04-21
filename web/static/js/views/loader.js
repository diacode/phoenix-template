import MainView      from './main_view';
import PageViewIndex from './page_view/index';

const views = {
  PageViewIndex,
};

export default function loadView(viewName) {
  return views[viewName] || MainView;
}
