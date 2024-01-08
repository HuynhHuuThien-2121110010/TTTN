// PurchaseModal.js

import React from 'react';
import { View, Text, Modal, TouchableOpacity, StyleSheet } from 'react-native';

const PurchaseModal = ({ isVisible, closeModal, productInfo }) => {
  return (
    <Modal
      animationType="slide"
      transparent={true}
      visible={isVisible}
      onRequestClose={closeModal}
    >
      <View style={styles.modalContainer}>
        <View style={styles.modalContent}>
          {/* Hiển thị thông tin sản phẩm liên quan */}
          <Text>{productInfo.productName}</Text>
          <Text>{`Số lượng: ${productInfo.quantity}`}</Text>
          {/* Thêm nhiều thông tin khác nếu cần */}

          {/* Nút đóng */}
          <TouchableOpacity onPress={closeModal} style={styles.closeButton}>
            <Text style={{ color: 'white' }}>Đóng</Text>
          </TouchableOpacity>
        </View>
      </View>
    </Modal>
  );
};

const styles = StyleSheet.create({
  modalContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'rgba(0, 0, 0, 0.5)',
  },
  modalContent: {
    backgroundColor: 'white',
    padding: 20,
    borderRadius: 10,
    alignItems: 'center',
  },
  closeButton: {
    marginTop: 10,
    backgroundColor: 'blue',
    padding: 10,
    borderRadius: 5,
  },
});

export default PurchaseModal;
