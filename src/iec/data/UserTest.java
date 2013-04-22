package iec.data;

import java.util.Date;

public class UserTest {

	public UserTest(int id, int userId, int testId, int answer, Date start, Date end)
	{
		 mId = id;
		 mUserId = userId;
		 mTestId = testId;
		 mUserAnswer = answer;
		 mTestStartDate = start;
		 mTestEndDate = end;
	}
	
	public int getId()
	{
		return mId;
	}
	
	public int getTestId()
	{
		return mTestId;
	}
	
	public int getUserId()
	{
		return mUserId;
	}
	
	public int getUserAnswer()
	{
		return mUserAnswer;
	}
	
	public Date getTestStartDate()
	{
		return mTestStartDate;
	}
	
	public Date getTestEndDate()
	{
		return mTestEndDate;
	}
	
	private	int 			mId;
	private int 			mUserId;
	private int 			mTestId;
	private int				mUserAnswer;
	private Date			mTestStartDate;
	private Date			mTestEndDate;
}
