const viewsContext = require.context('./', true);
import MainView from './main';

export default function loadView(viewPath) {
  let view;

  try {
    const ViewClass = viewsContext('./' + viewPath);
    view = new ViewClass();
  } catch (e) {
    view = new MainView();
  }

  return view;
}
