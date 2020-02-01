/**
 * Sample React Native App
 */

import React from 'react';
import {requireNativeComponent, SafeAreaView} from 'react-native';

const SwiftUIButton = requireNativeComponent('SwiftUIButton');

const App: () => React$Node = () => {
  return (
    <SafeAreaView style={styles.container}>
      <SwiftUIButton style={styles.view} />
    </SafeAreaView>
  );
};

const styles = {
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  view: {
    backgroundColor: 'red',
    width: 300,
    height: 300,
  },
};

export default App;
