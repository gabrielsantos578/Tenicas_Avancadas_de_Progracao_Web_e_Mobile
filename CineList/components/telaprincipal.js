import * as React from 'react';
import {
    StyleSheet, View, Image, Button
  } from 'react-native';
  
  const Separator = () => {
    return <View style={styles.separator} />;
  }
  
  class TelaPrincipal extends React.Component {
    render(){
    return (
      <View style={styles.container}>
        <Image source={require('../assets/pet.png')}
          style={{ width: 330, height: 300 }}>
        </Image>
        <View style={{ marginTop: 50 , fontSize:30}}>
          <Button 
            onPress={() =>this.props.navigation.navigate('Login')}
            title="A C E S S A R"
            color="#191970"
  
          />
          <Separator />
          <Button
            onPress={''}
            title="A J U D A "
            color="#191970"
          />
        </View>
      </View>
    );
   }
  }
  
  const styles = StyleSheet.create({
    container: {
      flex: 1,
      backgroundColor: '#4682B4',
    },
    title: {
      fontSize: 35,
      textAlign: 'center',
      fontFamily: 'Arial',
      fontWeight: 'bold',
      marginTop: 40,
      color: 'white'
    },
    separator: {
      marginVertical: 20,
      borderBottomColor: "#737373",
      borderBottomWidth: StyleSheet.hairlineWidth
    }
  });

  export default TelaPrincipal;
  