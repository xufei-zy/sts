package com.example.demo.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.bean.Goods;
import com.example.demo.service.GoodsService;

@Controller
public class GoodsController {
	
	@Resource
	private GoodsService goodsService;
	
	@Resource
	private RedisTemplate<String, Object> RedisTemplate;
	
	@RequestMapping("list")
	public String findGoodsList(Model model) {
		List<Goods> goodsList=goodsService.findGoodsList();
		model.addAttribute("goodsList", goodsList);
		return "list";
		
	}
	@RequestMapping("toAdd")
	public String toAdd() {
		return "add";	
	}
	@RequestMapping("addGoods")
	public String addGoods(Goods goods) {
		ListOperations<String, Object> opsForList = RedisTemplate.opsForList();
		Long push = opsForList.leftPush("goodsList", goods);
		return "add";	
	}
}
