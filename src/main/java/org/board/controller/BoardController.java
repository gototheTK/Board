package org.board.controller;

import org.board.domain.BoardVO;
import org.board.service.BoardService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {

    private BoardService service;

    @GetMapping("/list")
    public String BoardForm(Model model){

        model.addAttribute("list", service.getList());

        return "boardForm";

    }

    @PostMapping("/register")
    public String register(BoardVO board, RedirectAttributes rttr){

        log.info("register: " + board);

        service.register(board);

        rttr.addFlashAttribute("result", board.getBno());

        return  "redirect:/board/list";
    }

    @GetMapping(value = "/get/{bno}",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE,
        MediaType.APPLICATION_ATOM_XML_VALUE})
        public ResponseEntity<BoardVO> get(@PathVariable("bno") Long bno, Model model){
    
            log.info("get");
    
            return new ResponseEntity<>(service.get(bno), HttpStatus.OK);
        }

    @PostMapping("/modify")
    public String modify(BoardVO board, RedirectAttributes rttr) {
        log.info("modify:" + board);

        if(service.modify(board)) {
            rttr.addFlashAttribute("resut", "success");
        }
        return "redirect:/board/list";

    }

    @PostMapping("/remove")
    public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr){

        log.info("remove........" + bno);
        if(service.remove(bno)){
            rttr.addFlashAttribute("result", "success");
        }
        return "redirect:/board/list";
    }

    

}
