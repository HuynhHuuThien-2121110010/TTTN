// ChatModal.js
import React, { useState } from 'react';
import { View, Text, TouchableOpacity, TextInput, StyleSheet, ScrollView } from 'react-native';
import Modal from 'react-native-modal';

const ChatModal = ({ isVisible, closeModal }) => {
  const [messages, setMessages] = useState([]);
  const [newMessage, setNewMessage] = useState('');

  const handleSend = () => {
    setMessages([...messages, { sender: 'user', text: newMessage }]);
    setNewMessage('');
  };

  return (
    <Modal isVisible={isVisible} style={styles.modal}>
      <View style={styles.modalContent}>
        <Text style={styles.title}>Chat với Admin</Text>

        <View style={styles.chatContainer}>
          <ScrollView style={styles.messagesContainer}>
            <View style={styles.messages}>
              {messages.map((message, index) => (
                <View key={index} style={message.sender === 'admin' ? styles.adminMessage : styles.userMessage}>
                  <Text style={message.sender === 'admin' ? styles.adminName : styles.userName}>
                    {message.sender === 'admin' ? 'Admin:' : 'You:'}
                  </Text>
                  <Text style={styles.messageText}>{message.text}</Text>
                </View>
              ))}
            </View>
          </ScrollView>

          <View style={styles.inputContainer}>
            <TextInput
              style={styles.input}
              placeholder="Nhập tin nhắn..."
              multiline
              value={newMessage}
              onChangeText={(text) => setNewMessage(text)}
            />
            <TouchableOpacity style={styles.sendButton} onPress={handleSend}>
              <Text style={{ color: 'black' }}>Gửi</Text>
            </TouchableOpacity>
          </View>
        </View>

        <TouchableOpacity style={styles.closeButton} onPress={closeModal}>
          <Text style={{ color: 'black' }}>Đóng</Text>
        </TouchableOpacity>
      </View>
    </Modal>
  );
};

const styles = StyleSheet.create({
  modal: {
    flex: 1,
    margin: 0,
    justifyContent: 'flex-end',
  },
  modalContent: {
    backgroundColor: 'white', // Thay đổi màu nền thành trắng
    padding: 22,
    justifyContent: 'center',
    alignItems: 'center',
    borderTopLeftRadius: 20,
    borderTopRightRadius: 20,
  },
  title: {
    color: 'black', // Thay đổi màu chữ thành đen
    fontSize: 18,
    marginBottom: 10,
  },
  chatContainer: {
    flex: 1,
    flexDirection: 'column',
    justifyContent: 'space-between',
  },
  messagesContainer: {
    flex: 1,
  },
  messages: {
    padding: 10,
  },
  adminMessage: {
    flexDirection: 'row',
    marginBottom: 5,
    justifyContent: 'flex-start',
  },
  userMessage: {
    flexDirection: 'row',
    marginBottom: 5,
    justifyContent: 'flex-end',
  },
  adminName: {
    fontWeight: 'bold',
    marginRight: 5,
    color: 'red',
  },
  userName: {
    fontWeight: 'bold',
    marginRight: 5,
    color: 'blue',
  },
  messageText: {
    flex: 1,
    color: 'black', // Thay đổi màu chữ tin nhắn thành đen
  },
  inputContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    borderTopWidth: 1,
    borderTopColor: 'black', // Thay đổi màu đường viền input thành đen
    padding: 5,
  },
  input: {
    flex: 1,
    backgroundColor: 'white', // Thay đổi màu nền input thành trắng
    color: 'black', // Thay đổi màu chữ input thành đen
    borderRadius: 5,
    paddingHorizontal: 10,
    paddingVertical: 5,
  },
  sendButton: {
    backgroundColor: 'grey',
    borderRadius: 5,
    padding: 10,
    marginLeft: 5,
  },
  closeButton: {
    backgroundColor: 'red',
    borderRadius: 5,
    marginTop: 10,
    padding: 10,
  },
});

export default ChatModal;
