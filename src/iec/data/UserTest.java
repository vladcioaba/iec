package iec.data;

import java.util.Date;

import iec.data.Test;

public class UserTest {

	
	public Test getTestData()
	{
		return mTestData;
	}

	public String getTestId()
	{
		return mTestId;
	}
	
	public Date getTestStartDate()
	{
		return mTestStartDate;
	}
	
	public Date getTestEndDate()
	{
		return mTestEndDate;
	}

	private String 			mTestId;
	private Test 			mTestData;
	private String			mUserAnswer;
	private Date			mTestStartDate;
	private Date			mTestEndDate;
}
