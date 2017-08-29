/**
 * Hello Swift Sift. Frontend view entry point.
 */
import { SiftView, registerSiftView } from '@redsift/sift-sdk-web';

export default class MyView extends SiftView {
  constructor() {
    // You have to call the super() method to initialize the base class.
    super();

  }

  // for more info: http://docs.redsift.com/docs/client-code-siftview
  presentView(value) {
    console.log('hello-swift-sift: presentView: ', value);
  };

  willPresentView(value) {
    console.log('hello-swift-sift: willPresentView: ', value);
  };

}

registerSiftView(new MyView(window));
