package iec.data;

public class Test {

	public Test(int id, int type, int difficulty, String body, String answer, int correct)
	{
		mTestId = id;
		mTestType = type;
		mTestBody = body;
		mTestAnswers = answer.split("\n\r");
		mTestCorrectAnswerIndex = correct;
	}
	
	public int getTestId()
	{
		return mTestId;
	}
	
	public int getTestType()
	{
		return mTestType;
	}
	
	public String getTestBody()
	{
		return mTestBody;
	}
	
	public String[] getTestAnswers()
	{
		return mTestAnswers;
	}
	
	public int	getCorrectAnswerIndex()
	{
		return mTestCorrectAnswerIndex;
	}
	
	public int getTestDifficulty()
	{
		return mTestDifficulty;
	}
	
	private int			mTestId;
	private int			mTestType;
	private String		mTestBody;
	private String[]	mTestAnswers;
	private int			mTestCorrectAnswerIndex;
	private int			mTestDifficulty;
	
}
