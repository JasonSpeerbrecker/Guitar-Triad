package com.jhardy.chording.models;

import java.util.HashMap;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class NoteSelection {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private Long id;

// currently these variables are unused, but I might implement them to save scales directly
// from here instead of doing it in the controller.  If so, they'll likely be Strings instead.
private int root = 1;
private int second = 3;
private int third = 5;
private int fourth = 6;
private int fifth = 8;
private int sixth = 10;
private int seventh = 12;


// These two hashmaps, and their methods, work together to create and modify scales.
// One map contains all 12 notes chromatically.  The second functions as a note map, with 12 indexes which
// point to the note we want.  Initially, they line up perfectly- index 1 points to the first note,
// 2 to the second, etc.  In order to generate scales, we start off with the format of the Major scale.
// From there, we modify the second HashMap based on how each scale differs from the Major scale.  If a note needs to be "flattened"
// (lowered by one), we subtract one from the index of that note.  So note 5 might be G, but if we lower the index
// by one, it is now 4, which points at Gb.  We've flattened that note by lowering its pointer.

// Further below are methods which perform this automatically based on various scale formula, so it auto-generates whatever scale we choose.

	public HashMap<Integer,String> chromatic() {
		HashMap<Integer,String> chromatic = new HashMap<Integer,String>();
		chromatic.put(1,"A");
		chromatic.put(2,"AS");
		chromatic.put(3,"B");
		chromatic.put(4,"C");
		chromatic.put(5,"CS");
		chromatic.put(6,"D");
		chromatic.put(7,"DS");
		chromatic.put(8,"E");
		chromatic.put(9,"F");
		chromatic.put(10,"FS");
		chromatic.put(11,"G");
		chromatic.put(12,"GS");
		return chromatic;
	}
	public HashMap<Integer,Integer> noteMap(){
		HashMap<Integer,Integer> noteMap = new HashMap<Integer,Integer>();
		noteMap.put(1, 1);
		noteMap.put(2, 2);
		noteMap.put(3, 3);
		noteMap.put(4, 4);
		noteMap.put(5, 5);
		noteMap.put(6, 6);
		noteMap.put(7, 7);
		noteMap.put(8, 8);
		noteMap.put(9, 9);
		noteMap.put(10, 10);
		noteMap.put(11, 11);
		noteMap.put(12, 12);
		return noteMap;
	}
	public HashMap<Integer,Integer> scaleChange(HashMap<Integer,Integer> noteMap, int scale) {
		if (scale == 0) {return noteMap;}
		if (scale == 1) {return toNaturalMinor(noteMap);}
		if (scale == 2) {return toHarmonicMinor(noteMap);}
		if (scale == 3) {return toJazzMelodicMinor(noteMap);}
		if (scale == 4) {return toIonian(noteMap);}
		if (scale == 5) {return toDorian(noteMap);}
		if (scale == 6) {return toPhrygian(noteMap);}
		if (scale == 7) {return toLydian(noteMap);}
		if (scale == 8) {return toMixolydian(noteMap);}
		if (scale == 9) {return toAeolian(noteMap);}
		if (scale == 10) {return toLocrian(noteMap);}
		return noteMap;
	}
// Scale change methods.  Still need the remaining scales (formulas on google drive Tracker- 	
// Ionian, Dorian, Phrygian, Lydian, Mixolydian, Aeolian, Locrian, Blues
	public HashMap<Integer,Integer> toNaturalMinor(HashMap<Integer,Integer> noteMap){
		HashMap<Integer,Integer> naturalMinorScale = new HashMap<Integer,Integer>();
		naturalMinorScale = noteMap;
		naturalMinorScale.replace(5, 4);
		naturalMinorScale.replace(10, 9);
		naturalMinorScale.replace(12, 11);
		return naturalMinorScale;
	}
	public HashMap<Integer,Integer> toHarmonicMinor(HashMap<Integer,Integer> noteMap){
		HashMap<Integer,Integer> harmonicMinorScale = new HashMap<Integer,Integer>();
		harmonicMinorScale = noteMap;
		harmonicMinorScale.replace(5, 4);
		harmonicMinorScale.replace(10, 9);
		return harmonicMinorScale;
	}
	public HashMap<Integer,Integer> toJazzMelodicMinor(HashMap<Integer,Integer> noteMap){
		HashMap<Integer,Integer> jazzMinorScale = new HashMap<Integer,Integer>();
		jazzMinorScale = noteMap;
		jazzMinorScale.replace(5, 4);
		return jazzMinorScale;
	}
	public HashMap<Integer,Integer> toIonian(HashMap<Integer,Integer> noteMap){
		HashMap<Integer,Integer> ionianScale = new HashMap<Integer,Integer>();
		ionianScale = noteMap;
		return ionianScale;
	}
	public HashMap<Integer,Integer> toDorian(HashMap<Integer,Integer> noteMap){
		HashMap<Integer,Integer> dorianScale = new HashMap<Integer,Integer>();
		dorianScale = noteMap;
		dorianScale.replace(5, 4);
		dorianScale.replace(12, 11);
		return dorianScale;
	}
	public HashMap<Integer,Integer> toPhrygian(HashMap<Integer,Integer> noteMap){
		HashMap<Integer,Integer> phrygianScale = new HashMap<Integer,Integer>();
		phrygianScale = noteMap;
		phrygianScale.replace(3, 2);
		phrygianScale.replace(5, 4);
		phrygianScale.replace(10, 9);
		phrygianScale.replace(12, 11);
		return phrygianScale;
	}
	public HashMap<Integer,Integer> toLydian(HashMap<Integer,Integer> noteMap){
		HashMap<Integer,Integer> lydianScale = new HashMap<Integer,Integer>();
		lydianScale = noteMap;
		lydianScale.replace(6, 7);
		return lydianScale;
	}
	public HashMap<Integer,Integer> toMixolydian(HashMap<Integer,Integer> noteMap){
		HashMap<Integer,Integer> mixolydianScale = new HashMap<Integer,Integer>();
		mixolydianScale = noteMap;
		mixolydianScale.replace(12, 11);
		return mixolydianScale;
	}
	public HashMap<Integer,Integer> toAeolian(HashMap<Integer,Integer> noteMap){
		HashMap<Integer,Integer> aeolianScale = new HashMap<Integer,Integer>();
		aeolianScale = noteMap;
		aeolianScale.replace(5, 4);
		aeolianScale.replace(10, 9);
		aeolianScale.replace(12, 11);
		return aeolianScale;
	}
	public HashMap<Integer,Integer> toLocrian(HashMap<Integer,Integer> noteMap){
		HashMap<Integer,Integer> locrianScale = new HashMap<Integer,Integer>();
		locrianScale = noteMap;
		locrianScale.replace(3, 2);
		locrianScale.replace(5, 4);
		locrianScale.replace(8, 7);
		locrianScale.replace(10, 9);
		locrianScale.replace(12, 11);
		return locrianScale;
	}
// keyChange iterates across the entire scale, moving every note up a set amount, which changes the Key.	
	public HashMap<Integer,Integer> keyChange(HashMap<Integer,Integer> noteMap, int change){
		HashMap<Integer,Integer> keyChange = noteMap;
		for (int x=1;x<13;x++) {
			int referenceNumber = keyChange.get(x);
			referenceNumber += change;
				if (referenceNumber > 12) {
					referenceNumber = referenceNumber - 12;
				}
			keyChange.replace(x, referenceNumber);
		}
		return keyChange;
	}
// grabScale finalizes everything from above, and returns the 7 notes we will be using to generate our chord tones.
	public HashMap<Integer,String> grabScale(HashMap<Integer,String> chromatic, HashMap<Integer,Integer> noteMap){
		HashMap<Integer,String> scale = new HashMap<Integer,String>();
		scale.put(1,chromatic.get(noteMap.get(1)));
		scale.put(2,chromatic.get(noteMap.get(3)));
		scale.put(3,chromatic.get(noteMap.get(5)));
		scale.put(4,chromatic.get(noteMap.get(6)));
		scale.put(5,chromatic.get(noteMap.get(8)));
		scale.put(6,chromatic.get(noteMap.get(10)));
		scale.put(7,chromatic.get(noteMap.get(12)));
		return scale;
	}
}
