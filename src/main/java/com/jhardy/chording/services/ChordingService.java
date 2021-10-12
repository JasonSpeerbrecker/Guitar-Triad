package com.jhardy.chording.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.jhardy.chording.models.NoteSelection;
import com.jhardy.chording.repos.ChordingRepo;

@Service
public class ChordingService {
	private final ChordingRepo chordingRepo;
	
	public ChordingService(ChordingRepo chordingRepo) {
		this.chordingRepo = chordingRepo;
	}
//	find all
	public List<NoteSelection> allChordings(){
		return chordingRepo.findAll();
	}
//	create chording
	public NoteSelection createChording(NoteSelection p) {
		return chordingRepo.save(p);
	}
//	delete chording
	public void deleteChording(Long id) {
		chordingRepo.deleteById(id);
	}

//	retrieve a chording
	public NoteSelection findChording(Long id) {
		Optional<NoteSelection> optionalChording = chordingRepo.findById(id);
		if(optionalChording.isPresent()) {
			return optionalChording.get();
		} else {
			return null;
		}
	}
}
