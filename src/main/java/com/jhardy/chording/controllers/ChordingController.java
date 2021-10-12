package com.jhardy.chording.controllers;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhardy.chording.models.NoteSelection;
import com.jhardy.chording.services.ChordingService;

@Controller
public class ChordingController {

private final ChordingService chordingService;
	
	public ChordingController(ChordingService chordingService) {
		this.chordingService = chordingService;
	}

	@RequestMapping("/")
	public String rootIndex() {
		return "redirect:/chordings";
	}
	@RequestMapping("/chordings")
	public String index(Model model, HttpSession session) {
		NoteSelection notes = new NoteSelection();
		HashMap<Integer,String> chromatic = notes.chromatic();
		HashMap<Integer,Integer> noteMap = notes.noteMap();
		HashMap<Integer,String> finalScale = notes.grabScale(chromatic, noteMap);
		model.addAttribute("root",finalScale.get(1));
		model.addAttribute("second",finalScale.get(2));
		model.addAttribute("third",finalScale.get(3));
		model.addAttribute("fourth",finalScale.get(4));
		model.addAttribute("fifth",finalScale.get(5));
		model.addAttribute("sixth",finalScale.get(6));
		model.addAttribute("seventh",finalScale.get(7));
		Integer scale = 0;
		Integer key = 0;
		model.addAttribute("scale",scale);
		model.addAttribute("key",key);
		model.addAttribute("scaleName","Major");
		return "index.jsp";
	}
	
	@RequestMapping("/chordings/{key}/{scale}")
	public String selectKey(@PathVariable("key") Integer key,@PathVariable("scale") Integer scale, Model model, HttpSession session) {
		NoteSelection notes = new NoteSelection();
		String scaleName = "Major";
		HashMap<Integer,String> chromatic = notes.chromatic();
		HashMap<Integer,Integer> noteMap = notes.noteMap();
		HashMap<Integer,Integer> scaleChange = notes.scaleChange(noteMap, scale);
		HashMap<Integer,Integer> keyChange = notes.keyChange(scaleChange, key);
		HashMap<Integer,String> finalScale = notes.grabScale(chromatic, keyChange);
		model.addAttribute("root",finalScale.get(1));
		model.addAttribute("second",finalScale.get(2));
		model.addAttribute("third",finalScale.get(3));
		model.addAttribute("fourth",finalScale.get(4));
		model.addAttribute("fifth",finalScale.get(5));
		model.addAttribute("sixth",finalScale.get(6));
		model.addAttribute("seventh",finalScale.get(7));
		model.addAttribute("key",key);
		model.addAttribute("scale",scale);
		switch(scale) {
		  case 1: scaleName = "Natural Minor";
		    break;
		  case 2: scaleName = "Harmonic Minor";
		    break;
		  case 3: scaleName = "Jazz Melodic Minor";
			    break;
		  case 4: scaleName = "Ionian (Major)";
			    break;
		  case 5: scaleName = "Dorian";
			    break;
		  case 6: scaleName = "Phrygian";
			    break;
		  case 7: scaleName = "Lydian";
			    break;
		  case 8: scaleName = "Mixolydian";
			    break;
		  case 9: scaleName = "Aeolian";
			    break;
		  case 10: scaleName = "Locrian";
			    break;
		  default:
		    scaleName = "Major";
		}

		model.addAttribute("scaleName",scaleName);
		return "index.jsp";
	}
		
		

	
}
