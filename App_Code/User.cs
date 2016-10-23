public class User
{
    public User(string FileLine)
    {
        string[] user_info = FileLine.Split('|');
        m_Name = user_info[0];
        m_Email = user_info[1];
        m_Company = user_info[2];
        m_PhoneNumber = user_info[3];
        m_LocationCode = user_info[4];
        m_Referral = user_info[5];
        m_Score = 0;
        m_Rank = 0;
    }

    public User(string Name, string Email, string Company, string PhoneNumber, string LocationCode, string Referral)
    {
        m_Name = Name;
        m_Email = Email;
        m_Company = Company;
        m_PhoneNumber = PhoneNumber;
        m_LocationCode = LocationCode;
        m_Referral = Referral;
        m_Score = 0;
        m_Rank = 0;
    }

    public string getUserData()
    {
        return m_Name + "|" + m_Email + "|" + m_Company + "|" + m_PhoneNumber + "|" + m_LocationCode + "|" + m_Referral;
    }

    public string m_Name { get; private set; }
    public string m_Email { get; private set; }
    public string m_Company { get; private set; }
    public string m_PhoneNumber { get; private set; }
    public string m_LocationCode { get; private set; }
    public string m_Referral { get; private set; }
    public int m_Rank { get; set; }
    public int m_Score { get; set; }

}