package iec.data;

public class Test {

	public String getTestId()
	{
		return mTestId;
	}
	
	public String getTestType()
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
	
	private String		mTestId;
	private String		mTestType;
	private String		mTestBody;
	private String[]	mTestAnswers;
	private int			mTestCorrectAnswerIndex;
	private int			mTestDifficulty;
	
}
