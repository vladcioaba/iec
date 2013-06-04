package iec.data;

import java.io.Serializable;

public class Test implements Serializable {

	public Test(int id, int type, int lessonNr, String body, String answer, int correct, int difficulty) {
		mTestId = id;
		mTestType = type;
		mTestBody = body;
		mTestAnswers = answer.split("\\\\n\\\\r");
		mTestCorrectAnswerValue = correct;
		mTestLessonNr = lessonNr;
		this.difficulty = difficulty;
	}

	public int getTestId() {
		return mTestId;
	}

	public int getTestType() {
		return mTestType;
	}

	public String getTestBody() {
		return mTestBody;
	}

	public String[] getTestAnswers() {
		return mTestAnswers;
	}

	public int getCorrectAnswerValue() {
		return mTestCorrectAnswerValue;
	}

	public int getTestLessonNr() {
		return mTestLessonNr;
	}

	public int getDifficulty() {
		return difficulty;
	}

	private int mTestId;
	private int mTestType;
	private String mTestBody;
	private String[] mTestAnswers;
	private int mTestCorrectAnswerValue;
	private int mTestLessonNr;
	private int difficulty;

}
