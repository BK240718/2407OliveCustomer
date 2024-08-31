package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.CartDao;
import com.BK._OliveCustomer.dao.CartItemDao;
import com.BK._OliveCustomer.dto.Cart;
import com.BK._OliveCustomer.dto.CartItem;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class CartNCartItemServiceImpl implements CartNCartItemService {

    private final CartDao cartDao;
    private final CartItemDao cartItemDao;

    @Transactional
    @Override
    public int insertCartNCartItem(Cart cart, CartItem cartItem) {

        log.info("CartNCartItemServiceImpl insertCartNCartItem Start");

        // 1. Cart insert
        Map<String, Object> params = new HashMap<>();
        params.put("customerId", cart.getCustomerId());
        int cartId = cartDao.insertCart(params);

        // 2. 생성된 cartId를 사용하여 CartItem insert
        cartItem.setCartId(cartId);
        cartItem.setAddedDate(LocalDateTime.now());
        cartItem.setStatus(1);

        int insertResult = cartItemDao.insertCartItem(cartItem);

        return insertResult;
    }


    @Override
    public Map<String, Object> listCartByCustomerId(Integer customerId) {

        log.info("listCartByCustomerId Start");

        // 1. 장바구니 아이템 리스트 가져오기
        Map<String, Object> params = new HashMap<>();
        params.put("customerId", customerId);
        params.put("status", 1);

        List<CartItem> listCartByCustomerId = cartItemDao.listCartByCustomerId(params);
        log.info("listCartByCustomerId.size() = {}", listCartByCustomerId.size());

        Map<String, Object> result = new HashMap<>();

        // 2. 총합 계산
        // 2-1. listCartByCustomerId 리스트를 스트림으로 변환
        // 2-2. 스트림의 각 CartItem 객체에 대해 getTotalPrice() 메서드를 호출하여 총 가격을 가져옴
        int subtotal = listCartByCustomerId.stream()
                                            .mapToInt(CartItem::getTotalPrice)
                                            .sum();

        // 3. 배송비 계산
        int shippingCost = (subtotal > 30000) ? 0 : 2500;

        // 결과 맵에 추가
        result.put("listCartByCustomerId", listCartByCustomerId);
        result.put("subtotal", subtotal);
        result.put("shippingCost", shippingCost);
        result.put("grandTotal", subtotal + shippingCost);

        return result;
    }

    @Override
    public int updateCartItemQuantity(CartItem cartItem, int adjustmentValue) {

        log.info("updateCartItemQuantity Start");

        Map<String, Object> params = new HashMap<>();
        params.put("adjustmentValue", adjustmentValue);
        params.put("itemDtlId", cartItem.getItemDtlId());
        params.put("customerId", cartItem.getCustomerId());

        log.info("adjustmentValue = {}", adjustmentValue);
        log.info("cartItem.getItemDtlId() = {}", cartItem.getItemDtlId());
        log.info("cartItem.getCustomerId() = {}", cartItem.getCustomerId());

        int updateResult = cartItemDao.updateCartItemQuantity(params);

        return updateResult;
    }
}
