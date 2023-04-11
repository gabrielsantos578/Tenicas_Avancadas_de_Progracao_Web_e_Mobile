import * as React from 'react';
import {
  StyleSheet, View, Text, Image, SafeAreaView, TouchableOpacity
} from 'react-native';
import { TextInput } from 'react-native-paper';

export default function Login() {
  return (
    <View style={styles.container}>
      <Image source={require('../assets/usuario.png')}
        style={{ width: 330, height: 300, marginLeft: 48 }}>
      </Image>
      <SafeAreaView>
        <TextInput
          label="E-mail"
          right={<TextInput.Icon icon="email" />}
        />
        <TextInput
          label="Password"
          secureTextEntry
          right={<TextInput.Icon icon="eye" />}
        />
      </SafeAreaView>

      <TouchableOpacity
        style={[styles.handleLogin,
        { backgroundColor: type === 'login' ? '#4682B4' : '#141414' }]}
        onPress={''}
      >
        <Text style={styles.loginText}>
          {type === 'login' ? 'Acessar' : 'Cadastrar'}
        </Text>
      </TouchableOpacity>

      <TouchableOpacity onPress={() => setType(type => type === 'login' ? 'cadastrar' : 'login')} >
        <Text style={{ textAlign: 'center' }}>
          {type === 'login' ? 'Criar uma conta' : 'Já possuo uma conta'}
        </Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({


});


