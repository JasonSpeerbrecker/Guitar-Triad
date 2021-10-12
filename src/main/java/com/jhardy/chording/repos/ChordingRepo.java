package com.jhardy.chording.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jhardy.chording.models.NoteSelection;

@Repository
public interface ChordingRepo extends CrudRepository<NoteSelection, Long>{
	List<NoteSelection> findAll();
}
