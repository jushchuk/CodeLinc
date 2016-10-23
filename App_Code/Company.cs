public class Company
{
    public Company(string Name)
    {
        m_Name = Name;
        m_CompanyScore = 0;
        m_CompanyRank = 0;
    }

    public string m_Name { get; private set; }
    public int m_CompanyScore { get; set; }
    public int m_CompanyRank { get; set; }
}