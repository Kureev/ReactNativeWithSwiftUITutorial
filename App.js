/**
 * Sample React Native App
 */

import React, {useState} from 'react';
import {requireNativeComponent, SafeAreaView} from 'react-native';

const SwiftUIButton = requireNativeComponent('SwiftUIButton');

const App: () => React$Node = () => {
  const [count, updateCount] = React.useState(0);
  return (
    <SwiftUIButton
      style={styles.container}
      count={count}
      onCountChange={e => updateCount(e.nativeEvent.count)}
    />
  );
};

const styles = {
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
};

export default App;
