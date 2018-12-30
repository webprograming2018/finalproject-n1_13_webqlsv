package model;

public class Score {
private long score_id;
private long semester_id;
private long student_id;
private long subject_id;
private float score_1;
private float score_2;
private float score_3;
private float score_avg;


public Score() {
	super();
	// TODO Auto-generated constructor stub
}


public Score(long score_id, long semester_id, long student_id, long subject_id, float score_1, float score_2,
		float score_3, float score_avg) {
	super();
	this.score_id = score_id;
	this.semester_id = semester_id;
	this.student_id = student_id;
	this.subject_id = subject_id;
	this.score_1 = score_1;
	this.score_2 = score_2;
	this.score_3 = score_3;
	this.score_avg = score_avg;
}


public long getScore_id() {
	return score_id;
}


public void setScore_id(long score_id) {
	this.score_id = score_id;
}


public long getSemester_id() {
	return semester_id;
}


public void setSemester_id(long semester_id) {
	this.semester_id = semester_id;
}


public long getStudent_id() {
	return student_id;
}


public void setStudent_id(long student_id) {
	this.student_id = student_id;
}


public long getSubject_id() {
	return subject_id;
}


public void setSubject_id(long subject_id) {
	this.subject_id = subject_id;
}


public float getScore_1() {
	return score_1;
}


public void setScore_1(float score_1) {
	this.score_1 = score_1;
}


public float getScore_2() {
	return score_2;
}


public void setScore_2(float score_2) {
	this.score_2 = score_2;
}


public float getScore_3() {
	return score_3;
}


public void setScore_3(float score_3) {
	this.score_3 = score_3;
}


public float getScore_avg() {
	return score_avg;
}


public void setScore_avg(float score_avg) {
	this.score_avg = score_avg;
}

}
